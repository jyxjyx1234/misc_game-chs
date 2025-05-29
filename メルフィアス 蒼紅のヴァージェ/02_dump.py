from Lib import *

oriPath = "dump"
outPath = "gt_input"
isForceName = False
textcount = 0
os.makedirs(outPath, exist_ok=True)

if isForceName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

def get_plain_text(text):
    text = re.sub(r"[-\\0-9A-Za-z#_ \[\]<>:\n\*,/Ａ-Ｚａ-ｚ０-９－\|^\.「」!?！？。，]*", "", text)
    return text

def print_(m):
    if m.group(0):
        print(m.group(0))

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
    if isForceName and dic["ori"] in namedict:
        return False
    return True

if __name__ == "__main__":
    out = OriJsonOutput()
    out.preProcess = preProcess
    out.savefilter = isNotAllCode

    for f in os.listdir(oriPath):
        oriData = open_json(os.path.join(oriPath, f))

        out_401 = OriJsonOutput()
        out_401.preProcess = preProcess
        out_401.savefilter = isNotAllCode

        for dataidx, data in enumerate(oriData):
            if not data.get("ori", ""):
                out_401.append_dict()
            if data.get("code", "") in [102, 402, ""]:
                out_401.append_dict()
                out.append_dict(quchong=True)
                out.add_text(data["ori"])
                out.append_dict(quchong=True)

            elif data.get("code", "") == 401:
                # out_401.append_dict()
                text = get_plain_text(data["ori"])
                if not text:
                    continue
                text = data["ori"]
                out_401.add_text(text)
                out_401.dic["pos"] = out_401.dic.get("pos", []) + [dataidx]
                if re.match(r"\\n<.*?>", data["ori"], re.DOTALL):
                    name = re.search(r"\\n<(.*?)>", data["ori"]).group(1)
                    if name == "\\N[2]":
                        name = "シズマ"
                    elif name == "\\N[1]":
                        name = "メルフィ"
                    out_401.add_name(name)
            else:
                out_401.append_dict()
        out_401.append_dict()    
        out_401.save_json(os.path.join(outPath, f))
        textcount += out_401.textcount
        if not isForceName:
            namedict.update(out_401.get_names())

    out.save_json(os.path.join(outPath, "others.json"))
    textcount += out.textcount

    others = open_json(os.path.join(outPath, "others.json"))
    sg = []
    for _, i in enumerate(others):
        if "<" in i["message"]:
            sg.append(i)
            others[_] = {}
    others = [i for i in others if i != {}]
    save_json(os.path.join(outPath, "others.json"), others)
    save_json(os.path.join(outPath, "sg.json"), sg)

    if not isForceName:
        namedict.update(out.get_names())
        # save_json("namedict.json", namedict)

    print(f"Total text count: {textcount}")