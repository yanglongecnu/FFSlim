import os
from PIL import Image
import random
import pandas as pd



def process_samples(sample_ids, base_dir="data"):
    csv_path = os.path.join(base_dir,base_dir.split("/")[-1]+".csv")
    df = pd.read_csv(csv_path)

    images = df["image_path"]
    captions = df["image_caption"]

    nums = []
    for index in range(len(images)):
        nums.append(len(images[index])+len(captions[index]))
    print(f"size={sum(nums)}")

    for sid in sample_ids:
        img_path = os.path.join(base_dir,"img/"+images[sid])
        # 处理图像文件
        if os.path.exists(img_path):
            try:
                with open(img_path,"rb") as f:
                    img_data = f.read()
            except Exception as e:
                print(f"图像文件 {images[sid]} 损坏: {str(e)}")
        else:
            print(f"图像文件 {images[sid]} 不存在")

        txt_data = captions[sid]

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
        filename = "/mnt/datasets/flickr30k_TDP"
    # flickr30k_entities
    if args.dataset == "flickr30k_entities":
        filename = "/mnt/datasets/flickr30k_entities_TDP"
    # mscoco
    if args.dataset == "mscoco":
        filename = "/mnt/datasets/mscoco_TDP"
    # vqa2
    if args.dataset == "vqa2":
        filename = "/mnt/datasets/vqa2_TDP"
    # gqa
    if args.dataset == "gqa":
        filename = "/mnt/datasets/gqa_TDP"

    samples = {"flickr30k":155070,"flickr30k_entities":158915,"mscoco":589860,"vqa2":443757,"gqa":943000}

    # 调用处理函数
    sample_list = [i for i in range(samples[args.dataset])]  # 1-3号文件不存在用于演示错误处理
    random.seed(123)
    random.shuffle(sample_list)

    import time
    start = time.time()
    processed = process_samples(sample_list, filename)
    print(f"TDP random read耗时:{time.time() - start:.4f}秒") 
    
