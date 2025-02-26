from Lib import *

ori_path = "scr\\"
out_path = "gt_input\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(ori_path)

textcount = 0
namedict = {}
for file in fileslist:
    f = open(ori_path + file, "r", encoding="utf-16").readlines()
    out = OriJsonOutput()
    for line in f:
        line = line.strip("\n")
        if re.match(r"[*#;]", line):
            continue
        elif line == "":
            continue
        else:
            text = line.replace("\\n", "")
            if "】" in text:
                name, text = text.split("】", 1)
                name = name[1:]
                out.add_name(name)
            out.add_text(text)
            out.append_dict()
    namedict.update(out.get_names())
    textcount += out.textcount
    out.save_json(out_path + file + ".json")

save_json("namedict.json", namedict)
print("Total text count: ", textcount)