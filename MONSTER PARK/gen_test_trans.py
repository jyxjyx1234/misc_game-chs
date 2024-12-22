from Lib import *

ori = open_json("MOPN.json")
trans = []
idx = 0
for i in ori:
    d = {}
    d["pre_jp"] = i['message']
    d["pre_zh"] = f"中文测试{idx}"
    idx += 1
    trans.append(d)

save_json("test_trans.json", trans)