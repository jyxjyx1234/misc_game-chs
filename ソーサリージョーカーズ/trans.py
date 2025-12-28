from Lib import *

oripath = "scr"
transpath = "trans"
outpath = "release\\scr"
os.makedirs(outpath, exist_ok=True)
# namedict = open_json("namedict.json")

# def replace_symbol_for_gbk(text):
#     text = text.replace("〜","～")
#     text = text.replace("・", "·").replace("･･･", "…")
#     text = text.replace("♪", "①")
#     text = text.replace("♡", "②")
#     text = text.replace("◦", "③")
#     text = text.replace("´", "④")
#     text = text.replace("✧", "⑤")
#     text = text.replace("∇", "⑥")
#     text = text.replace("◞", "⑦")
#     text = text.replace("◟", "⑧")
#     text = text.replace("‸", "⑨")
#     return text

for f in os.listdir(transpath):
    f_ = f.split(".")[0].split("_")[0] +"." + f.split(".")[1]
    lines = open(os.path.join(oripath, f_), "r", encoding="932").readlines()
    try:
        transdatas = open_double_line(os.path.join(transpath, f), encoding="utf16", pattern = r"○([0-9]*?)○(.*?)\n●([0-9]*?)●(.*)")
    except FileNotFoundError:
        transdatas = []
    for i, line in enumerate(lines):
        line = line.strip("\n")
        if not line:
            continue
        elif re.match(r"[$;]", line):
            continue
        else:
            transdata = transdatas.pop(0)
            trans = transdata["trans"]
            ori = transdata["message"]
            if ori[:1] != line[:1]:
                print(f"Error in {f_} line {i+1}")
                print(f"ori: {line}")
                exit()
            if ori.startswith("【") and ori.endswith("】"):
                trans = trans.replace("【", "亂").replace("】", "亃")
            lines[i] = trans + "\n"
    with open(os.path.join(outpath, f_), "w", encoding="936") as of:
        of.write("".join(lines))
