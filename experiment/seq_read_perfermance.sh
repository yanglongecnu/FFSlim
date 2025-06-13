# # flickr30k
# dataset=flickr30k
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py $dataset

# # flickr30k_entities
# dataset=flickr30k_entities
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py $dataset

# # mscoco
# dataset=mscoco
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py $dataset

# # vqa2
# dataset=vqa2
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py $dataset

# # gqa
# dataset=gqa
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py $dataset
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py $dataset


# # Files
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py flickr30k
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py flickr30k_entities
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py mscoco
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py vqa2
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py gqa


# # TDP
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py flickr30k
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py flickr30k_entities
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py mscoco
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py vqa2
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py gqa

# # FFRecord
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py flickr30k
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py flickr30k_entities
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py mscoco
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py vqa2
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py gqa

# # FFSlim
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py flickr30k
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py flickr30k_entities
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py mscoco
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py vqa2
# sudo ./rm_cache.sh
# python /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py gqa


# Files
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py flickr30k
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py flickr30k_entities
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py mscoco
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py vqa2
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_files_loader.py gqa

# TDP
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py flickr30k
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py flickr30k_entities
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py mscoco
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py vqa2
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_TDP_loader.py gqa

# FFRecord
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py flickr30k
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py flickr30k_entities
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py mscoco
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py vqa2
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_ffrecord_loader.py gqa

# FFSlim
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py flickr30k
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py flickr30k_entities
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py mscoco
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py vqa2
sudo ./run_with_cgroup.sh python3 /home/llm/experiment/dataset_Analysis_Modeling/loaders/seq_FFSlim_loader.py gqa