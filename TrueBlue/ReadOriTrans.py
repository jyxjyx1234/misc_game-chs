from Lib import *


ori_file = "yuanwen.txt"
ori_file_append = "yuanwen2.txt"
out_file = "yuanwen.json"
out_file_append = "yuanwen2.json"
name_file = "names.json"
ori_file = open(ori_file, "r", encoding="sjis").readlines()
ori_file_append = open(ori_file_append, "r", encoding="sjis",errors="ignore").readlines()

out = []
out_append = []
oris = []
oris_append = []

names = {}
messageset = set()
length = 0
for i in ori_file:
    if i in messageset:
        continue
    if i == "\n":
        continue
    oris.append(i.replace("\n",""))
    dic = {}
    if i[0] == "　" or "「" not in i:
        dic["message"] = i[:-1]
    else:
        _ = i.find("「")
        dic["name"] = i[:_]
        names[dic["name"]] = dic["name"]
        dic["message"] = i[_:-1]
    out.append(dic)

    messageset.add(i)
    length += len(i)

for i in ori_file_append:
    if i in messageset:
        continue
    if i == "\n":
        continue
    oris_append.append(i.replace("\n",""))
    dic = {}
    if i[0] == "　" or "「" not in i:
        dic["message"] = i[:-1]
    else:
        _ = i.find("「")
        dic["name"] = i[:_]
        names[dic["name"]] = dic["name"]
        dic["message"] = i[_:-1]
    out_append.append(dic)

    messageset.add(i)
    length += len(i)

print(f"文本量：{length}")

save_json(out_file, out)
#save_json("oris.json",oris)
save_json(out_file_append, out_append)
save_json("oris_append.json",oris_append)