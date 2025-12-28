from LIB.Lib import *
from io import BytesIO

oridata = open_file_b("sokubaku_kaisou.dbs.out")
oridata_io = BytesIO(oridata)


transdatas = open_json("gt_output\\sokubaku_kaisou.dbs.out.json")

for d in transdatas:
    ori = d["ori"]
    trans = d["message"]
    if "_" in ori:
        continue
    if ori == trans:
        continue
    trans = trans.replace("♪", "")
    idx = oridata.find(ori.encode("utf-16-le"))
    if idx == -1:
        print(f"未找到原文：{ori}")
        continue
    oridata_io.seek(idx)
    if len(trans) > len(ori):
        print(f"翻译文本过长，跳过：{ori} -> {trans}")
        continue
    oridata_io.write(trans.encode("utf-16-le"))
    oridata_io.write(b"\x00\x00")

save_file_b("sokubaku_kaisou.dbs.trans", oridata_io.getvalue())