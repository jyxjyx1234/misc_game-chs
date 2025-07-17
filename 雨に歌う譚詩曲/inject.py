from Lib import *
from HanziReplacer import HanziReplacer


oriPath = "dump"
transPath = "gt_output"
outPath = "release\\trans"
os.makedirs(outPath, exist_ok=True)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])

pattern = re.compile(rb'(?<=\x23)(?P<name>[\x00-\xff]*?)(?=[\x0d\x0a])|(?P<textidx>\x26[\x30-\x39]*\x22)(?P<text>[\x00-\xff]*?)(?=\x22)|(?<=[\x0d\x0a]\x33\x39\x28)(?P<sel>[\x00-\xff]*?)(?=\x29)')

def check_halfwidth(c:str):
    if len(c) * 2 != len(c.encode("932")):
        return False
    return True

def preprocess(text:str):
    text = replace_halfwidth_with_fullwidth(text)
    text = processQuote(text)
    text = text.replace("...", "…").replace("..", "…").replace(".", "．").replace("\n", "")
    text = h.hanzitihuan(text)
    if not check_halfwidth(text):
        print("Halfwidth character detected: " + text)
        # raise Exception("Halfwidth character detected: " + text)
    linewidth = 20
    lines = []
    for i in range(0, len(text), linewidth):
        lines.append(text[i:i+linewidth])
    text = "\r\n".join(lines)
    return text

files = os.listdir(oriPath)
for file in files:
    try:
        transdata = open_json(os.path.join(transPath, file.replace(".txt", ".json")))
    except:
        continue
    lines = open(os.path.join(oriPath, file), "rb").read()
    def trans(m:re.match):
        if m.group("name"):
            name = m.group("name").decode("932")
            if "=" in name:
                names = name.split("=")
                names[0] = namedict[names[0]] if names[0] != "\u3000" else "\u3000"
                names[0] = preprocess(names[0])
                name = "=".join(names)
                return name.encode("932")
            else:
                name = namedict[name] if name != "\u3000" else "\u3000"
                name = preprocess(name)
                return name.encode("932")
            
        elif m.group("sel"):
            sel = m.group("sel").decode("932")
            sels = sel.split(",")
            num_of_sel = int(sels[-1])
            for i in range(num_of_sel):
                transtext = transdata.pop(0)["message"]
                transtext = preprocess(transtext)
                sels[i + 1] = transtext
            return ",".join(sels).encode("932")
        
        elif m.group("text"):
            transtext = transdata.pop(0)["message"]
            transtext = preprocess(transtext)
            return m.group("textidx") + transtext.encode("932")
        
        else:
            return m.group(0)
        
    lines = pattern.sub(trans, lines)
    if len(transdata) != 0:
        print("Translation data not enough: " + file)
    save_file_b(os.path.join(outPath, file.replace(".txt", "")), lines)#, enc = b"NECO"

h.gen_replace("release\\trans\\data2.bin")