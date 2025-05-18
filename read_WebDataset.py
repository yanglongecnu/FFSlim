import webdataset as wds
import time

time.sleep(10)
# 加载并显示第一个样本
dataset = wds.WebDataset("/home/llm/experiment/dataset_Analysis_Modeling/mscoco.webdataset.tar")
sample = next(iter(dataset))

# print(sample)
print("样本键值:", sample.keys())  # 应输出：['__key__', 'image.jpg', 'caption.txt']
print("key:",sample["__key__"])
print("图像大小:", len(sample[f"jpg"]))  # 检查字节长度
print("文本描述:", sample["txt"].decode("utf-8"))  # 解码为字符串
