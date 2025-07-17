from Lib import *

oriPath = "dump"
outPath = "gt_input"
isForceName = False

os.makedirs(outPath, exist_ok=True)

if isForceName:
    namedict = open_json("namedict.json")
else:
    namedict = {}

def get_plain_text(text):
    # text = re.sub(r"[\\0-9A-Za-z#_\[\]]*", "", text)
    return text

def preProcess(data):
    data = re.sub(r"^\\#", "", data)
    data = re.sub(r"^\\F\[[0-9a-zA-Z]*?\]", "", data)
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
            out_401.append_dict()
        if data.get("code", "") in [102, 402, ""]:
            out_401.append_dict()
            out.append_dict(quchong=True)
            out.add_text(data["ori"])
            out.append_dict(quchong=True)
        elif data.get("code", "") == 401:
            text = get_plain_text(data["ori"])
            out_401.dic["lines"] = out_401.dic.get("lines", 0) + 1
            out_401.dic["ori"] = out_401.dic.get("ori", "") + data["ori"]
            out_401.dic["message"] = out_401.dic.get("message", "") + preProcess(data["ori"])
            # out_401.append_dict()
        elif data.get("code", "") == 101:
            out_401.append_dict()
            out_401.dic["name"] = preProcess(data["ori"])
        else:
            out_401.append_dict()
    out_401.append_dict()    
    out_401.save_json(os.path.join(outPath, f))
    if not isForceName:
        namedict.update(out_401.get_names())

out.save_json(os.path.join(outPath, "others.json"))

if not isForceName:
    namedict.update(out.get_names())
    # save_json("namedict.json", namedict)