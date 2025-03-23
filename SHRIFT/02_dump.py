from Lib import *

oriPath = "dump"
outPath = "gt_input"
isForceName = True

textcount = 0

os.makedirs(outPath, exist_ok=True)

if isForceName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

def get_plain_text(text):
    text = text.strip()
    text = re.sub(r"[\\0-9A-Za-z#_\[\{}]]*", "", text)
    return text

def preProcess(data):
    data = data.strip()
    data = re.sub(r"^\\#", "", data)
    data = re.sub(r"\\[Cc]\[[0-9]*\]", "", data)
    data = re.sub(r"[ \(\)\\0-9A-Za-z#_]*$", "", data)
    data = re.sub(r"\n", "", data)
    return data

def isNotAllCode(dic):
    data = dic["ori"]
    match = re.match(r"[\[\]0-9A-Za-z\\{}_#]*", data)
    if match and match.group(0) == data:
        return False
    if isForceName and dic["ori"] in namedict:
        return False
    return True

out = OriJsonOutput()
out.preProcess = preProcess
out.savefilter = isNotAllCode

for f in os.listdir(oriPath):
    oriData = open_json(os.path.join(oriPath, f))

    out_401 = OriJsonOutput()
    out_401.preProcess = preProcess
    out_401.savefilter = isNotAllCode

    for data in oriData:
        if not data.get("ori", ""):
            out_401.append_dict()
        if data.get("code", "") in [102, 402, ""]:
            out.append_dict(quchong=True)
            out.add_text(data["ori"])
            out.append_dict(quchong=True)

        elif data.get("code", "") == 401:
            text = get_plain_text(data["ori"])
            if text == "":
                continue
            if not isForceName:
                if out_401.dic == {} and text.startswith("「") and (text.count("「") != text.count("」") or text.endswith("」")):
                    out_401.dic = out_401.outlist.pop()
                    out_401.dic["ori"] = ""
                    out_401.dic["name"] = out_401.dic["message"]
                    out_401.dic["message"] = ""
                elif "「" in text:
                    name, text = text.split("「", 1)
                    text = "「" + text
                    if text.count("「") == text.count("」") and not text.endswith("」"):
                        text = name + text
                    else:
                        out_401.add_name(name)
                        data["ori"] = "「" + data["ori"].split("「", 1)[1]
                out_401.add_text(data["ori"])
                if out_401.dic["message"].startswith("「") and not out_401.dic["message"].endswith("」"):
                    continue
                out_401.append_dict()
            else:
                if text in namedict:
                    out_401.add_name(text)
                else:
                    if "「" in text:
                        name, text = text.split("「", 1)
                        text = "「" + text
                        if name in namedict:
                            out_401.add_name(name)
                            data["ori"] = data["ori"].replace(name, "", 1)
                        else:
                            text = name + text
                    out_401.add_text(data["ori"])
                    if out_401.dic["message"].startswith("「") and not out_401.dic["message"].endswith("」"):
                        continue
                    out_401.append_dict()
        else:
            out_401.append_dict()
    out_401.append_dict()    
    out_401.save_json(os.path.join(outPath, f))
    textcount += out_401.textcount
    if not isForceName:
        namedict.update(out_401.get_names())
    

out.save_json(os.path.join(outPath, "others.json"))
textcount += out.textcount
if not isForceName:
    namedict.update(out.get_names())
    save_json("namedict.json", namedict)

print("Text count:", textcount)