from Lib import *
from HanziReplacer import *
oripath = "src/txt"
transpath = "gt_output"
outpath = "release/trans"
os.makedirs(outpath, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath, [namedict])
h.gen_replace("release/trans/replace.bin")

def split_lines(text, max_length = 22):
    lines = []
    while text:
        lines.append(text[:max_length])
        text = text[max_length:]
    return lines

for file in os.listdir(oripath):
    try:
        transdatas = open_json(os.path.join(transpath, file + ".json"))
    except:
        transdatas = []
    with open(os.path.join(oripath, file), "r", encoding="932") as f:
        lines = f.readlines()
    for transdata in transdatas:
        # if "name" in transdata:
        #     name = transdata["name"]
        #     new_name = namedict[name]
        #     new_name = h.hanzitihuan(new_name)
        #     idx = transdata["name_idx"][0]
        #     lines[idx] = f"【{new_name}】\n"
        transtext = transdata["message"]
        ori = transdata["ori"]
        transtext = h.hanzitihuan(transtext)
        transtext = replace_halfwidth_with_fullwidth(transtext)
        # transtext = transtext.replace("・", "·")
        idxs = transdata["idx"]
        for _, idx in enumerate(idxs):
            if isinstance(idx, str):
                i, p = idx.split("_")
                i = int(i)
                p = int(p)
                content = lines[i][p + 1:-1]
                content = content.split(",")
                if p == 11:
                    transtext = transdata["message"]
                    transtext = replace_halfwidth_with_fullwidth(transtext)
                content[0] = transtext
                content = ",".join(content)
                lines[i] = lines[i][:p + 1] + content + "\n"
            else:
                if _ == 0:
                    transtext = split_lines(transtext)
                    if ori.endswith("＠"):
                        transtext[-1] += "＠"
                    transtext = "\n".join(transtext) + "\n"
                    lines[idx] = transtext
                else:
                    lines[idx] = ""
        res = []
        for line in lines:
            line = line.replace("\n", "\r\n").replace("\r\r", "\r")
            if line.startswith("#SAVE_TITLE "):
                res.append(line.encode("936"))
            else:
                res.append(line.encode("932"))
        res = b"".join(res)
        save_file_b(os.path.join(outpath, file), res)
        # with open(os.path.join(outpath, file), "w", encoding="932") as f:
        #     f.write("".join(lines))
        data = open_file_b(os.path.join(outpath, file))
        if file == "user.txt":
            data = data.replace(b"\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x30\x2C\x97\xC1\x89\xB9\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x31\x2C\x82\xDD\x82\xC7\x82\xE8\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x32\x2C\x96\xA2\x97\xE9\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x33\x2C\x97\x52\x88\xDF\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x34\x2C\x92\x6A\x90\xAB\x83\x4C\x83\x83\x83\x89\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x35\x2C\x82\xBB\x82\xCC\x91\xBC", b"\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x30\x2C\xC1\xB9\xD2\xF4\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x31\x2C\xC2\xCC\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x32\x2C\xCE\xB4\xC1\xE5\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x33\x2C\xD3\xC9\xD2\xC2\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x34\x2C\xC4\xD0\xD0\xD4\xBD\xC7\xC9\xAB\x0D\x0A\x23\x56\x4F\x49\x43\x45\x5F\x54\x41\x42\x4C\x45\x5F\x53\x45\x54\x20\x35\x2C\xC6\xE4\xCB\xFB")
        save_file_b(os.path.join(outpath, file), data)
os.system("pack.bat")