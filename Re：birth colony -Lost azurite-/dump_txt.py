from Lib import *

tips = []
arcs = []
tips_dict = {}
for file in os.listdir("txt"):
    if file.startswith("arc_txt"):
        _ = {}
        _["filename"] = file
        _["message"] = open("txt\\" + file, "r", encoding="utf-16").read()
        _["ori"] = _["message"]
        arcs.append(_)
    elif file.startswith("tips_txt"):
        _ = {}
        _["filename"] = file[9:-4]
        _["message"] = open("txt\\" + file, "r", encoding="utf-16").read()
        _["ori"] = _["message"]
        tips.append(_)
        tips_dict[_["filename"]] = _["filename"]

output_data = open_json("autodict.json")
transdict = output_data["dict"]

for tip in tips_dict:
    if tip in transdict:
        tips_dict[tip] = transdict[tip]["chinese"]
    else:
        print(f"Missing tip translation: {tip}")

save_json("tips.json", tips)
save_json("tips_dict.json", tips_dict)
save_json("arcs.json", arcs)