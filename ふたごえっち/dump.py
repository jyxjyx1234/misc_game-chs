from CSBFile import *

oriPath = "Story/"
outPath = "oriTXT/"
jsonPath = "gt_input/"
os.makedirs(outPath, exist_ok=True)
os.makedirs(jsonPath, exist_ok=True)
fileNames = os.listdir(oriPath)

namedict = {}

for fileName in fileNames:
    oriFilePath = oriPath + fileName
    outFilePath = outPath + fileName
    jsonFilePath = jsonPath + fileName.replace(".csb", ".json")
    f = CSBFile()
    f.read(oriFilePath)
    f.dumpText(outFilePath)

    f = open(outFilePath, "r", encoding="utf8").readlines()

    out = OriJsonOutput()
    for l in f:
        if l[:5] == "name&":
            name = l[5:-1]
            if name != "":
                out.dic['name'] = replaceNameCode(name)

        if l[:5] == "msg&&":
            msg = l[5:-1]
            out.dic['message'] = replaceNameCode(msg)
            out.append_dict(quchong = True)
    out.save_json(jsonFilePath)
    namedict.update(out.get_names())

#save_json("namedict.json", namedict)
        