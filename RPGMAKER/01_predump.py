from MAP_FILE import *

def pre_process(res):
    # 用于对文本进行前处理，去除可能的特殊符号，以及判断人名等
    return res

def dump_text(oripath, outpath):
    os.makedirs(outpath, exist_ok=True)
    for file in os.listdir(oripath):
        res = []
        if not file.endswith(".json"):
            continue
        if file.startswith("Map"):
            f = MAP_FILE(os.path.join(oripath, file))
        elif file.startswith("CommonEvents"):
            f = COMMONEVENTS_FILE(os.path.join(oripath, file))
        elif file.startswith("System"):
            f = SYSTEM_FILE(os.path.join(oripath, file))
        else:
            f = DATABASE_FILE(os.path.join(oripath, file))
        for content in f.contents:
            res += content.process_parameters()
        res = pre_process(res)
        save_json(os.path.join(outpath, file), res)

dump_text("data", "dump")