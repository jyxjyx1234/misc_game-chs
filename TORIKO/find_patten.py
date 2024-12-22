from Lib import *
import os

ori_path = "SNR_DEC\\"
ori_files = os.listdir(ori_path)
allpatten = set()
out = open("pattens.txt","w",encoding="utf8")

for file in ori_files:
    ori_file_path = ori_path + file
    f = open_file_b(ori_file_path)
    matches = re.findall(rb"(?<=[\x01-\x02][\x00-\xff][\x00-\x02])[\x00-\xFF][\x00-\xFF]\xFF", f)
    for m in matches:
        allpatten.add(m)

for i in allpatten:
    out.write(''.join(f'\\x{b:02x}' for b in i) + "\n")