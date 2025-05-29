from Lib import *

oriPath = "ori\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

pattern = re.compile(rb"\x3c\x6e\x61\x6d\x65\x3e(?P<name>[\x00-\xff]*?)\x3c\x6e\x61\x6d\x65\x3b\x3e|\x3c\x6d\x73\x67\x3e(?P<msg>[\x00-\xff]*?)\x3c\x6d\x73\x67\x3b\x3e")
info = StatusInfo()

for filename in os.listdir(oriPath):
    print(filename)
    data = open_file_b(os.path.join(oriPath, filename))
    matches = pattern.finditer(data)
    out = OriJsonOutput()
    for match in matches:
        if match.group("name"):
            # print(match.group("name"))
            name = match.group("name").decode("932")
            out.add_name(name)
        if match.group("msg"):
            # print(match.group("msg"))
            msg = match.group("msg")
            msg_processed = msg
            msg_processed = msg_processed.replace(b"\x00\x5B\x0C\x00\x00\x00\x0E\x00\x00\x00\x00\x00\x00\x00", b"")
            msg_processed = re.sub(rb"\x00\x5B\x20\x00\x00\x00\x1E[\x00-\x80\xe0-\xff]{27}", b"", msg_processed)
            out.add_text(msg_processed.decode("932"))
            out.dic["ori"] = msg.hex()
            out.append_dict()
    info.update(out)
    out.save_json(os.path.join(outPath, filename + ".json"))

info.output(isSaveName=0)