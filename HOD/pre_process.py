from Lib import *

ori = "SEEN\\orig\\"
out = "gt_input\\"
os.makedirs(out, exist_ok=True)
names = {}
textcount = 0
for i in os.listdir(ori):
    outdata = OriJsonOutput()
    oridata = open_json(os.path.join(ori, i))
    for data in oridata:
        if "name" in data:
            outdata.add_name(data["name"])
        outdata.add_text(data["message"])
        if "name" in outdata.dic and outdata.dic["name"] != "" and outdata.dic["message"].startswith("「"):
            if data["message"].endswith("」"):
                outdata.append_dict()
        else:
            outdata.append_dict()
    outdata.save_json(os.path.join(out, i))
    names.update(outdata.get_names())
    textcount += outdata.textcount
print(textcount)
save_json("namedict.json", names)