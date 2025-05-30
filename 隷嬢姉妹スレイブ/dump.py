from Lib import *

out = OriJsonOutput()
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

with open("scenario.ks", "r", encoding="utf16") as f:
    lines = f.readlines()

namedict = {}
textcount = 0

opt_out = OriJsonOutput()

for i in range(len(lines)):
    l = lines[i]
    l = l.strip("\n").strip("\t").strip()
    if not l:
        out.append_dict()
        continue
    if l.startswith("*") and len(l) > 3:
        out.append_dict()
        if len(out.outlist) != 0:   
            try:
                print(f"Saving {filename}.json")
                out.save_json(os.path.join(outpath, filename + ".json"))
            except Exception as e:
                pass
        namedict.update(out.get_names())
        textcount += out.textcount
        out = OriJsonOutput()
        filename = l[1:]
        continue
    if l.startswith("@name chara"):
        name = l[13:-1]
        if name != "地":
            out.add_name(name)
    elif re.match(r"[#@\*;\-=0-9a-zA-Z_\[]", l):
        out.append_dict()
        continue
    else:
        msg = l
        out.add_text(msg)
        out.dic["pos"] = out.dic.get("pos", []) + [i]
        out.append_dict()

out.save_json(os.path.join(outpath, filename + ".json"))
namedict.update(out.get_names())
textcount += out.textcount

# opt_out.save_json(os.path.join(outpath, "options.json"))

# save_json("namedict.json", namedict)
print(f"Total text count: {textcount}")