import pandas as pd
# 31014  155070  5      5        139054(136KB) 63B   2207:1
# file_path = "/home/llm/experiment/dataset_Analysis_Modeling/processed_datasets/flickr30k_sort.csv"
# 31783  158915  5      5        138954(136KB) 330B  421:1
# file_path = "/home/llm/experiment/dataset_Analysis_Modeling/processed_datasets/flickr30k_entities_sort.csv"
# 117972 589860  5     5         163277(159KB) 52B   3140:1
# file_path = "/home/llm/experiment/dataset_Analysis_Modeling/processed_datasets/mscoco_sort.csv"
# 82783  443757  3-275 5.360485  156900(153KB) 826B  190:1
# file_path = "/home/llm/experiment/dataset_Analysis_Modeling/processed_datasets/vqa2_sort.csv"
# 69142  943000  2-112  13.595239 141658(138KB) 125B  1133:1
# file_path = "/home/llm/experiment/dataset_Analysis_Modeling/processed_datasets/gqa_sort.csv"
# 257328 257328  1  1 90131(88KB) 55B  2576:1
file_path = "/home/llm/experiment/dataset_Analysis_Modeling/processed_datasets/cc3m_sort.csv"


df = pd.read_csv(file_path)
print(df.head())
print(df.tail())
print(df.describe())

counts = df['image_path'].value_counts().reset_index()
counts.columns = ['值', '出现次数']

# 筛选重复值（出现次数>1）
duplicates = counts[counts['出现次数'] > 1]
print(duplicates)
print(duplicates.describe())

