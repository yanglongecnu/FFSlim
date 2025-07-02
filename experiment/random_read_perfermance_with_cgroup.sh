# 设置文件系统参数
# sudo umount /mnt/datasets
# sudo tune2fs -l /dev/nvme0n1
# sudo tune2fs -O ^dir_index /dev/nvme0n1
# # sudo tune2fs -O dir_index /dev/nvme0n1
# sudo e2fsck -f -D /dev/nvme0n1
# sudo tune2fs -l /dev/nvme0n1
# sudo mount /dev/nvme0n1 /mnt/datasets

# 设置page cache预取大小
sudo blockdev --getra /dev/nvme0n1
sudo blockdev --setra 0 /dev/nvme0n1
sudo blockdev --getra /dev/nvme0n1

# Files
for num in 0 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py flickr30k $num lru
done

for num in 0 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py flickr30k_entities $num lru
done
 
 
for num in 0 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py mscoco $num lru
done

for num in 0 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py vqa2 $num lru
done

for num in 0 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py gqa $num lru
done

# FFRecord
for num in 0 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py flickr30k $num lru
done

for num in 0 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py flickr30k_entities $num lru
done
 
 
for num in 0 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py mscoco $num lru
done

for num in 0 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py vqa2 $num lru
done

for num in 0 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_ffrecord_loader.py gqa $num lru
done

# TDP
for num in 0 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num lru
done

for num in 0 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num lru
done
 
 
for num in 0 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num lru
done

for num in 0 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num lru
done

for num in 0 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num lru
done


# FFSlim
for num in 0 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num lru
done

for num in 0 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num lru
done
 
 
for num in 0 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num lru
done

for num in 0 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num lru
done

for num in 0 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
do
    echo "当前数值: $num"
    # 在此处添加处理逻辑
    echo "lru"
    sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num lru
done



# Cache
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
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k $num iacma
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
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py flickr30k_entities $num iacma
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
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py mscoco $num iacma
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
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py vqa2 $num iacma_with_memory
# done


# for num in 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "fgfglru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num fgfglru
#     # echo "fgfglfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num fgfglfu
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py gqa $num iacma_with_memory
# done

# for num in 25733 51466 21762 77198 102931 128664 154397 205862 231595 257328
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "fgfglru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num fgfglru
#     # echo "fgfglfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num fgfglfu
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_FFSlim_loader.py cc3m $num iacma_with_memory
# done

# # TDP
# for num in 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
# do
#     num=$((num-314))  # 减小缓存容量让给索引
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num iacma_with_heap    
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num iacma_with_memory
# done

# for num in 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
# do
#     num=$((num-400))  # 减小缓存容量让给索引
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num iacma_with_heap
#     # echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num iacma_with_memory
# done
 
 
# for num in 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
# do
#     num=$((num-548))  # 减小缓存容量让给索引
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num iacma_with_memory
# done


# for num in 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
# do
#     num=$((num-2680))  # 减小缓存容量让给索引
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num iacma_with_memory
# done


# for num in 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
# do
#     num=$((num-1093))  # 减小缓存容量让给索引
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     # echo "lru"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num lru
#     # echo "lfu"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num iacma_with_memory
# done

 
# for num in 25733 51466 21762 77198 102931 128664 154397 205862 231595 257328
# do
#     num=$((num-1093))  # 减小缓存容量让给索引
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py cc3m $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py cc3m $num lfu
#     # echo "iacma_with_heap"
#     # sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py cc3m $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py cc3m $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py cc3m $num iacma_with_memory
# done

# # 不让缓存
# # TDP
# for num in 3101 6203 9304 12406 15507 18608 21710 24811 27913 31014
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num lfu
#     echo "iacma_with_heap"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num iacma_with_heap    
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k $num iacma_with_memory
# done

# for num in 3178 6357 9535 12713 15892 19070 22248 25426 28605 31783
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num lfu
#     echo "iacma_with_heap"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py flickr30k_entities $num iacma_with_memory
# done
 
 
# for num in 11797 23594 35392 47189 58986 70783 82580 94378 106175 117972
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num lfu
#     echo "iacma_with_heap"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py mscoco $num iacma_with_memory
# done


# for num in 8218 16436 24653 32871 41089 49307 57525 65742 73960 82178
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num lfu
#     echo "iacma_with_heap"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py vqa2 $num iacma_with_memory
# done


# for num in 7254 14508 21762 29016 36270 43523 50777 58031 65285 72539
# do
#     echo "当前数值: $num"
#     # 在此处添加处理逻辑
#     echo "lru"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num lru
#     echo "lfu"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num lfu
#     echo "iacma_with_heap"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num iacma_with_heap
#     echo "iacma"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num iacma
#     echo "iacma_with_memory"
#     sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_TDP_loader.py gqa $num iacma_with_memory
# done