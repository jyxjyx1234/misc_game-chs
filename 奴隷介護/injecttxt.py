from Lib import *
from dumpjson import *
from HanziReplacer import *

oriPath = "DEC"
transPath = "gt_output"
outPath = "DEC_trans"
os.makedirs(outPath, exist_ok=True)
os.makedirs("release\\misc", exist_ok=True)

namedict = open_json("namedict.json")
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
h.gen_replace("release\\misc\\data2.bin")
save_json("allchar.json", h.all_chars_used)

def encode_trans_text(text):
    text = h.hanzitihuan(text)
    text = replace_halfwidth_with_fullwidth(text)
    text = text.replace("......", "……").replace(".....", "……").replace("...", "……").replace("..", "……").replace(".", "。").replace("……", "…").replace("……", "…")
    text = processQuote(text)
    res = [text]
    out = []
    # temp = ""
    # for i, char in enumerate(text):
        # if char not in ["…", "[", "]"]:
            # temp += char
        # elif char == "[":
        #     res.append(temp)
        #     temp = "["
        # elif char == "]":
        #     temp += "]"
        #     res.append(temp)
        #     temp = ""
        # elif char == "…":
        #     if temp:
        #         res.append(temp)
        #         temp = ""
        #     res.append("…")
        # if i == len(text) - 1 and temp:
        #     res.append(temp)
    for t in res:
        out.append(f'''#1-TEXT
[
    "{t}"
]
''')
    return out

for filename in os.listdir(oriPath):
    try:
        transdatas = open_json(os.path.join(transPath, filename.replace(".txt", ".json")))
    except:
        continue
    with open(os.path.join(oriPath, filename), "r", encoding="932") as f:
        lines = f.readlines()
    mescontents = split_mestxt(lines)
    for transdata in transdatas:
        idxs = transdata["idx"]
        msg = transdata["message"]
        if "name" in transdata:
            nameidx = idxs.pop(0)
            name = transdata["name"]
            new_name = namedict[name]
            new_name = encode_trans_text(new_name)
            new_name = "".join(new_name)
            mescontents[nameidx].content_text = new_name
        transtext = encode_trans_text(msg)
        mescontents[idxs[0]].content_text = "".join(transtext)
        for idx in idxs[1:]:
            mescontents[idx].content_text = ""
    with open(os.path.join(outPath, filename), "w", encoding="932") as f:
        for mescontent in mescontents:
            f.write(mescontent.content_text)