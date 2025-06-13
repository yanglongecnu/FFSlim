#!/bin/bash

# 设置page cache预取大小
# sudo blockdev --getra /dev/nvme0n1
# sudo blockdev --setra 0 /dev/nvme0n1
# sudo blockdev --getra /dev/nvme0n1

# 预备阶段
# echo ===============Planning Stage===================
# # 清除系统缓存并创建cgroup
# sync; echo 3 > /proc/sys/vm/drop_caches
# echo "rm_cache done"
# sudo cgdelete -g memory:file_reader
# sudo cgcreate -g memory:file_reader

# # 限制内存
# echo "+memory" > /sys/fs/cgroup/cgroup.subtree_control
# echo max > /sys/fs/cgroup/file_reader/memory.max

# # 运行脚本
# # python /home/llm/experiment/dataset_Analysis_Modeling/loaders/random_files_loader.py flickr30k
# command="$1 $2 $3 $4"
# echo $command
# cgexec -g memory:file_reader $1 $2 $3 $4 &

# # 等待预热
# sleep 60

# if [[ $4 == 20000 ]]; then
#     sleep 60
# elif [[ $4 == 40000 ]]; then
#     sleep 120
# elif [[ $4 == 80000 ]]; then
#     sleep 180
# elif [[ $4 == 160000 ]]; then
#     sleep 240
# elif [[ $4 == 320000 ]]; then
#     sleep 300
# elif [[ $4 == 640000 ]]; then
#     sleep 360
# fi  # 只需一个闭合标记

# # 动态获取所需最低内存
# temp=$(awk '$1 == "anon" || $1 == "kernel" || $1 == "slab" || $1 == "pagetables" {sum += $2} END {print sum}' /sys/fs/cgroup/file_reader/memory.stat)
# echo need_memory=$temp

# # 杀死测试进程
# sudo kill $(cat /sys/fs/cgroup/file_reader/cgroup.procs)

# 正式开始
echo ===============Execution Phase ===================
# 清除系统缓存并创建cgroup
sync; echo 3 > /proc/sys/vm/drop_caches
echo "rm_cache done"
sudo cgdelete -g memory:file_reader
sudo cgcreate -g memory:file_reader

# 限制内存
# echo "+memory" > /sys/fs/cgroup/cgroup.subtree_control
# echo max > /sys/fs/cgroup/file_reader/memory.max

# 动态获取最佳memory限制
if [[ $3 == "flickr30k" ]]; then
    echo flickr30k
    memory=$(($4*136*1024 + 54272656))
elif [[ $3 == "flickr30k_entities" ]]; then
    echo flickr30k_entities
    memory=$(($4*136*1024 + 54272656))
elif [[ $3 == "mscoco" ]]; then
    echo mscoco
    memory=$(($4*159*1024 + 54272656))
elif [[ $3 == "vqa2" ]]; then
    echo vqa2
    memory=$(($4*153*1024 + 54272656))
elif [[ $3 == "gqa" ]]; then
    echo gqa
    memory=$(($4*138*1024 + 54272656))
fi  # 只需一个闭合标记

cat /sys/fs/cgroup/file_reader/memory.max
echo $memory > /sys/fs/cgroup/file_reader/memory.max
cat /sys/fs/cgroup/file_reader/memory.max

# 运行脚本
command="$1 $2 $3 $4"
echo $command
cgexec -g memory:file_reader $1 $2 $3 $4 $5 $memory &

# 查看运行进程
ps -ef | grep "python3 /home/llm/experiment"

# 监控缓存命中率
PID=$(cat /sys/fs/cgroup/file_reader/cgroup.procs)
echo "监控进程 PID: $PID"
sudo perf stat -p $PID -e cache-misses,cache-references

# 批量删除进程
# sudo kill $(ps -ef | grep "python3 /home/llm/experiment" | grep -v grep | awk '{print $2}')