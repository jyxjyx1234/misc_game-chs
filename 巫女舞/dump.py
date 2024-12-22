from Lib import *

oripath = "scx/"
outpath = "gt_input/"
os.makedirs(outpath, exist_ok=True)

scxfiles = os.listdir(oripath)

for file in scxfiles:
    print(file)
    filepath = oripath + file
    f = open(filepath, "r", encoding="932")
    out = OriJsonOutput()
    idx = 0
    for l in f.readlines():
        idx += 1
        try:
            l_ = l.replace("\t", "")
            if l_ == "\n" or l_ == "":
                continue
            elif l_.startswith(";"):
                continue
            elif re.match(R"/Mes\t\[[0-9]*\]\t'(.*?)'", l_):
                out.dic["name"] = re.match(R"/Mes\t\[[0-9]*\]\t'(.*?)'", l).group(1).replace("$name", "元樹")
            elif l_ == "/MesWait\n":
                if "message" in out.dic:
                    out.dic["ori"] = out.dic["message"]
                    out.append_dict()
            elif l_.startswith("/") or l_.startswith("#"):
                continue
            else:
                out.dic["message"] = out.dic.get("message", "") + l.replace("\n", "").replace("$name", "元樹")
        except:
            print(idx)
            exit()
    out.save_json(outpath + file.replace(".scx", ".json"))

