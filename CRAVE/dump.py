from Lib import *
from SCWFile import *

oriFiles = "SCW\\"
outFiles = "gt_input\\"
os.makedirs(outFiles, exist_ok=True)
files = listdir(oriFiles)


def processMsg(text: bytes) -> dict:
    dic = {}
    text = text.decode("932")
    text = text.replace("\n", "")
    text = (
        text.replace("#M", "純")
        .replace("#1", "")
        .replace("#F", "")
        .replace("#N", "レイ")
    )
    if "】" in text:
        name, text = text.split("】")
        name = name[1:]
        dic["name"] = name
    dic["message"] = text
    return dic


namedict = {}
allCount = 0
for file in files:
    if file in ["CONFIG_CHERRY"]:
        continue
    out = OriJsonOutput()
    outT = open("SCW_TXT\\" + file + ".TXT", "wb")
    data = open_file_b(oriFiles + file + ".scw")
    f = SCWFile(data)
    texts = f.dumpTexts()

    idx = 0
    for t in texts:
        outT.write(t)
        idx += 1
    for t in texts:
        t = t[:-1]
        if textFliter(t):
            out.dic = processMsg(t)
            out.append_dict()
    out.save_json(outFiles + file + ".json")
    namedict.update(out.get_names())
    allCount += out.textcount

# save_json("namedict.json", namedict)
print(allCount)
