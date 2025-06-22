from Lib import *
import logging

# logging.basicConfig(level=logging.INFO, format="", filename="dump.log", filemode="w")

oriPath = "rld\\"
outPath = "gt_input\\"

os.makedirs(outPath, exist_ok=True)
pattern = re.compile(rb"(?<=\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\x00\x00\x00\x00\x96\x00\x00\x00)(?P<name>[\x01-\xFF]*?)\x00(?P<msg>[\x01-\xFF]*?)(?=\x00)|(?<=\x15\x00\x00\x21)(?P<opt>[\x01-\xFF]*?)(?=\x00)")
info = StatusInfo()

def custom_decode(data, encoding="932"):
    return data.decode(encoding)

for file in os.listdir(oriPath):
    data = open_file_b(oriPath + file)
    matches = pattern.finditer(data)
    out = OriJsonOutput()
    for match in matches:
        if match.group("opt"):
            opts = match.group("opt")
            opts = opts.split(b"\x09")
            for i, opt in enumerate(opts):
                if i < 14:
                    continue
                opt = custom_decode(opt)
                if opt == "*":
                    break
                out.add_text(opt)
                out.append_dict()
            #     logging.info(f"Option {i}: {custom_decode(opt)}")
            # logging.info(f"")
            # out.add_text(msg)
            # out.append_dict()
        else:
            name = custom_decode(match.group("name").replace(b"\xff\xff\xff\xff", b""))
            msg = custom_decode(match.group("msg"))
            msg = re.sub("《.*?》", "", msg)
            if name != "記述" and name:
                out.add_name(name)
            out.add_text(msg)
            out.append_dict()
    out.save_json(outPath + file + ".json")
    info.update(out)
info.output(0)