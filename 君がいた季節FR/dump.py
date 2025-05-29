from Lib import *

oriPath = "ori\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

pattern = re.compile(rb"\x3c\x6e\x61\x6d\x65\x3e(?P<name>[\x00-\xff]*?)\x3c\x6e\x61\x6d\x65\x3b\x3e|\x3c\x6d\x73\x67\x3e(?P<msg>[\x00-\xff]*?)\x3c\x6d\x73\x67\x3b\x3e")
info = StatusInfo()
msgset = set()

for filename in ["output.txt", "output1.txt", "output3.txt"]:
    print(filename)
    data = open_file_b(os.path.join(oriPath, filename))
    matches = pattern.finditer(data)
    out = OriJsonOutput()
    for match in matches:
        if match.group("name"):
            name = match.group("name").decode("932")
            out.add_name(name)
        if match.group("msg"):
            msg = match.group("msg")
            if msg in msgset:
                continue
            msgset.add(msg)
            msg_processed = msg
            # msg_processed = msg_processed.replace(b"\x81\x41\x03", b"\x81\x41").replace(b"\x81\x63\x03", b"\x81\x63").replace(b"\x81\x42\x03", b"\x81\x42")
            msg_processed = msg_processed.replace(b"\x03", b"").replace(b"\x0a", b"")
            if msg_processed.endswith(b"\x01"):
                msg_processed = msg_processed[:-1]
            elif msg_processed.endswith(b"\x05"):
                continue
            else:
                print(f"Warning: {msg_processed.decode("932")}")
            msg_processed = re.sub(rb"", b"", msg_processed)
            msg_processed = msg_processed.decode("932")
            if "【" in msg_processed and msg_processed.count("】") == 1 and msg_processed.startswith("【"):
                name, msg_processed = msg_processed.split("】", 1)
                name = name[1:]
                out.add_name(name)
            out.add_text(msg_processed)
            out.dic["ori"] = msg.hex()
            out.append_dict()
    info.update(out)
    out.save_json(os.path.join(outPath, filename + ".json"))

info.output(isSaveName=1)