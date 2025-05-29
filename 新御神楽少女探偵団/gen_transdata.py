from Lib import *
from HanziReplacer import *

oriPath = "gt_output\\"
outPath = "release\\transdata\\data1.bin"
os.makedirs("release\\transdata", exist_ok=True)
h = HanziReplacer()

namedict = open_json("namedict.json")
h.ReadTransAndGetHanzidictFromFolder(oriPath, [namedict])
h.gen_replace("release\\transdata\\data2.bin")


res = {}
for filename in os.listdir(oriPath):
    datas = open_json(os.path.join(oriPath, filename))
    for data in datas:
        ori = data["ori"]
        ori = bytes.fromhex(ori)
        trans = data["message"]
        trans = h.hanzitihuan(trans)
        trans = replace_halfwidth_with_fullwidth(trans)
        trans = processQuote(trans)
        trans = trans.replace('......', "……").replace('.....', "……").replace('....', "……").replace('...', '…').replace('..', '…').replace('.', '。')
        for char in trans:
            if len(char.encode()) == 1 and char != "\n":
                raise ValueError(f"Character {char} in translation is not supported in GBK encoding.")
        # trans_lines = []
        # while True:
        #     trans_lines.append(trans[:320000].encode("932"))
        #     trans = trans[320000:]
        #     if not trans:
        #         break
        # trans = b"\x0a".join(trans_lines)
        trans = trans.encode("932")

        m1 = re.match(rb"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00[\x00-\xff]\x00([\x81-\xfe][\x01-\xff]*?)\x00", ori)
        if m1:
            # print(trans)
            trans = re.sub(rb"(?<=\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00[\x00-\xff]\x00)[\x81-\xfe][\x01-\xff]*?(?=\x00)", lambda m :trans, ori)
        else:
            m2 = re.match(rb"\x5C\x00\x00\x00\x0D\x00\x00\x00\x10\x04\x00\x00([\x81-\xfe][\x20-\xff]*?)\x00", ori)
            # print(trans)
            if m2:
                trans = re.sub(rb"(?<=\x5C\x00\x00\x00\x0D\x00\x00\x00\x10\x04\x00\x00)([\x81-\xfe][\x20-\xff]*?)(?=\x00)", lambda m :trans, ori)
            else:
                raise ValueError(f"Unknown ori format: {ori.hex()}")
        res[ori] = trans

        if "nameori" in data:
            nameori = data["nameori"]
            nameori = bytes.fromhex(nameori)
            name = data["name"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            # print(name)
            name = name.encode("932")
            name = b"\x1A\x00\x00\x00\x7B\x01\x00\x00\x10\x03\x00\x00" + name + b"\x00"
            res[nameori] = name

with open(outPath, "wb") as f:
    for k in res:
        f.write(k)
        f.write(b"[=]")
        f.write(res[k])
        f.write(b"[n]")

os.system("cd release && pack.bat")
