from Lib import *

cn_path = "json_cn\\"
jp_path = "json_jp\\"
new_jp_path = "gt_input\\"
new_cn_path = "gt_output\\"
os.makedirs(new_cn_path, exist_ok=True)

notfound_trans = open_json("notfound_trans.json")
notfound = {}
for file in os.listdir(cn_path):
    ori_cn_data = open_json(cn_path + file)
    ori_jp_data = open_json(jp_path + file)
    new_jp_data = open_json(new_jp_path + file.replace(".json", ".txt.json"))

    # transdict.update(notfound_trans)
    transdict = notfound_trans.copy()
    for i, ori_cn_t in enumerate(ori_cn_data):
        ori_jp_t = ori_jp_data[i]
        jp = ori_jp_t["message"]
        cn = ori_cn_t["message"]
        jp = re.sub(r"\[([^\]]*?)'([^\]]*?)\]", r"\1", jp)
        cn = re.sub(r"\[([^\]]*?)'([^\]]*?)\]", r"\1", cn)
        jp = re.sub(r"【.*?】(.*?)", r"\1", jp)
        cn = re.sub(r"【.*?】(.*?)", r"\1", cn)
        transdict[jp] = cn
    
    for data in new_jp_data:
        if data["message"] in transdict:
            data["message"] = transdict[data["message"]]
        else:
            notfound[data["message"]] = data["message"]
    save_json(new_cn_path + file.replace(".json", ".txt.json"), new_jp_data)

save_json("notfound.json", notfound)