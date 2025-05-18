import os
from PIL import Image
import random

def process_samples(sample_ids, base_dir="data"):
    """
    根据样本ID数组处理对应的图像和文本文件
    返回结构：{id: (图像对象, 文本内容), ...}
    
    参数：
        sample_ids: 需要处理的样本编号列表（int列表）
        base_dir: 文件存储根目录（默认data）
    """
    
    for sid in sample_ids:
        # 生成6位补零文件名
        file_prefix = f"{sid:06d}"
        img_path = os.path.join(base_dir, f"{file_prefix}.jpg")
        txt_path = os.path.join(base_dir, f"{file_prefix}.txt")

        # 处理图像文件
        if os.path.exists(img_path):
            try:
                with open(img_path,"rb") as f:
                    img_data = f.read()
            except Exception as e:
                print(f"图像文件 {file_prefix}.jpg 损坏: {str(e)}")
        else:
            print(f"图像文件 {file_prefix}.jpg 不存在")

        # 处理文本文件
        if os.path.exists(txt_path):
            try:
                with open(txt_path, 'r', encoding='utf-8') as f:
                    txt_data = f.read()
            except Exception as e:
                print(f"文本文件 {file_prefix}.txt 读取失败: {str(e)}")
        else:
            print(f"文本文件 {file_prefix}.txt 不存在")


# 使用示例
if __name__ == "__main__":
    import argparse
    # 创建解析器
    parser = argparse.ArgumentParser()
    # 添加参数
    parser.add_argument('dataset', type=str, help='输入数据集名称')
    # 解析参数
    args = parser.parse_args()
    print(f"dataset:{args.dataset}")

    # flickr30k
    if args.dataset == "flickr30k":
        filename = "/mnt/datasets/flickr30k_Files/000000"
    # flickr30k_entities
    if args.dataset == "flickr30k_entities":
        filename = "/mnt/datasets/flickr30k_entities_Files/000000"
    # mscoco
    if args.dataset == "mscoco":
        filename = "/mnt/datasets/mscoco_Files/000000"
    # vqa2
    if args.dataset == "vqa2":
        filename = "/mnt/datasets/vqa2_Files/000000"
    # gqa
    if args.dataset == "gqa":
        filename = "/mnt/datasets/gqa_Files/000000"

    samples = {"flickr30k":155070,"flickr30k_entities":158915,"mscoco":589860,"vqa2":443757,"gqa":943000}
    # 调用处理函数
    sample_list = [i for i in range(samples[args.dataset])]  # 1-3号文件不存在用于演示错误处理

    print(f"size={len(filename)}")
    import time
    start = time.time()
    process_samples(sample_list, filename)
    print(f"Files seq read耗时:{time.time() - start:.4f}秒") 
    
