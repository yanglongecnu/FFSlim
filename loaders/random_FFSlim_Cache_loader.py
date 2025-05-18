# 写入阶段
from ffrecord import FileReader
import pickle
import random

def process_samples(samples,file_path):
    if args.dataset in ["flickr30k","flickr30k_entities","mscoco"]:
        # 哈希映射
        X = 5
        reader = FileReader(file_path)
        first_index = [i//X for i in samples]
        second_index = [i%X for i in samples]
        datasets = reader.read(first_index)
        print(f"map and read耗时:{time.time() - start:.4f}秒") 

        for i,sample in enumerate(datasets):
            samples1 = pickle.loads(sample)
            result = [samples1["image"],samples1["captions"][second_index[i]]]
    else:
        # 完全平衡二叉搜索树
        start = time.time()
        reader = FileReader(file_path)
        first_index = []
        second_index = []
        datasets = reader.read(first_index)
        print(f"map and read耗时:{time.time() - start:.4f}秒") 

        for i,sample in enumerate(datasets):
            samples1 = pickle.loads(sample)
            result = [samples1["image"],samples1["captions"][second_index[i]]]
                
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
    filename = "/mnt/datasets/flickr30k_FFSlim/mscoco_caption.ffr"
# flickr30k_entities
if args.dataset == "flickr30k_entities":
    filename = "/mnt/datasets/flickr30k_entities_FFSlim/mscoco_caption.ffr"
# mscoco
if args.dataset == "mscoco":
    filename = "/mnt/datasets/mscoco_FFSlim/mscoco_caption.ffr"
# vqa2
if args.dataset == "vqa2":
    filename = "/mnt/datasets/vqa2_FFSlim/mscoco_caption.ffr"
# gqa
if args.dataset == "gqa":
    filename = "/mnt/datasets/gqa_FFSlim/mscoco_caption.ffr"

samples = {"flickr30k":155070,"flickr30k_entities":158915,"mscoco":589860,"vqa2":443757,"gqa":943000}
# 调用处理函数
sample_list = [i for i in range(samples[args.dataset])]  # 1-3号文件不存在用于演示错误处理

random.seed(123)
random.shuffle(samples)

import time
start = time.time()
process_samples(samples,filename)
print(f"Slim_FFRecord random read耗时:{time.time() - start:.4f}秒") 
