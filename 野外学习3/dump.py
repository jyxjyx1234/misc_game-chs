from SNR_FILE import *
import os

ori_path = "snr\\"
out_path = "ori_jsons\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(ori_path)

textcount = 0
for file in fileslist:
    f = SNR_FILE(ori_path + file)
    out = f.dump_text()
    out.save_json(out_path + file + ".json")
    textcount += out.textcount

print(textcount)