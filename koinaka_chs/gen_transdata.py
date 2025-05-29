from Lib import *

os.makedirs("release", exist_ok=True)
data = open_json("gt_output\\CODE1.json")

res = {}
for i in data:
    res[i["ori"]] = i["message"]

with open("release\\data1.bin", "w", encoding="utf16") as f:
    for i in res:
        trans = res[i]
        i = i.replace("〜", "\uff5e")
        f.write(f"{i}[=]{trans}[n]")

data = open_file_b("release\\data1.bin")
save_file_b("release\\data1.bin", data, enc = b"koinaka")