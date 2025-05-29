from KSFile import *
import os

ori_path = "scenario\\"
out_path = "gt_input\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(ori_path)

textcount = 0
namedict = {}
for dirpath, dirnames, filenames in os.walk(ori_path):
    for file in filenames:
        if file.endswith(".ks") or file.endswith(".ks2"):
            f = KS_FILE(os.path.join(dirpath, file))
            out = f.dump_text()
            out.save_json(out_path + file + ".json")
            namedict.update(out.get_names())
            textcount += out.textcount

print(textcount)
#save_json("namedict.json",namedict)