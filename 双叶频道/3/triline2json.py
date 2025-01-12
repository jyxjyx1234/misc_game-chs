from Lib import *
import os, re

ori_folder = "triline_text_ori\\"
out_path = "gt_input\\"
os.makedirs(out_path,exist_ok=True)
os.makedirs("json_trans\\",exist_ok=True)

filelist = os.listdir(ori_folder)

def preprocess(text):
    text = re.sub("＜(.*?)／.*?＞", lambda x : x.group(1), text)
    text = re.sub("／.*?＞", "", text)
    text = re.sub("／.*", "", text)
    text = text.replace("＜","")
    text = text.replace("＞","")
    text = text.replace("｢","「")
    return text

all_counts = 0
for filename in filelist:
    textlist:list[str] = []
    outlist = []
    dic = {}

    ori_filep = ori_folder + filename
    out_filep = out_path + filename.replace(".ori.txt", ".json")

    ori_file = open(ori_filep, "r", encoding="utf8").readlines()
    # 预读取
    for i in range(len(ori_file)):
        if len(ori_file[i]) > 4 and ori_file[i][0:4] == "ORI=":
            textlist.append(ori_file[i][4:-1])

    namedict = open_json("namelist.json")
    out = OriJsonOutput()
    for l in textlist:
        if l in namedict:
            out.add_name(l)
            continue

        if re.search(r"[「『（]", l) and not l.startswith("「") and not l.startswith("『") and not l.startswith("（"):
            try:
                if "「" in l:
                    name,message = l.split("「",1)
                    if name not in namedict:
                        print("Error: " + name)
                        raise Exception
                    out.add_name(name)
                    out.add_text(preprocess("「" + message))
                    out.append_dict()
                    continue
            except:
                pass
            try:
                if "『" in l:
                    name,message = l.split("『",1)
                    if name not in namedict:
                        print("Error: " + name)
                        raise Exception
                    out.add_name(name)
                    out.add_text(preprocess("『" + message))
                    out.append_dict()
                    continue
            except:
                pass
            try:
                if "（" in l:
                    name,message = l.split("（",1)
                    if name not in namedict:
                        print("Error: " + name)
                        raise Exception
                    out.add_name(name)
                    out.add_text(preprocess("（" + message))
                    out.append_dict()
                    continue
            except:
                pass
        
        out.add_text(preprocess(l))
        out.append_dict()
    out.save_json(out_filep)
    all_counts += out.textcount
print("All counts: " + str(all_counts))
