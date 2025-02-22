from Lib import *

transDataPath = "gt_output"
#transDataPath = "gt_input" #测试
oriDataPath = "dump"
transDataOutputPath = "trans"
maxLineWidth = 40
os.makedirs(transDataOutputPath, exist_ok=True)
namedict = open_json("namedict.json")

def recover_tag(ori, trans):    
    start = re.search(r"^\\#", ori)
    if start and not trans.startswith(start.group(0)):
        trans = start.group(0) + trans
    end = re.search(r"[\\0-9A-Za-z#_\[\]]*$", ori)
    if end and not trans.endswith(end.group(0)):
        trans = trans + end.group(0)
    return trans

def get_plain_text(text):
    text = re.sub(r"[\\0-9A-Za-z#_\[\]]*", "", text)
    return text

def isNotAllCode(dic):
    data = dic["ori"]
    match = re.match(r"[\[\]0-9A-Za-z\\_#]*", data)
    if match and match.group(0) == data:
        return False
    if dic["ori"] in namedict:
        return False
    return True

def split_line(text, linecount):
    lines = []
    for i in range(0, len(text), maxLineWidth):
        lines.append(text[i:i+maxLineWidth])
    if len(lines) > linecount:
        lines = lines[:linecount - 1] + ["\n".join(lines[linecount - 1:])]
    if len(lines) < linecount:
        lines += [""] * (linecount - len(lines))
    return lines

transdict = {}
for dic in open_json(os.path.join(transDataPath, "others.json")):
    if "ori" in dic:
        transdict[dic["ori"]] = recover_tag(dic["ori"], dic["message"])
transdict.update(namedict)

for f in os.listdir(oriDataPath):
    print(f)
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
        if not isNotAllCode(data):
            continue
        
        if data.get("code", "") in [102, 402, ""]:
            data["ori"] = transdict[data["ori"]]
        elif data.get("code", "") == 401:
            if data["ori"] in namedict:
                data["ori"] = transdict[data["ori"]]
            else:
                if len(lineBuffer) > 0:
                    data["ori"] = lineBuffer.pop(0)
                else:
                    t = transData.pop(0)
                    transtext = recover_tag(t["ori"], t["message"])
                    lineBuffer = split_line(transtext, t["line"])
                    data["ori"] = lineBuffer.pop(0)
    save_json(os.path.join(transDataOutputPath, f), oriData)