from Lib import *

oriPath = "Mes"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

def xor(data, key):
    return bytes([b ^ key for i, b in enumerate(data)])

info = StatusInfo()

isForceName = True
if isForceName:
    namedict = open_json("namedict.json")

for file in os.listdir(oriPath):
    data = open_file_b(os.path.join(oriPath, file))
    out = OriJsonOutput()
    matches = re.finditer(rb"(?<=\x00\x30)(?P<msg>[\x01-\xff]{2,})(?=\x00)|(?<=\x00\x00\x00\x01)(?P<name>[\x01-\xff]{2,})(?=\x00)|(?<=\xA0\x30)(?P<msg2>[\x01-\xff]{2,})(?=\x00)", data)
    for match in matches:
        if match.group("msg"):
            try:
                text = xor(match.group("msg"), 0xff).decode("932")
                if not re.search(r"[0-9a-zA-Z_]", text):
                    out.add_text(xor(match.group("msg"), 0xff).decode("932"))
                    out.append_dict()
            except UnicodeDecodeError:
                print(f"UnicodeDecodeError in file {file} for message: {match.group('msg').hex()}")
        elif match.group("msg2"):
            try:
                if not re.search(r"[0-9a-zA-Z_]", text):
                    out.add_text(xor(match.group("msg2"), 0xff).decode("932"))
                # print(xor(match.group("msg2"), 0xff).decode("932"))
                out.append_dict()
            except UnicodeDecodeError:
                print(f"UnicodeDecodeError in file {file} for message: {match.group('msg').hex()}")
        elif match.group("name"):
            try:
                if isForceName:
                    name = xor(match.group("name"), 0xff).decode("932")
                    if name in namedict:
                        out.add_name(name)
                    else:
                        out.add_text(name)
                        out.append_dict()
                        print(f"Name not found in namedict: {name}")
                else:
                    out.add_name(xor(match.group("name"), 0xff).decode("932"))
            except UnicodeDecodeError:
                print(f"UnicodeDecodeError in file {file} for name: {match.group('name').hex()}")
    out.save_json(os.path.join(outPath, file + ".json"))
    info.update(out)
info.output(0)