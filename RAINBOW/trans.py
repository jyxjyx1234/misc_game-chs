from MES_FILE import *
from HanziReplacer import *

files = os.listdir("dec")
transpath = "gt_output\\"
outpath = "dec_trans\\"
os.makedirs(outpath, exist_ok = True)
namedict = open_json("namedict_.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output", [namedict])
# h.ChangeFont("ALyCE_Humming.ttf", "release\\NAO.ttf", "NAO")
h.gen_replace("release\\data2.bin", enc=b"ALyCE")

def preProcess(text:str):
    text = text.replace("\n", "")
    text = text.replace("......", "……").replace("...", "…").replace(".....", "……").replace("....", "……").replace("..", "…").replace(".", "。")
    text = processQuote(text)
    text = replace_symbol_for_gbk(text)
    text = h.hanzitihuan(text)
    # text = replace_halfwidth_with_fullwidth(text)
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
            l = re.sub(r"strg\((.*?)\)", lambda x: "str(" + preProcess(x.group(1)) + ")", l)
            lines.append(Line(l, file))
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
                if getName(lines[i]) != "主人公":
                    try:
                        newname = h.hanzitihuan(namedict[getName(lines[i])])
                    except:
                        newname = h.hanzitihuan(getName(lines[i]))
                        print(f"Warning: {getName(lines[i])} not in namedict")
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
                    l = Line("", file)
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
    
import compile