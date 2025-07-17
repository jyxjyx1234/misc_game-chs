from NTK_FILE import *
from HanziReplacer import *

oriPath = "script_d"
transPath = "gt_output"
# outPath = "script_trans"
outPath_ = "release\\script"

# os.makedirs(outPath, exist_ok=True)
os.makedirs(outPath_, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath)
h.gen_replace(os.path.join(outPath_, "data2.bin"))

encoding = "932"

if encoding == "932":
    for name in namedict:
        namedict[name] = h.hanzitihuan(namedict[name])

for file in os.listdir(oriPath):
    orifile = NTKFile(os.path.join(oriPath, file))
    try:
        transdatas = open_json(os.path.join(transPath, file + ".json"))
    except FileNotFoundError:
        transdatas = []
    if encoding == "932":
        for transdata in transdatas:
            # if "sp" in transdata:
            #     transdata["message"] = "gbk" + transdata["message"]
            # else:
                transdata["message"] = h.hanzitihuan(transdata["message"])
    orifile.trans(transdatas, namedict, encoding=encoding)
    orifile.save(os.path.join(outPath_, file))
    # data = enc_file(os.path.join(outPath, file))
    # save_file_b(os.path.join(outPath_, file), data)
    # data = dec_file(os.path.join(outPath_, file))
    # save_file_b(os.path.join(outPath_, file), data)
os.system("pack.bat >nul")