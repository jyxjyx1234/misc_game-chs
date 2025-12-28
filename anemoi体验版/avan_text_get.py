from LIB.Lib import *

sourcePath = "LIB\\ss_20251218_134809"

res = []

for fileName in os.listdir(sourcePath):
    data = open(os.path.join(sourcePath, fileName), "r", encoding="932").read()
    matches = re.finditer(r"@アバン画像文字表?示? *\( *([0-9]*), *\"(.*?)\"", data)
    for match in matches:
        idx = int(match.group(1))
        message = match.group(2)
        _ = {
            "file": fileName,
            "idx": idx,
            "ori": message
        }
        try:
            transdata = open_json(f"gt_output\\{fileName}.json")
        except:
            transdata = []
        for item in transdata:
            if item["ori"] == message:
                _["message"] = item["message"]
        res.append(_)


save_json("avan_text.json", res)

res = []

for fileName in os.listdir(sourcePath):
    data = open(os.path.join(sourcePath, fileName), "r", encoding="932").read()
    matches = re.finditer(r"@過去ストーリー文字準?備? *\( *([0-9]*), *\"(.*?)\"", data)
    for match in matches:
        idx = int(match.group(1))
        message = match.group(2)
        _ = {
            "file": fileName,
            "idx": idx,
            "ori": message
        }
        try:
            transdata = open_json(f"gt_output\\{fileName}.json")
        except:
            transdata = []
        for item in transdata:
            if item["ori"] == message:
                _["message"] = item["message"]
        res.append(_)


save_json("avan2_text.json", res)