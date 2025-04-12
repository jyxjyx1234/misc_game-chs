from Lib import *
import shutil


oriPath = "Scene\\"
transPath = "gt_output\\"
outPath = "Scene_trans\\"
os.makedirs(outPath, exist_ok=True)

def split_by_char(text, char):
    if char in text[:-1]:
        parts = text.split(char, 1)
        return [parts[0] + char, parts[1]]
    else:
        return [text]


def split_text(line, linecount):
    oriline = line
    res = [oriline]

    while True:
        temp = []
        flag = False
        for l in res:
            if re.search(r"(＃Ａ０.)", l) and not re.match(r"^＃Ａ０.$", l):
                flag = True
                m = re.search(r"(＃Ａ０.)", l)
                if m.start() > 0:
                    temp.append(l[:m.start()])
                temp.append(m.group(1))
                if m.end() < len(l):
                    temp.append(l[m.end():])
            else:
                temp.append(l)
        res = temp.copy()
        if not flag:
            break
    
    if len(res) == linecount:
        return res
    
    if len(res) > linecount:
        raise ValueError(f"Line count exceeds the limit: {oriline} {linecount} {res}")
    
    for char in ["。", "、", "，"]:
        while True:
            temp = []
            flag = False
            for idx, l in enumerate(res):
                if flag:
                    temp += [l]
                else:
                    temp += split_by_char(l, char)
                    if len(temp) + (len(res) - idx - 1) >= linecount:
                        flag = True
            if len(res) == len(temp):
                res = temp.copy()
                break
            res = temp.copy()
        
        if len(res) == linecount:
            return res
    
    while len(res) < linecount:
        res.append("　")

    return res

for file in os.listdir(oriPath):
    if file.endswith(".txt"):
        oriFile = open(oriPath + file, "r", encoding="utf-16").readlines()
        try:
            transdatas = open_json(transPath + file.replace(".txt", ".json"))
        except:
            transdatas = []
        for transdata in transdatas:
            lines = len(transdata["idx"])
            idxs = transdata["idx"]
            trans = transdata["message"]
            ori = transdata["ori"]
            if ori.endswith("R"):
                trans = trans + "R"
            trans = trans.replace("......", "……").replace(".....", "……").replace("....", "……").replace("...", "…").replace("..", "…").replace(".", "。").replace(",", "，")
            trans = re.sub(r"#A0.", lambda x: replace_halfwidth_with_fullwidth(x.group()), trans)
            translines = split_text(trans, lines)
            for i in range(lines):
                oriFile[idxs[i]] = translines[i] + "\n"
            if "ruby" in transdata:
                for i in transdata["ruby"]:
                    oriFile[i] = "　\n"
        oriFile = "".join(oriFile)
        with open(outPath + file, "w", encoding="utf-16") as f:
            f.write(oriFile)
    else:
        oriFile = open_file_b(oriPath + file)
        save_file_b(outPath + file, oriFile)

if os.path.exists("release\\Scene\\"):
    shutil.rmtree("release\\Scene\\")
os.makedirs("release\\Scene\\", exist_ok=True)

for file in os.listdir(outPath):
    if file.endswith(".ss"):
        os.system(f"ScriptRepacker {outPath + file} {outPath + file + ".txt"}")
        try:
            shutil.copy(outPath + file + ".out", "release\\Scene\\")
            os.rename("release\\Scene\\" + file + ".out", "release\\Scene\\" + file)
        except:
            print("Error: ", file)
            shutil.copy(outPath + file, "release\\Scene\\")