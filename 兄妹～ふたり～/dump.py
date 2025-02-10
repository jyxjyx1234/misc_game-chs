from Lib import *

oriPath = "ASN"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

files = os.listdir(oriPath)

patten = re.compile(rb"(KDKF[\x30-\x39]{5})\\I7([\x01-\xff]*)")
namedict = {}
textcount = 0

for file in files:
    out = OriJsonOutput()
    data = open_file_b(os.path.join(oriPath, file))
    matches = patten.finditer(data)
    for match in matches:
        flag = match.group(1).decode("932")
        text = match.group(2).decode("932")
        if text.startswith("【"):
            name, text = text.split("】", 1)
            name = name[1:]
            out.add_name(name)
        out.add_text(text)
        out.dic["flag"] = flag
        out.append_dict()
    namedict.update(out.get_names())
    textcount += out.textcount
    out.save_json(os.path.join(outPath, file + ".json"))

save_json("namedict.json", namedict)
print("textcount:", textcount)