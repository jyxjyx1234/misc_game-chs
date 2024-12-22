from Lib import *
from SCWFile import *

oriFiles = "SCW\\"
outFiles = "gt_input\\"
os.makedirs(outFiles, exist_ok=True)
files = os.listdir(oriFiles)


def processMsg(text: bytes) -> dict:
    dic = {}
    text = text.decode("932")
    text = text.replace("\n", "")
    text = (
        text.replace("#W", "")#强制换行
        .replace("#M", "純")
        .replace("#N", "大久保")#存疑
    )
    if "#F" in text:
        _, name, text = text.split("#F")
        name = name[1:-1]
        dic["name"] = name
    dic["message"] = text
    return dic


namedict = {}
allCount = 0
for file in files:
    print(file)
    if file in []:
        continue
    out = OriJsonOutput()
    data = open_file_b(oriFiles + file)
    f = SCWFile(data)
    texts = f.dumpTexts()

    idx = 0
    for t in texts:
        out.dic = processMsg(t)
        out.append_dict()
    out.save_json(outFiles + file + ".json")
    namedict.update(out.get_names())
    allCount += out.textcount

#save_json("namedict.json", namedict)
print(allCount)
