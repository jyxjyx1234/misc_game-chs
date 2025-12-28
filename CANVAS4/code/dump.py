from Lib import *
from MESFlie import *

ori = "MES"
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

info = StatusInfo()

for file in os.listdir(ori):
    mes = MESFlie(os.path.join(ori, file))
    mes.parse()
    

    out = OriJsonOutput()

    nameflag = False
    selflag = False
    for idx, op in enumerate(mes.ops):
        if op["op"] == 0x05:
            out.append_dict()
        for cmd in op['data']:
            if op["op"] == 0xe8 and cmd["value"] == 0x3c:
                nameflag = True
            elif op["op"] == 0xe8 and cmd["value"] == 0x3e:
                selflag = True
            elif cmd["type"] == "s" and nameflag:
                if cmd["value"].strip().strip("\n") == "":
                    nameflag = False
                    continue
                if file.lower().startswith("_"):
                    out.add_text(cmd["value"])
                    out.add_text_idx(idx)
                    out.append_dict()
                    continue
                out.add_name(cmd["value"])
                try:
                    out.add_name_idx(idx)
                except:
                    print(f"Warning: name_idx already exists in file {file} at {idx}")
                    exit(1)
                nameflag = False
            elif cmd["type"] == "s" and selflag:
                out.append_dict()
                out.add_text(cmd["value"])
                out.add_text_idx(idx)
                out.append_dict()
                selflag = False
            elif op["op"] == 0x11:
                out.add_text(cmd["value"].replace("／", ""))
                out.add_text_idx(idx)
    out.save_json(os.path.join(outpath, f'{file}.json'))
    info.update(out)

info.output(0)