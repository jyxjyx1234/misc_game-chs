from Lib import *


transdict = {}
try:
    notfound = open_json("notfound.json")
except:
    notfound = {}

# for file in os.listdir("trans_cache"):
#     data = open_json(os.path.join("trans_cache", file))
#     for item in data:
#         transdict[item["pre_jp"].replace("\r\n", "").replace("￥", "")] = item["post_zh_preview"].replace("\r\n", "").replace("￥", "")

oridata = open_json("all.orig.json")
transdata = open_json("all.trans.json")
for i, item in enumerate(oridata):
    jp = item["message"].replace("\u0000\u0011", "").replace("／", "")
    zh = transdata[i]["message"].replace("\u0000\u0011", "").replace("／", "")
    transdict[jp] = zh

transdict.update(notfound)

for file in os.listdir("gt_input"):
    if "TEST" in file:
        continue
    if file.startswith("TR"):
        continue
    data = open_json(os.path.join("gt_input", file))
    for i, text in enumerate(data):
        if text["message"] not in transdict:
            notfound[text["message"]] = text["message"]
        text["message"] = transdict.get(text["message"], text["message"])
    save_json(os.path.join("gt_output", file), data)
save_json("notfound.json", notfound)