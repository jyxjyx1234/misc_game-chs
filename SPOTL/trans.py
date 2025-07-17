from Lib import *

oripath = "scene00.bdt"
transpath = "gt_output"
outpath = "release"

os.makedirs(outpath, exist_ok=True)

orifile = open(oripath, "r", encoding="932").readlines()
namedict = open_json("namedict.json")

def preprocess(text):
    text = replace_halfwidth_with_fullwidth(text)
    text = text.replace("\u30fb", "·")
    text = text.replace("......", "……").replace(".....", "……").replace("....", "……").replace("...", "…").replace("..", "…").replace(".", "。")
    text = processQuote(text)
    if len(text) * 2 > len(text.encode("gbk")):
        raise RuntimeError(f"Warning: {text} has halfwidth")
    return text

for file in os.listdir(transpath):
    transdatas = open_json(f"{transpath}/{file}")
    for data in transdatas:
        idx = data["idx"]
        if type(idx) is not int:
            idx0 = int(idx.split("_")[0])
            idx1 = int(idx.split("_")[1])
            ori = orifile[idx0].strip("\n")
            ori = ori[2:].split(",")
            ori[idx1] = preprocess(data["message"])
            ori = orifile[idx0].strip("\n")[:2] + ",".join(ori) + "\n"
            orifile[idx0] = ori
            continue
        message = data["message"]
        message = preprocess(message)
        name = data.get("name", "")
        if name:
            name = namedict[name]
        if orifile[idx].startswith("LX"):
            orifile[idx] = f"LX{message}\n"
            continue
        orifile[idx] = re.sub(r'(?P<name>[^!]*?)"(?P<text>.*)', f'{name}"{message}', orifile[idx])
orifile = "".join(orifile)
orifile = orifile.replace("\n", "\r\n").replace("\r\r\n", "\r\n")
orifile = orifile.encode("936")
save_file_b(f"{outpath}/scene00.chs", orifile, enc=b"\xff")
save_file_b(f"{outpath}/scene00.chs_", orifile)
d = open_file_b("SPOTL.bdt")
save_file_b(f"{outpath}/SPOTL.chs", d, enc=b"\xff")

idxdata = open_file_b("indexwww.dat")
idxdata = BytesReader(idxdata)
offset = 0
while True:
    ptrname = idxdata.read(8).decode("932").strip("\x00")
    lastoffset = offset
    if ptrname != "":
        offset = orifile.find(f"${ptrname}".encode("936"), offset)
    else:
        offset = len(orifile)
    if lastoffset:
        lastlen = offset - lastoffset
        idxdata.seek(-0x0c, 1)
        idxdata.write(lastlen.to_bytes(4, "little"))
        idxdata.read(8)
    idxdata.write(offset.to_bytes(4, "little"))
    idxdata.read(4)
    if ptrname == "":
        break
save_file_b(f"{outpath}/indexwww.chs", idxdata.getvalue())