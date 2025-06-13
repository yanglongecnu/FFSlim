from collections import defaultdict, OrderedDict


class HAPIACMANode:
    def __init__(self, key=0, value={"image":0,"captions":[]}):
        self.key = key
        self.value = value
        self.score = len(value["captions"])

class HAPIACMACache:
    def __init__(self, capacity: int):
        self.capacity = capacity
        self.min_score = 10000
        self.index = {}  # 哈希表细粒度索引 key:int,value:(img,caption,obj_index)
        self.node_map = {}  # 哈希表粗粒度存储 key:int,value:{image:bytes,captions:[]}
        self.score_map = defaultdict(OrderedDict)  # {freq: OrderedDict{key: node}}

    def _update_freq(self, node):
        # 移除旧频率层中的节点
        score = node.score
        del self.score_map[score][node.key]
        if not self.score_map[score]:
            del self.score_map[score]
        
        # 更新频率并加入新层
        node.score -= 1
        if node.score == 0:
            # 主动剔除缓存
            # 删除细粒度索引
            for i in range(len(node.value["captions"])):
                del self.index[node.key + i]
        else:
            new_score = node.score
            self.score_map[new_score][node.key] = node
            if self.min_score > new_score:
                self.min_score = new_score

    def get(self, key: int) -> tuple:
        # 细粒度缓存索引
        if key not in self.index:
            return -1
        result = self.index[key]
        # 粗粒度缓存管理
        obj_index = result[2]
        node = self.node_map[obj_index]
        self._update_freq(node)
        return result[:-1]
    
    def put(self, key: int, value: dict) -> None:
        # 缓存空间不足
        if len(self.node_map) >= self.capacity:
            # 删除粗粒度缓存
            while len(self.score_map[self.min_score]) == 0:
                self.min_score += 1
            oldest_key,iacma_node = self.score_map[self.min_score].popitem(last=False)
            del self.node_map[oldest_key]
            # 删除细粒度索引
            for i in range(len(iacma_node.value["captions"])):
                del self.index[iacma_node.key + i]
        # 缓存粗粒度存储
        new_node = HAPIACMANode(key, value)
        self.node_map[key] = new_node
        self.score_map[new_node.score][key] = new_node
        if self.min_score > new_node.score:
            self.min_score = new_node.score
        # 缓存细粒度索引
        for index,c in enumerate(value["captions"]):
            self.index[key+index] = (value["image"],c,key)