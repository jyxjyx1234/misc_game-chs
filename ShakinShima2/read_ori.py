import json
import re

filelist = [
    "output1.txt",
    "output2.txt",
    "output3.txt",
    "output4.txt",
]
quchong = []
out = []
dic = {}
n = 0
for file in filelist:
    f = open(file, "r", encoding="sjis").readlines()
    for l in f:
        if l in quchong:
            continue
        else:
            quchong.append(l)
            #l = re.sub(r"<.*?>", "", l)
            if "「" in l:
                i = l.index("「")
                dic["name"] = l[:i]
                dic["message"] = l[i:-1]
            else:
                dic["message"] = l[:-1]
            n += len(dic["message"])
            out.append(dic)
            dic = {}

f = open("output_append.txt", "r", encoding="sjis").readlines()
out_ = []
for l in f:
    if l in quchong:
        continue
    else:
        quchong.append(l)
        if "「" in l:
            i = l.index("「")
            dic["name"] = l[:i]
            dic["message"] = l[i:-1]
        else:
            dic["message"] = l[:-1]
        out_.append(dic)
        dic = {}
json.dump(out_, open("ori_append.json", "w", encoding="utf8"), indent=4, ensure_ascii=False)
#json.dump(out, open("ori_withtags.json", "w", encoding="utf8"), indent=4, ensure_ascii=False)
#print(quchong.__len__())
#print(n)
