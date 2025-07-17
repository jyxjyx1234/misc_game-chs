from Lib import *
from HanziReplacer import HanziReplacer
from DAT_FILE import *


oriPath = "dump"
transPath = "gt_output"
outPath = "release"
os.makedirs(outPath, exist_ok=True)
namedict = open_json("namedict.json")


output_encoding = "936"
if output_encoding == "932":
    h = HanziReplacer()
    h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])

pattern = re.compile(rb'(?<=CPL\x28)(?P<name>[\x00-\xff]*?)(?=\x29)|(?<=CP\x28)(?P<text>[\x00-\x27\x30-\xff]*?)(?=\x29)|(?<=SEP\x28)(?P<sel>[\x00-\xff]*?)(?=\x29)|(?<=ST\x28)(?P<text2>[\x00-\xff]*?)(?=\x29)')

def check_halfwidth(c:str):
    c = c.replace("\r", "").replace("\n", "")
    if output_encoding == "936":
        c = c.replace("・", "·").replace("\u266a", "")
    if len(c) * 2 != len(c.encode(output_encoding)):
        return False
    return True

def preprocess(text:str, isKillHalfwidth=True):
    if isKillHalfwidth:
        text = replace_halfwidth_with_fullwidth(text)
    if output_encoding == "936":
        text = text.replace("・", "·").replace("\u266a", "")
    
    text = processQuote(text)
    text = text.replace("...", "…").replace("..", "…").replace(".", "．").replace("\n", "")

    if output_encoding == "932":
        text = h.hanzitihuan(text)
    if isKillHalfwidth and not check_halfwidth(text):
        print("Halfwidth character detected: " + text)
        raise Exception("Halfwidth character detected: " + text)
    linewidth = 22
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
            name = name.split(",")
            if name[-1] != "\u3000":
                name[-1] = preprocess(namedict[name[-1]])
            name = ",".join(name)
            return name.encode(output_encoding)
            
        elif m.group("sel"):
            sel = m.group("sel").decode("932")
            sels = sel.split(",")
            num_of_sel = int(sels[0])
            for i in range(num_of_sel):
                transtext = transdata.pop(0)["message"]
                transtext = preprocess(transtext)
                sels[i + 1] = transtext
            return ",".join(sels).encode(output_encoding)
        
        elif m.group("text"):
            ori = m.group("text").decode("932")
            transtext = transdata.pop(0)["message"]
            if not check_halfwidth(ori):
                print("Halfwidth in ori: " + ori)
                transtext = preprocess(transtext, isKillHalfwidth=False)
            else:
                transtext = preprocess(transtext)
            transtext = re.match(r"[\r\n]*", ori).group(0) + transtext
            transtext = transtext + re.search(r"[\r\n]*$", ori).group(0)  
            return transtext.encode(output_encoding)
        
        elif m.group("text2"):
            ori = m.group("text2").decode("932")
            transtext = transdata.pop(0)["message"]
            if not check_halfwidth(ori):
                print("Halfwidth in ori: " + ori)
                transtext = preprocess(transtext, isKillHalfwidth=False)
            else:
                transtext = preprocess(transtext)
            return transtext.encode(output_encoding)

        else:
            return m.group(0)
        
    lines = pattern.sub(trans, lines)
    if len(transdata) != 0:
        print("Translation data not enough: " + file)
    save_file_b(os.path.join(outPath, file.replace(".txt", "")), lines)#, enc = b"NECO"
    f = DAT_FILE(open_file_b("script.dat"))
    f.rebuild(os.path.join(outPath, "script.chs"), new_content=lines)
    # f.rebuild(os.path.join(outPath, "script.chs"), new_content=open_file_b("dump\\script_.txt"))

if output_encoding == "932":
    h.gen_replace("release\\data2.bin")
# h.gen_replace("release\\trans\\data2.bin")