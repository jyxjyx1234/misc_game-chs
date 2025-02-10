from Lib import *
import csv
from HanziReplacer import *

packages = ["scenario1_res", "scenario2_res"]
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
h.gen_replace("release\\data2.bin", enc=b"ALyCE")

def split_line(text):
    return text
    line_width = 25
    lines = []
    while len(text) > line_width:
        lines.append(text[:line_width])
        text = text[line_width:]
    lines.append(text)
    return "\n".join(lines)    

for package in packages:
    files = os.listdir(package)
    files = [package + "\\" + file for file in files if file.endswith(".mjres")]
    for file in files:
        with open(file.replace("_res", ""), "r", encoding="utf8") as f:
            reader = csv.reader(f.readlines())
        outf = open(file, "w", encoding="utf8")
        writer = csv.writer(outf, lineterminator="\n")
        try:
            transdata = open_json("gt_output\\" + file.replace("_res", "").replace(".mjres", ".json"))
        except:
            print(f"gt_output\\{file.replace('_res', '')} not found")
            continue
        for row in reader:
            flag, text = row
            if flag == "Key":
                writer.writerow(row)
                continue
            trans = transdata.pop(0)
            transtext = trans["message"]
            transtext = replace_halfwidth_with_fullwidth(transtext)
            transtext = h.hanzitihuan(transtext)
            res = split_line(transtext)
            res = processQuote(res)
            if "name" in trans:
                transname = namedict[trans["name"]]
                transname = h.hanzitihuan(transname)
                res = f"【{transname}】{transtext}"
            res = res.encode("932").replace(b"\x0d\x0a", b"\x0a").decode("932")
            writer.writerow([flag, res])
        outf.close()
        
        os.system(f"cd MajiroTool.Cli.v1.0.26.1156 && maji assemble \"..\\{file.replace(".mjres",".mjil")}\"")

from Majiro_arc_file import *

arc = Majiro_arc_fileV3()
arc._read_arc(open_file_b("scenario1.arc"))
arc.pack("scenario1_res", "release\\scenario1.arc")
arc = Majiro_arc_fileV3()
arc._read_arc(open_file_b("scenario2.arc"))
arc.pack("scenario2_res", "release\\scenario2.arc")