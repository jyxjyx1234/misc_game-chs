from MES_FILE import *
from HanziReplacer import *

files = os.listdir("dec")
transpath = "gt_output\\"
outpath = "dec_trans\\"
os.makedirs(outpath, exist_ok = True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output", [namedict])
h.ChangeFont("ALyCE_Humming.ttf", "release\\NAO.ttf", "NAO")

def preProcess(text:str):
    text = h.hanzitihuan(text)
    text = text.replace("\n", "")
    text = processQuote(text)
    text = replace_halfwidth_with_fullwidth(text)
    return text

for file in files:
    try:
        trans = open_json(f"{transpath}{file[:-4]}.json")
    except:
        continue
    lines = []
    with open(f"dec\\{file}", "r", encoding = "utf-8") as f:
        f = f.readlines()
        header = f[:4]
        f = f[4:]
        for l in f:
            lines.append(Line(l))
    i = 0
    nameflag = False
    new_lines = []
    while i < len(lines):
        if lines[i].op == "e2" and lines[i].args[0].data == 31:
            lines[i].args[0].data = 30
            new_lines.append(lines[i])
            i += 1
            continue

        elif isNameFlag(lines[i]):
            nameflag = True
            new_lines.append(lines[i])
            i += 1
            continue
        
        elif isTextFlag(lines[i]):
            nameflag = False
            new_lines.append(lines[i])
            i += 1
            continue

        elif nameflag:
            if getName(lines[i]):
                if getName(lines[i]) != "薫":
                    newname = h.hanzitihuan(namedict[getName(lines[i])])
                    lines[i].args[0].data = newname
                nameflag = False
            new_lines.append(lines[i])
            i += 1
            continue

        else:
            if getText(lines[i]):
                offset = lines[i].offset
                while getText(lines[i]):
                    i += 1
                transtext = trans.pop(0)["message"]
                transtext = preProcess(transtext)
                translines = split_text(transtext, 25)
                for t in translines:
                    l = Line("")
                    l.op = "11"
                    l.offset = offset
                    l.args = [Args(f"str({t})")]
                    new_lines.append(l)
                continue
            else:
                new_lines.append(lines[i])
                i += 1
                continue
    with open(f"{outpath}{file}", "w", encoding = "utf-8") as f:
        f.write("".join(header))
        f.write("\n".join([str(l) for l in new_lines]))
    