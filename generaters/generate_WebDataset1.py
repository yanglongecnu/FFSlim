import webdataset as wds
import pandas as pd
import os

# 读取 CSV 文件
csv_path = "/home/llm/experiment/dataset_Analysis_Modeling/mscoco_sort_sample_1000.csv"
df = pd.read_csv(csv_path)
image_dir = "/home/llm/experiment/dataset_Analysis_Modeling/dataset/train2017"

# 创建 TarWriter 写入器（分片可选）
with wds.TarWriter("mscoco.webdataset.tar") as sink:
    for idx, row in df.iterrows():
        try:
            image_path = row["image_path"]
            caption = row["image_caption"]
            image_full_path = os.path.join(image_dir,image_path)

            # 读取图像字节（保持原始格式）
            with open(image_full_path, "rb") as f:
                image_bytes = f.read()

            # 构建样本字典（键名规则参考网页2[2](@ref)）
            sample = {
                "__key__": f"{idx:06d}",
                f"jpg": image_bytes,
                "txt": caption
            }
            if idx == 0:
                print(sample)
            sink.write(sample)
            
        except Exception as e:
            print(f"Error processing sample {idx}: {str(e)}")
            continue

print("WebDataset 文件生成完成：mscoco.webdataset.tar")