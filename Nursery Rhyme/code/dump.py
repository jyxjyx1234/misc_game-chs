from BGIFlie import *

oripath = "scr"
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

info = StatusInfo()

for file in os.listdir(oripath):
    print("Processing ", file)
    bgi = BGIFlie(os.path.join(oripath, file))
    out = OriJsonOutput()
    bgi.parse()
    ops = bgi.ops
    for op in ops:
        for cmd in op['data']:
            if cmd['type'] == 't':
                out.add_text(cmd['value'])
                out.append_dict()
            if cmd['type'] == 'n':
                out.add_name(cmd['value'])
            if cmd['type'] == 'p':
                out.add_text(cmd['value'])
                out.append_dict()
            if cmd['type'] == 'L':
                for item in cmd['value']:
                    out.add_text(item)
                    out.append_dict()
    out.save_json(os.path.join(outpath, file + ".json"))
    info.update(out)

info.output(1)
                
