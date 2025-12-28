from MESFlie import *
from HanziReplacer import *

oripath = "MES"
transpath = "gt_output"
outpath = "..\\1"

os.makedirs(outpath, exist_ok=True)
os.makedirs("temp", exist_ok=True)

namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output", [namedict])
h.gen_replace("..\\1\\data2.bin")

def pre_process(transdatas):
    for transdata in transdatas:
        message = transdata["message"]
        message = h.hanzitihuan(message)
        message = replace_halfwidth_with_fullwidth(message)
        transdata["message"] = message
    return transdatas

for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])


for file in os.listdir(oripath):
    print(f"Processing file: {file}")
    mes = MESFlie(os.path.join(oripath, file))
    try:
        transdata = open_json(os.path.join(transpath, f"{file}.json"))
    except:
        transdata = []
    mes.parse()
    transdata = pre_process(transdata)
    mes.trans(transdata, namedict)
    mes.get_offset_changes("932")
    # save_json(os.path.join("temp", f"{file}.json"), mes.offset_dict)
    mes.update_pos()
    mes.rebuild(os.path.join(outpath, file), "932")

    # mes = MESFlie(os.path.join(outpath, file))
    # mes.parse()
    # mes.to_txt(os.path.join("temp", f"{file}.txt"))

# print("Tempset ops:", [f"0x{i:04x}" for i in tempset])
