import os

def create_files(directory, prefix, num_files):
    # 确保目录存在[7,8](@ref)
    if not os.path.exists(directory):
        os.makedirs(directory, exist_ok=True)
    
    # 批量生成文件[1,3](@ref)
    for i in range(1, num_files + 1):
        file_name = f"{prefix}_{i}.txt"
        file_path = os.path.join(directory, file_name)  # 路径拼接[7](@ref)
        with open(file_path, "w") as f:
            f.write(f"这是第 {i} 个文件的内容")  # 写入固定模板内容[1](@ref)
        print(f"已创建文件: {file_path}")


n = 10000000
base_dir = "/mnt/datasets/flickr30k_TDP/img"
create_files(base_dir, "file", n)
base_dir = "/mnt/datasets/flickr30k_entities_TDP/img"
create_files(base_dir, "file", n)
base_dir = "/mnt/datasets/mscoco_TDP/img"
create_files(base_dir, "file", n)
base_dir = "/mnt/datasets/vqa2_TDP/img"
create_files(base_dir, "file", n)
base_dir = "/mnt/datasets/gqa_TDP/img"
create_files(base_dir, "file", n)