from Lib import *

# \x00\x02\x06\xff 分行
# \x00\x02\x03\x00
# \x00\x02\x00
patten = re.compile(rb"[\x01-\x02][\x00-\xff][\x00-\x01][\x04\x05\x0d][\x00-\x07]\xff|\x01\x36\x00\xFF")

oriPath = "SNR_DEC\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)
oriFiles = os.listdir(oriPath)

for f in oriFiles:
    out = OriJsonOutput()
    oriFilePath = oriPath + f
    data = open_file_b(oriFilePath)
    matches = patten.finditer(data)
    for i, m in enumerate(matches):
        start = m.start()
        end = m.end()
        lenth = from_bytes(m.group(0)[1:3])
        content = data[end : start + 3 + lenth]
        content = content.split(b"\x00")
        for line in content:
            if line == b"":
                continue
            if line[0:3] == b"\x02\x06\xff":
                line = line[3:]
            if line[0:7] == b"\x08\x01\x02\x03\x07\x01\xFF":
                line = line[7:]
            if line == b"\x02\x03\x0f":
                continue
            if line == b"\x02\x03":
                continue
            if line == b"\x02\x05":
                continue
            if line == b"\x02\x03\x05":
                continue
            if line == b"\x02\x05\x0f":
                continue
            if line == b"\x02\x0f\x03":
                continue
            if line == b"\x02":
                continue
            try:
                l = line.decode("shift-jis")
            except:
                print(m.group(0))
                print(content)
                exit()
            out.dic["message"] = l
            out.dic["ori"] = l
            out.append_dict()
    out.save_json(outPath + f + ".json")