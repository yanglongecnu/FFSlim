#!/bin/bash


# 正式开始
echo ===============Execution Phase===================
# 清除系统缓存并创建cgroup
sync; echo 3 > /proc/sys/vm/drop_caches
echo "rm_cache done"
sudo cgdelete -g memory:file_reader
sudo cgcreate -g memory:file_reader

# 动态获取最佳memory限制
memory=$(($4 + 10*1024*1024))
cat /sys/fs/cgroup/file_reader/memory.max
echo $memory > /sys/fs/cgroup/file_reader/memory.max
cat /sys/fs/cgroup/file_reader/memory.max

# 运行脚本
command="$1 $2 $3"
echo $command
cgexec -g memory:file_reader $1 $2 $3 &

# 查看运行进程
ps -ef | grep "python3 /home/llm/experiment"

# 监控缓存命中率
PID=$(cat /sys/fs/cgroup/file_reader/cgroup.procs)
echo "监控进程 PID: $PID"
sudo perf stat -p $PID -e cache-misses,cache-references
