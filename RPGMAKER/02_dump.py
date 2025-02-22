from Lib import *

oriPath = "dump"
outPath = "gt_input"
isForceName = True

os.makedirs(outPath, exist_ok=True)

if isForceName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

def get_plain_text(text):
    text = re.sub(r"[\\0-9A-Za-z#_\[\]]*", "", text)
    return text

def preProcess(data):
    data = re.sub(r"^\\#", "", data)
    data = re.sub(r"[\\0-9A-Za-z#_\[\]]*$", "", data)
    data = re.sub(r"\\n", "", data)
    data = re.sub(r"\n", "", data)
    return data

def isNotAllCode(dic):
    data = dic["ori"]
    match = re.match(r"[\[\]0-9A-Za-z\\_#]*", data)
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
            continue
        if data.get("code", "") in [102, 402, ""]:
            out.append_dict(quchong=True)
            out.add_text(data["ori"])
            out.append_dict(quchong=True)

        elif data.get("code", "") == 401:
            text = get_plain_text(data["ori"])
            if not isForceName:
                if text.startswith("「"):
                    out_401.dic["name"] = out_401.dic.get("ori", "")
                    out_401.dic["ori"] = data["ori"]
                    out_401.dic["message"] = preProcess(data["ori"])
                if out_401.dic.get("name", ""):
                    if not text.startswith("「"):
                        out_401.add_text(data["ori"])
                    if text.endswith("」"):
                        out_401.append_dict()
                else:
                    out_401.append_dict()
                    out_401.add_text(data["ori"])
            else:
                if text in namedict:
                    out_401.append_dict()
                    out_401.add_name(data["ori"])
                else:
                    if out_401.dic.get("name", ""):
                        out_401.add_text(data["ori"])
                        if text.endswith("」"):
                            out_401.append_dict()
                    else:
                        out_401.append_dict()
                        out_401.add_text(data["ori"])
        else:
            out_401.append_dict()
    out_401.append_dict()    
    out_401.save_json(os.path.join(outPath, f))
    if not isForceName:
        namedict.update(out_401.get_names())

out.save_json(os.path.join(outPath, "others.json"))

if not isForceName:
    namedict.update(out.get_names())
    save_json("namedict.json", namedict)