from KSFile import *
import os

ori_path = "scenario\\"
out_path = "gt_input\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(ori_path)

textcount = 0
namedict = {}
for file in fileslist:
    if file.endswith("replay.ks") or file.endswith("replay2.ks"):
        continue
    f = KS_FILE(ori_path + file)
    out = f.dump_text()
    out.save_json(out_path + file + ".json")
    namedict.update(out.get_names())
    textcount += out.textcount

print(textcount)
#save_json("namedict.json",namedict)