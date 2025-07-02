import os

def delete_files(directory, prefix, num_files):
    # 批量生成文件[1,3](@ref)
    for i in range(1, num_files + 1):
        file_name = f"{prefix}_{i}.txt"
        file_path = os.path.join(directory, file_name)  # 路径拼接[7](@ref)
        if os.path.isfile(file_path):
            os.remove(file_path)  # 删除文件
            print(f"已删除文件: {file_path}")

n = 10000000
base_dir = "/mnt/datasets/flickr30k_TDP/img"
delete_files(base_dir, "file", n)
base_dir = "/mnt/datasets/flickr30k_entities_TDP/img"
delete_files(base_dir, "file", n)
base_dir = "/mnt/datasets/mscoco_TDP/img"
delete_files(base_dir, "file", n)
base_dir = "/mnt/datasets/vqa2_TDP/img"
delete_files(base_dir, "file", n)
base_dir = "/mnt/datasets/gqa_TDP/img"
delete_files(base_dir, "file", n)