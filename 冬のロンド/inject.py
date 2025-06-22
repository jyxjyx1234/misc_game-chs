from Lib import *
from HanziReplacer import *

oriPath = "rld\\"
transPath = "gt_output\\"
outPath = "release\\rld\\"
os.makedirs(outPath, exist_ok=True)
namedict = open_json("namedict.json")
pattern = re.compile(rb"(?<=\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\x00\x00\x00\x00\x96\x00\x00\x00)(?P<name>[\x01-\xFF]*?)\x00(?P<msg>[\x01-\xFF]*?)(?=\x00)|(?<=\x15\x00\x00\x21)(?P<opt>[\x01-\xFF]*?)(?=\x00)")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namedict])
h.gen_replace("release\\rld\\data.bin", enc = b"ALyCE")

for file in os.listdir(oriPath):
    try:
        transdata = open_json(transPath + file + ".json")
    except FileNotFoundError:
        print(f"Translation data for {file} not found, skipping.")
        continue

    print(f"Processing {file}...")
    def process(match:re.Match):
        if match.group("opt"):
            opts = match.group("opt")
            opts = opts.split(b"\x09")
            for i, opt in enumerate(opts):
                if i < 14:
                    continue
                if opt.decode("932") == "*":
                    break
                td = transdata.pop(0)
                transtext = h.hanzitihuan(td["message"])
                print(transtext)
                opts[i] = transtext.encode("932")
            return b"\x09".join(opts)
        else:
            oriname = match.group("name")
            flag = b""
            if oriname.startswith(b"\xff\xff\xff\xff"):
                oriname = oriname.replace(b"\xff\xff\xff\xff", b"")
                flag = b"\xff\xff\xff\xff"
            orinamet = oriname.decode("932")
            if orinamet == "記述" or not orinamet:
                newname = match.group("name")
            else:
                name = h.hanzitihuan(namedict[orinamet])
                name = name.encode("932")
                newname = flag + name
            if match.group("msg"):
                td = transdata.pop(0)
                transtext = h.hanzitihuan(td["message"])
                transtext = transtext.encode("932")
                return newname + b"\x00" + transtext
        return match.group(0)
    
    data = open_file_b(oriPath + file)
    newdata = re.sub(pattern, process, data)
    save_file_b(outPath + file, newdata)