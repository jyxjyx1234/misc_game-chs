from ISF_FILE import *
from Lib import *
import os

ori_path = "ISF\\"
out_path = "ori_jsons\\"
os.makedirs(out_path, exist_ok=True)
ori_files = os.listdir(ori_path)
allpatten = set()
out = open("pattens.txt","w",encoding="utf8")

for file in ori_files:
    ori_file_path = ori_path + file
    f = ISF_FILE()
    f.load_from_path(ori_file_path)
    for item in f.body:
        data = item.data
        matches = re.findall(rb"(?<=\x00\x2b[\x00-\xff][\x00-\xff])[\x00-\xff]*?(?=\xff)", data)
        for m in matches:
            allpatten.add(m)

for i in allpatten:
    out.write(''.join(f'\\x{b:02x}' for b in i) + "\n")