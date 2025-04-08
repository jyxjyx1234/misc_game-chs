from Lib import *
from MES_FILE import *

files = os.listdir("dec")
outpath = "gt_input\\"
os.makedirs(outpath, exist_ok = True)

alltexts = 0
namedict = {}
for file in files:
    out = OriJsonOutput()
    lines = []
    with open(f"dec\\{file}", "r", encoding = "utf-8") as f:
        f = f.readlines()[4:]
        for l in f:
            lines.append(Line(l, file))
    i = 0
    nameflag = False
    foundtextflag = False
    while i < len(lines):
        if isNameFlag(lines[i]):
            nameflag = True
            i += 1
            continue
        elif isTextFlag(lines[i]):
            nameflag = False
            i += 1
            continue
        elif nameflag:
            if getName(lines[i]):
                out.add_name(getName(lines[i]))
                nameflag = False
                i += 1
                continue
            else:
                i += 1
                continue
        else:
            if getText(lines[i]):
                out.add_text(getText(lines[i]))
                foundtextflag = True
                i += 1
                continue
            else:
                if foundtextflag:
                    out.append_dict()
                    foundtextflag = False
                    continue
                i += 1
    out.save_json(f"{outpath}{file.replace(".txt", "")}.json")
    alltexts += out.textcount
    namedict.update(out.get_names())

print(f"Total texts: {alltexts}")
#save_json("namedict.json", namedict)
            