from Lib import *
import random

ori = "gt_input"
out = "gt_output"
os.makedirs(out, exist_ok=True)

for file in os.listdir(ori):
    if file.startswith("_"):
        continue
    data = open_json(os.path.join(ori, file))
    for i, text in enumerate(data):
        text["message"] = replace_halfwidth_with_fullwidth(f"{file.replace(".MES.json", "")}") + "中文测试" * random.randint(2, 8) + replace_halfwidth_with_fullwidth(f"{i}")
    save_json(os.path.join(out, file), data)