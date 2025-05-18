import pandas as pd
import tensorflow as tf
import os 

def load_image_bytes(image_path):
    img_raw = tf.io.read_file(image_path)
    # print(f"{type(img_raw)}")
    return img_raw.numpy()  # 转换为字节数据

def create_example(image_bytes, caption):
    feature = {
        "image_bytes": tf.train.Feature(bytes_list=tf.train.BytesList(value=[image_bytes])),
        "image_caption": tf.train.Feature(bytes_list=tf.train.BytesList(value=[caption.encode("utf-8")]))
    }
    return tf.train.Example(features=tf.train.Features(feature=feature))

df = pd.read_csv("/home/llm/experiment/dataset_Analysis_Modeling/mscoco_sort_sample_1000.csv")
image_src_dir = "/home/llm/experiment/dataset_Analysis_Modeling/dataset/train2017"
output_path = "/home/llm/experiment/dataset_Analysis_Modeling/mscoco_TFRecord_sample/mscoco_sample.tfrecord"
image_paths = df["image_path"].tolist()
captions = df["image_caption"].astype(str).tolist()

with tf.io.TFRecordWriter(output_path) as writer:
    i = 0
    for img_path, caption in zip(image_paths, captions):
        img_bytes = load_image_bytes(os.path.join(image_src_dir,img_path))
        example = create_example(img_bytes, caption)
        if i == 0:
            i += 1
            print(example.SerializeToString())
        writer.write(example.SerializeToString())

