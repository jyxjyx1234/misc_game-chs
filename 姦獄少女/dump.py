from Lib import *

oripath = "scenario\\"
outpath = "gt_input"
os.makedirs(outpath, exist_ok=True)

info = StatusInfo()

namedict = {}
textcount = 0

defaultName = {
    "主人公名前" : "隆司",
    "ヒロイン名前" : "悠美",
    "ヒロイン苗字" : "铃森",
}

pattern = re.compile(r"\[＠a(?P<name2>[^a-z\[\]]*?)\](?P<msg2>.*?)\[[＠w]|\[＠a(?P<name1>[^a-z\[\]]*?)\](?P<msg1>.*?)[\n]")

nameInTextPattern = re.compile(r'\[emb exp="f.(?P<name>[^a-z\[\]]*?)"\]')
def processNameToDefault(m):
    name = m.group("name")
    return defaultName[name]

rubyPattern = re.compile(r"\[ruby text=\".*?\"\]")
chPattern = re.compile(r"\[ch text=\"(.*?)\"\]")

for file in os.listdir(oripath):
    out = OriJsonOutput()
    text = open(oripath + file, "r", encoding="utf16").read()
    for match in pattern.finditer(text):
        name = match.group("name1") if match.group("name1") else match.group("name2") 
        msg = match.group("msg1") if match.group("msg1") else match.group("msg2")
        if name == "主人公":
            name = defaultName["主人公名前"]
        elif name == "ヒロイン":
            name = defaultName["ヒロイン苗字"]
        elif name == "その他":
            name = ""
        elif name == "文章":
            name = ""
        else:
            raise Exception(f"Unknown name: {name}")
        if name:
            out.add_name(name)
        msg = nameInTextPattern.sub(processNameToDefault, msg)
        msg = rubyPattern.sub("", msg)
        msg = chPattern.sub(r"\1", msg)
        out.add_text(msg)
        out.append_dict()
        textcount += 1
    out.save_json(outpath + "\\" + file + ".json")
    info.update(out)
info.output(isSaveName=False)