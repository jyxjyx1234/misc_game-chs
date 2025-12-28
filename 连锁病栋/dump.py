from Lib import *

oriPath = "scn_dec"
outPath = "gt_input"
info = StatusInfo()
os.makedirs(outPath, exist_ok=True)

force_name = True
if force_name:
    namedict = open_json("namedict.json")
else:
    namedict = {}

for file in os.listdir(oriPath):
    out = OriJsonOutput()
    filedata = open_file_b(oriPath + "/" + file).decode("932").strip("\x00")
    filedata = json.loads(filedata)
    selectionflag = False
    seflag = False
    for i, data in enumerate(filedata):
        if selectionflag:
            selectionflag = False
            for _, sel in enumerate(data):
                out.add_text(sel)
                out.dic["idx"] = f"{i}_{_}"
                out.append_dict()
            continue
        if seflag:
            seflag = False
            out.add_text(data[2])
            out.dic["idx"] = f"{i}_{2}"
            out.append_dict()
            continue
        if type(data) is not str:
            continue
        if data == "_select":
            selectionflag = True
            continue
        if data == "_SE":
            seflag = True
            continue
        if data[0] in ["#", "_"] or data in ["false", "true", "null", "endif"]:
            continue
        if re.search(r"[0-9a-zA-Z_]", data):
            print(f"Warning: {file} : {data}")

        if "「" in data and data.endswith("」"):
            n, m = data.split("「", 1)
            m = "「" + m
            if force_name and n not in namedict:
                pass
            else:
                out.add_name(n)
                data = m
        out.add_text(data)
        out.dic["idx"] = i
        out.append_dict()
    out.save_json(outPath + "/" + file + ".json")
    info.update(out)

info.output(not force_name)