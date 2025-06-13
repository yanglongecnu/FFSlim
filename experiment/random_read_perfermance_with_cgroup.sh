# # Files
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py flickr30k
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py flickr30k_entities
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py mscoco
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py vqa2
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py gqa


# # TDP
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa

# # FFRecord
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py flickr30k
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py flickr30k_entities
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py mscoco
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py vqa2
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py gqa

# 设置page cache预取大小
sudo blockdev --getra /dev/nvme0n1
sudo blockdev --setra 0 /dev/nvme0n1
sudo blockdev --getra /dev/nvme0n1


# # FFSlim
# for num in 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "fgfglru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num fgfglru
#     # echo "fgfglfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num fgfglfu
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num lfu
#     # echo "iacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num iacma
#     # echo "hapiacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num hapiacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num iacma_with_memory
# done

# for num in 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "fgfglru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num fgfglru
#     # echo "fgfglfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num fgfglfu
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num lfu
#     # echo "iacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num iacma
#     # echo "hapiacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num hapiacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num iacma_with_memory
# done
 
 
# for num in 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "fgfglru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num fgfglru
#     # echo "fgfglfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num fgfglfu
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num lfu
#     # echo "iacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num iacma
#     # echo "hapiacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num hapiacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num iacma_with_memory
# done

 
# for num in 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "fgfglru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num fgfglru
#     # echo "fgfglfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num fgfglfu
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num lfu
#     # echo "iacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num iacma
#     # echo "hapiacma"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num hapiacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num iacma_with_memory
# done


for num in 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    # echo "fgfglru"
    # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num fgfglru
    # echo "fgfglfu"
    # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num fgfglfu
    # echo "lru"
    # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num lru
    # echo "lfu"
    # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num lfu
    # echo "iacma"
    # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num iacma
    # echo "hapiacma"
    # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num hapiacma
    echo "iacma_with_memory"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num iacma_with_memory
done

# flickr30k
# num=10000
# sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num