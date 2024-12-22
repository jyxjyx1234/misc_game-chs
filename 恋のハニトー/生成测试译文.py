from Lib import *
import os, random

oriJsonPath = "gt_input\\"
transJsonPath = "gt_output\\"
os.makedirs(transJsonPath, exist_ok=True)

fileNames = os.listdir(oriJsonPath)
idx = 0
for fileName in fileNames:
    out = []
    oriJson = open_json(oriJsonPath + fileName)
    for i in oriJson:
        trans = (
            "中文测试" * random.randint(2,2)
            + fileName.replace(".json", "")
            + str(idx)
        )
        out.append({"message": trans, "ori": i["message"]})
        idx += 1
    save_json(transJsonPath + fileName, out)
