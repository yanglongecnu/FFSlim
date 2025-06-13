from ffrecord import FileReader
from ffrecord import FileWriter
import pickle


# file_path = "/mnt/datasets/flickr30k_FFSlim/mscoco_caption.ffr"
# output_file = "/mnt/datasets/flickr30k_FFSlim/flickr30k_caption.ffr"
# file_path = "/mnt/datasets/flickr30k_entities_FFSlim/mscoco_caption.ffr"
# output_file = "/mnt/datasets/flickr30k_entities_FFSlim/flickr30k_entities_caption.ffr"
file_path = "/mnt/datasets/mscoco_FFSlim/mscoco_caption.ffr"
output_file = "/mnt/datasets/mscoco_FFSlim/mscoco_caption1.ffr"

reader = FileReader(file_path)
writer = FileWriter(output_file, reader.n)
print(f"reader.n={reader.n}")

for i in range(reader.n):
    datasets = reader.read([i])
    for sample in datasets:
        samples1 = pickle.loads(sample)
        if len(samples1["captions"]) != 5:
            data = {"image":samples1["image"],"captions":samples1["captions"][:5]}
            print(f"i={i},size={len(samples1["captions"])}")
            serialized = pickle.dumps(data, protocol=5)
            writer.write_one(serialized)
        else:
            serialized = pickle.dumps(samples1, protocol=5)
            writer.write_one(serialized)
