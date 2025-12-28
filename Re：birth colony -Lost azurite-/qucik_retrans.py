from Lib import *

ori = "gt_input"
trans = "gt_output"
os.makedirs("gt_retrans", exist_ok=True)

for file in os.listdir(ori):
    oridata = open_json(os.path.join(ori, file))
    transdata = open_json(os.path.join(trans, file))
    if len(oridata) != len(transdata):
        print(f"{file} length mismatch: {len(oridata)} != {len(transdata)}")
        continue
    for i, data in enumerate(oridata):
        transtext = transdata[i]["message"]
        oridata[i]["message"] = transtext
    save_json(os.path.join("gt_retrans", file), oridata)