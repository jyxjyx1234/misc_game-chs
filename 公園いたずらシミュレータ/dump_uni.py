from Lib import *

uni = set()

oriPath = "gt_input_without_cleaning"
outPath = "gt_input"

os.makedirs(outPath, exist_ok=True)
textCount = 0

for file in os.listdir(oriPath):
    data = open_json(os.path.join(oriPath, file))
    res = []
    for d in data:
        text = d["message"]
        if text not in uni:
            textCount += len(text)
            uni.add(text)
            res.append(d)
    save_json(os.path.join(outPath, file), res)

print(f"Total text count: {textCount}")