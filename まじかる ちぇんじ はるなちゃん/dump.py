from Lib import *

out = OriJsonOutput()
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

with open("nscript.dat.dec", "r", encoding="932") as f:
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
    if l.startswith("*"):
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
    if re.match(r"[\*;\-=0-9a-zA-Z_]", l):
        out.append_dict()
        if l.startswith("csel \""):
            opts = l[5:].split(",")
            for opt_idx in range(len(opts)):
                if opt_idx % 2 != 0:
                    continue
                opt_out.add_text(opts[opt_idx][1:-1])
                opt_out.dic["pos"] = opt_out.dic.get("pos", []) + [i]
                opt_out.dic["opt_pos"] = opt_out.dic.get("opt_pos", []) + [opt_idx]
                opt_out.append_dict()
        continue
    else:
        msg = l
        if l.startswith("["):
            name, msg = l.split("]", 1)
            name = name[2:-1]
            out.add_name(name)
        out.add_text(msg)
        out.dic["pos"] = out.dic.get("pos", []) + [i]
        if out.dic["message"].endswith("\\"):
            out.dic["message"] = out.dic["message"][:-1]
            out.append_dict()

out.save_json(os.path.join(outpath, filename + ".json"))
namedict.update(out.get_names())
textcount += out.textcount

# opt_out.save_json(os.path.join(outpath, "options.json"))

# save_json("namedict.json", namedict)
print(f"Total text count: {textcount}")