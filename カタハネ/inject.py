from Lib import *
import csv
from HanziReplacer import *

packages = ["scenario_res"]
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
h.gen_replace("release\\data2.bin", enc=b"ALyCE")

maxLineWidth = 30
def split_line(text, linecount):
    lines = []
    for i in range(len(text) // maxLineWidth):
        lines.append(text[i * maxLineWidth : (i + 1) * maxLineWidth])
    lines.append(text[len(text) // maxLineWidth * maxLineWidth:])
    if len(lines) > linecount:
        lines = lines[:linecount - 1] + ["".join(lines[linecount - 1:])]
    if len(lines) < linecount:
        lines += ["\u3000"] * (linecount - len(lines))
    return lines  

def recover_tag(ori, trans):
    if ori.startswith("「") and not trans.startswith("「"):
        trans = "「" + trans
    if not ori.startswith("「") and trans.startswith("「"):
        trans = trans[1:]
    if ori.endswith("」") and not trans.endswith("」"):
        trans = trans + "」"
    if not ori.endswith("」") and trans.endswith("」"):
        trans = trans[:-1]
    return trans

for package in packages:
    files = os.listdir(package)
    files = [file for file in files if file.endswith(".mjres")]
    for file in files:
        with open((package + "\\" + file).replace("_res", ""), "r", encoding="utf8") as f:
            reader = csv.reader(f.readlines())
        outf = open(package + "\\" + file, "w", encoding="utf8")
        writer = csv.writer(outf, lineterminator="\n")
        try:
            transdata = open_json("gt_output\\" + file.replace("_res", "").replace(".mjres", ".json"))
            if "kosihata" in file:
                transdata += open_json("temp")
        except:
            print(f"gt_output\\{file.replace('_res', '')} not found")
            continue
        lineBuffer = []
        for row in reader:
            flag, text = row
            if flag == "Key":
                writer.writerow(row)
                continue
            if text.strip("\n") == " ":
                writer.writerow(row)
                continue
            if len(lineBuffer) == 0:
                trans = transdata.pop(0)
                transtext = recover_tag(trans["ori"], trans["message"])
                transtext = replace_halfwidth_with_fullwidth(transtext)
                transtext = h.hanzitihuan(transtext)
                transtext = transtext.replace("...", "…")
                lineBuffer = split_line(transtext, trans["line"])
                if "name" in trans:
                    transname = trans["name"]
                    lineBuffer[0] = transname + lineBuffer[0]
            res = lineBuffer.pop(0)
            res = res.replace("\\n", "\n").encode("932").replace(b"\x0d\x0a", b"\x0a").decode("932")
            writer.writerow([flag, res])
        outf.close()
        
        with open((package + "\\" + file).replace("_res", "_noruby").replace(".mjres", ".mjil"), "r", encoding="utf8") as f:
            mjil_data = f.readlines()
        with open((package + "\\" + file).replace(".mjres", ".mjil"), "w", encoding="utf8") as f:
            try:
                transdata = open_json("gt_output\\" + file.replace(".mjres", "_opt.json"))
            except:
                transdata = []
            for data in transdata:
                idx = data["pos"]
                transtext = recover_tag(data["ori"], data["message"])
                ori = data["ori"]
                transtext = h.hanzitihuan(transtext)
                mjil_data[idx] = mjil_data[idx].replace(ori, transtext)
            f.writelines(mjil_data)

        os.system(f"cd MajiroTool.Cli.v1.0.26.1156 && maji assemble \"..\\scenario_res\\{file.replace(".mjres",".mjil")}\"")

import shutil
os.system("copy scenario_res\\*.mjo release\\update2\\")