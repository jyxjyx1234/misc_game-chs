from Lib import *
from HanziReplacer import *
oriPath = "scn_dec"
transPath = "gt_output"
outPath = "release/trans"
os.makedirs(outPath, exist_ok=True)
namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_replace("release/trans/data2.bin")

for file in os.listdir(oriPath):
    filedata = open_file_b(oriPath + "/" + file).decode("932").strip("\x00")
    filedata = json.loads(filedata)
    try:
        transdata = open_json(transPath + "/" + file + ".json")
    except FileNotFoundError:
        transdata = []
    for i in transdata:
        text = i["message"]
        text = h.hanzitihuan(text)
        if "name" in i:
            name = i["name"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            text = name + text
        text = replace_halfwidth_with_fullwidth(text)
        if type(i["idx"]) == str:
            idx, selidx = i["idx"].split("_")
            filedata[int(idx)][int(selidx)] = text
        else:
            filedata[i["idx"]] = text
    filedata = json.dumps(filedata, ensure_ascii=False, indent=0)
    filedata = filedata.encode("932")
    if len(filedata) % 8:
        filedata += b"\x00" * (8 - len(filedata) % 8)
    save_file_b(outPath + "/" + file, b"DONOTDEC" + filedata)