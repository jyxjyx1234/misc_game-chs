from Lib import *

transDataPath = "gt_output"
#transDataPath = "gt_input" #测试
oriDataPath = "dump"
transDataOutputPath = "trans"
maxLineWidth = 18
os.makedirs(transDataOutputPath, exist_ok=True)
namedict = open_json("namedict.json")

def recover_tag(ori, trans): 
    ori = re.sub(r"\\n<.*?>", "", ori)
    t = type(trans)
    if t == str:
        trans = [trans]
    if re.match(r"\\c\[2\]", ori):
        trans[0] = "\\c[2]" + trans[0]
    if re.search(r"if\(.*?\)$", ori):
        trans[-1] = trans[-1] + re.search(r"if\(.*?\)$", ori).group(0)
        ori = re.sub(r"if\(.*?\)$", "", ori)
    if re.search(r"[\\\.\|^]*$", ori):
        trans[-1] = trans[-1] + re.search(r"[\\\.\|^]*$", ori).group(0)
        ori = re.sub(r"[\\\.\|^]*$", "", ori)
    if re.match(r"^\\i\[[0-9]*?\]", ori):
        trans[0] = re.match(r"^\\i\[[0-9]*?\]", ori).group(0) + trans[0]
        ori = re.sub(r"^\\i\[[0-9]*?\]", "", ori)
    if t == str:
        trans = trans[0]
    return trans

def get_plain_text(text):
    text = re.sub(r"[-\\0-9A-Za-z#_ \[\]<>:\n\*,/Ａ-Ｚａ-ｚ０-９－\|^\.…「」!?！？。，]*", "", text)
    return text

def preProcess(data):
    if get_plain_text(re.sub(r"<.*?>", "", data)) == "":
        return ""
    if get_plain_text(data) == "":
        return ""
    data = re.sub(r"\\n<.*?>", "", data) #要恢复
    data = re.sub(r"if\(.*?\)$", "", data) #要恢复
    data = re.sub(r"[\\\.\|^]*$", "", data) #要恢复
    data = re.sub(r"\\N\[1\]", "メルフィ", data)
    data = re.sub(r"\\N\[2\]", "シズマ", data)
    data = re.sub(r"\\c\[[0-9]*?\]", "", data)
    data = re.sub(r"\\[\{\}\.|]", "", data)
    data = re.sub(r"^\\i\[[0-9]*?\]", "", data) #要恢复
    if data.startswith("「") and not data.endswith("」"):
        data += "」"
    if data.startswith("（") and not data.endswith("）"):
        data += "）"
    # data = re.sub(r"^\\#", "", data)
    # data = re.sub(r"[\\0-9A-Za-z#_\[\]]*$", print_, data)
    # data = re.sub(r"\\n", "", data)
    # data = re.sub(r"\n", "", data)
    return data

def isNotAllCode(dic):
    data = dic["ori"]
    match = re.match(r"[\[\]0-9A-Za-z\\_#]*", data)
    if match and match.group(0) == data:
        return False
    return True

def split_line(text, linecount):
    lines = []
    i = 0
    while i < len(text):
        line = ""
        while i < len(text):
            if i + 1 < len(text) and text[i:i+1] == "\\" and re.match(r"\\[a-z0-9]\[[0-9]*\]", text[i:]):
                match = re.match(r"\\[a-z0-9]\[[0-9]*\]", text[i:])
                if len(line) + 1 > maxLineWidth:
                    break
                line += match.group(0)
                i += len(match.group(0))
            else:
                if len(line) + 1 > maxLineWidth:
                    break
                line += text[i]
                i += 1
        lines.append(line)
    
    
    # for i in range(0, len(text), maxLineWidth):
    #     lines.append(text[i:i+maxLineWidth])
    if len(lines) > linecount:
        lines = lines[:linecount - 1] + ["\n".join(lines[linecount - 1:])]
        print(f"Warning: {text} too long, split into {len(lines)} lines")
    if len(lines) < linecount:
        lines += [""] * (linecount - len(lines))
    return lines

transdict = {}
need_check = {}
try:
    need_check_trans = open_json("need_check_trans.json")
except:
    need_check_trans = {}

for dic in open_json(os.path.join(transDataPath, "others.json")) + open_json(os.path.join(transDataPath, "sg.json")):
    if "ori" in dic:
        if ("\\" in preProcess(dic["ori"]) or "[" in preProcess(dic["ori"]) or "%" in dic["ori"]) and "SG" not in dic["ori"]:
            need_check[dic["ori"]] = dic["message"]
            if dic["ori"] in need_check_trans:
                dic["message"] = need_check_trans[dic["ori"]]
                del need_check[dic["ori"]]
        transdict[dic["ori"]] = recover_tag(dic["ori"], dic["message"])
transdict.update(namedict)

log = open("translog.txt", "w", encoding="utf8")


for f in os.listdir(oriDataPath):
    log.write("############" + f + "\n")
    oriData = open_json(os.path.join(oriDataPath, f))
    try:
        transData = open_json(os.path.join(transDataPath, f))
    except:
        transData = []
    lineBuffer = []
    i = 0
    for data in oriData:
        if not data.get("ori", ""):
            continue
        if data.get("code", "") in [102, 402, ""]:
            if not preProcess(data["ori"]):
                continue
            data["ori"] = transdict[data["ori"]]
    
    for trans in transData:
        pos = trans["pos"]
        ori = trans["ori"]
        transtext = trans["message"]
        if ("\\" in preProcess(ori) or "[" in preProcess(ori) or "%" in ori) and "SG" not in ori:
            need_check[ori] = transtext
            if ori in need_check_trans:
                transtext = need_check_trans[ori]
                del need_check[ori]
        transtext = transtext.replace("………", "……").replace("\u3000", " ")
        transtexts = split_line(transtext, len(pos))
        transtexts = recover_tag(ori, transtexts)
        if trans.get("name", ""):
            transname = namedict[trans["name"]]
            transtexts[0] = f"\\n<{transname}>" + transtexts[0]
        for j in range(len(pos)):
            oriData[pos[j]]["ori"] = transtexts[j]

    save_json(os.path.join(transDataOutputPath, f), oriData)

save_json("need_check.json", need_check)