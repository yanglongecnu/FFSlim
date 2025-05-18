import pandas as pd
import os
import shutil
import tarfile
from tqdm import tqdm

def split_coco_dataset(csv_path, image_src_dir, output_root, N=1000):
    """
    改进版:拆分COCO数据集并自动生成目录tar包
    
    参数：
    csv_path : str       - 输入的CSV文件路径
    image_src_dir : str  - 原始图片所在目录
    output_root : str    - 输出根目录
    N : int              - 每个子目录最大文件数
    """
    # 读取CSV文件
    df = pd.read_csv(csv_path)
    
    # 创建进度条
    pbar = tqdm(total=len(df), desc="Processing files")
    
    current_dir_num = -1
    current_dir_path = None

    for idx, row in df.iterrows():
        dir_num = idx // N
        file_num = idx % N

        # 检测是否需要切换目录（网页7目录分组逻辑）
        if dir_num != current_dir_num:
            # 打包上一个目录（非首次运行时）
            if current_dir_num != -1:
                pack_directory(current_dir_path, output_root)
            
            # 初始化新目录
            current_dir_num = dir_num
            current_dir_path = os.path.join(output_root, f"{current_dir_num:06d}")
            os.makedirs(current_dir_path, exist_ok=True)

        # 处理文件（网页6文件操作规范）
        process_file(row, current_dir_path, file_num, image_src_dir)
        pbar.update(1)

    # 打包最后一个目录
    if current_dir_num != -1:
        pack_directory(current_dir_path, output_root)
    
    pbar.close()
    print(f"数据集拆分完成，共生成 {current_dir_num+1} 个tar包")

def process_file(row, dir_path, file_num, image_src_dir):
    """文件处理核心逻辑"""
    base_name = f"{file_num:06d}"
    
    # 复制图片（网页4推荐方法）
    src_image = os.path.join(image_src_dir, row['image_path'])
    dest_image = os.path.join(dir_path, f"{base_name}.jpg")
    shutil.copy2(src_image, dest_image)
    
    # 生成文本文件
    dest_text = os.path.join(dir_path, f"{base_name}.txt")
    with open(dest_text, 'w', encoding='utf-8') as f:
        f.write(row['image_caption'])

def pack_directory(dir_path, output_root):
    """目录打包逻辑（网页7 tarfile使用规范）"""
    tar_name = os.path.basename(dir_path) + ".tar"
    tar_path = os.path.join(output_root, tar_name)
    
    with tarfile.open(tar_path, "w") as tar:
        tar.add(dir_path, arcname=os.path.basename(dir_path))
    
    # 删除原始目录（网页3清理建议）
    shutil.rmtree(dir_path)

# 使用示例
if __name__ == "__main__":
    config = {
        "csv_path": "/home/llm/experiment/dataset_Analysis_Modeling/mscoco_sort_sample_1000.csv",
        "image_src_dir": "/home/llm/experiment/dataset_Analysis_Modeling/dataset/train2017",
        "output_root": "/home/llm/experiment/dataset_Analysis_Modeling/mscoco_webdataset_sample",
        "N": 100
    }
    split_coco_dataset(**config)