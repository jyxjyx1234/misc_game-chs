from Lib import *
from HanziReplacer import *
from trans_exe import *

oriPath = "HGO_DUMP\\"
transPath = "gt_output\\"
outPath = "HGO_DUMP_TRANS\\"

os.makedirs(outPath, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_replace("release\\data2.bin", enc=b"ALyCE")

def preProcess(text, name = ""):
    text = replace_halfwidth_with_fullwidth(text)
    text = processQuote(text)
    text = text.replace("”", "").replace("“", "").replace("\"", "").replace("♪", "")
    text = text.replace("......", "……").replace(".....", "……").replace("....", "…").replace("...", "…").replace("..", "…").replace(".", "。").replace("⋯", "…")
    text = re.sub("・{2,}", "……", text)
    text = re.sub("・", "", text)
    text = re.sub(r"(?<!^)「", "『", text)
    text = re.sub(r"」(?!$)", "』", text)
    try:
        text.encode("936")
    except:
        print(text)
        raise Exception("Encoding Error")
    text = h.hanzitihuan(text)
    return name + text

def split_lines(text, linecount):
    linewidth = 25
    res = []
    for i in range(linecount):
        res.append(text[i * linewidth: (i + 1) * linewidth])
    res[-1] = res[-1] + text[(linecount + 1) * linewidth:]
    for i in range(len(res)):
        if res[i] == "":
            res[i] = "　"
    return res

def dengchang(text, ori):
    while len(text.encode("932")) < len(ori.encode("932")):
        text += " "
        text = text.replace("  ", "　")
    while len(text.encode("932")) > len(ori.encode("932")):
        print(ori)
        print(text)
        exit()
    return text

for filename in os.listdir(oriPath):
    print(filename)
    oriFile = open(oriPath + filename, "r", encoding="utf-8")
    try:
        transdatas = open_json(transPath + filename[:-4] + ".json")
    except:
        transdatas = []
    outFile = open(outPath + filename, "w", encoding="utf-8")
    buffer = []
    # transdict = {}
    # for transdata in transdatas:
    #     ori = transdata["ori"]
    #     trans = transdata["message"]
    #     trans = preProcess(trans, "")
    #     transdict[ori] = trans
    for line in oriFile:
        line = line.strip("\n")
        if line.startswith("@"):
            args = line.split("|")
            offset = int(args[0][1:], 16)
            op = args[1][1:]
            args = args[2:]
            if not args:
                outFile.write(line + "\n")
                continue
            if op == "0481" or op == "1403" or op == "0301" or op == "1014" or op == "1408":
                ori = args[0][5:-1]
                if op == "1014":
                    ori = args[0][4:-1]
                    if re.match(r"^[0-9a-fA-F]+$", ori):
                        outFile.write(line + "\n")
                        continue
                if buffer == []:
                    transdata = transdatas.pop(0)
                    name = namedict[transdata["name"]] if "name" in transdata else ""
                    name = h.hanzitihuan(name)
                    transtext = preProcess(transdata["message"], name)
                    buffer = split_lines(transtext, transdata["line"])
                if 0 and op == "0481":
                    buffer.pop(0)
                else:
                    t = buffer.pop(0)
                    # if filename == "START.HGO.txt":
                    #     t = dengchang(t, ori)
                    line = f"@{hex(offset)[2:]}|#{op}|strt({t})"
        outFile.write(line + "\n")
    if transdatas:
        print(f"Warning: {filename} has more transdata than original data")
    outFile.close()

exe = open_file_b("NEGAPOSI_CHS.EXE")
data = BytesReader(exe)
trans_text("exe_trans.json", data)
trans_text("exe_trans_jis.json", data, h)
save_file_b("release\\NEGAPOSI_CHS.EXE", data.getvalue())

import compile
import pack