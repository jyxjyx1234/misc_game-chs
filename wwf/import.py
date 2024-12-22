from Lib import *
import zlib
from HanziReplacer import *

ori_path = "PMX\\"
trans_path = "gt_output\\"
out_path = "release\\PMX\\"
os.makedirs(out_path, exist_ok=True)
files = os.listdir(ori_path)
namedict = open_json("namedict.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(trans_path, [namedict])
#h.ChangeFont("wenquanyi.ttf", "release\\wwf_font.ttf", "wwf_font")

for file in files:
    out = []
    try:
        trans = open_json(trans_path + file + ".json")
    except:
        trans = []
        continue
    ori = open(ori_path + file, "r", encoding="sjis").read()

    def process(match):
        text = match.group(0)
        t = trans.pop(0)
        transtext = h.hanzitihuan(t["message"])
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = processQuote(transtext)
        if "name" in t:
            name = t["name"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            if len(name) == 1:
                name = "\u3000" + name + "\u3000"
            elif len(name) == 2:
                name = name[0] + "\u3000" + name[1]
            transtext = f"[{name}]\\n" + transtext
        
        for m in re.finditer(r"\\i\(.*?\)", text):
            if m.start() == 0:
                transtext = m.group(0) + transtext
            elif m.end() == len(text):
                transtext = transtext + m.group(0)
            elif text[m.start() - 3:m.start()] == "]\\n":
                idx = transtext.find("\\n") + 2
                transtext = transtext[:idx] + m.group(0) + transtext[idx:]
            else:
                transtext = transtext[:m.start()] + m.group(0) + transtext[m.start():]
                #print(text)
                #raise Exception("Unknown \\i position")
        return transtext

    ori = re.sub(r"(?<=PutText 0,,).*", process, ori)
    ori = ori.encode("sjis")
    save_file_b("test\\" + file, ori)
    ori = zlib.compress(ori)
    ori = bytes([x ^ 0x21 for x in ori])
    save_file_b(out_path + file, ori)

global_pmx = open_file_b("Global.Pmx")
global_pmx = zlib.compress(global_pmx)
global_pmx = bytes([x ^ 0x21 for x in global_pmx])
save_file_b(out_path + "Global.Pmx", global_pmx)