from SNR_FILE import *
import os

ori_path = "scenario\\"
out_path = "ori_jsons\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(ori_path)

textcount = 0
namedict = {}
for file in fileslist:
    f = KS_FILE(ori_path + file)
    out = f.dump_text()
    out.save_json(out_path + file + ".json")
    namedict.update(out.get_names())
    textcount += out.textcount

print(textcount)
save_json("namedict.json",namedict)