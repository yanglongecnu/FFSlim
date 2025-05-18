import tensorflow as tf

def parse_example(serialized_example):
    feature_description = {
        "image_bytes": tf.io.FixedLenFeature([], tf.string),
        "image_caption": tf.io.FixedLenFeature([], tf.string)
    }
    return tf.io.parse_single_example(serialized_example, feature_description)

output_path = "/home/llm/experiment/dataset_Analysis_Modeling/mscoco_TFRecord_sample/mscoco_sample.tfrecord"
dataset = tf.data.TFRecordDataset(output_path)
parsed_dataset = dataset.map(parse_example)

for idx, record in enumerate(parsed_dataset):
    if idx < 2:
        print(f"Record {idx + 1}:")
        print(type(record))
        print(tf.io.decode_jpeg(record["image_bytes"].numpy()))
        print(record["image_caption"].numpy().decode("utf-8"))
