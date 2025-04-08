from Lib import *

oripath = "scenario\\"
outpath = "release\\patch\\"
transpath = "gt_output\\"

pattern = re.compile(r"(?P<name2>\[＠a[^a-z\[\]]*?\])(?P<msg2>.*?)(?P<other2>\[[＠w])|(?P<name1>\[＠a[^a-z\[\]]*?\])(?P<msg1>.*?)[\n]")
defaultName = {
    "主人公名前" : "隆司",
    "ヒロイン名前" : "悠美",
    "ヒロイン苗字" : "铃森",
}

for transfile in os.listdir(transpath):
    transdatas = open_json(os.path.join(transpath, transfile))
    orifile = transfile.replace(".json", "")
    orifile = os.path.join(oripath, orifile)
    orifile = open(orifile, "r", encoding="utf16").read()
    
    def trans(m:re.Match):
        transdata = transdatas.pop(0)
        transtext = transdata["message"]
        transtext = replace_halfwidth_with_fullwidth(transtext)
        transtext = transtext.replace("[ｌ]", "[l]")
        transtext = processQuote(transtext)
        for n in defaultName:
            transtext = transtext.replace(defaultName[n], f'[emb exp="f.{n}"]')
        if m.group("name1"):
            res = m.group("name1") + transtext + "\n"
        elif m.group("name2"):
            res = m.group("name2") + transtext + m.group("other2")
        return res
    orifile = pattern.sub(trans, orifile)
    with open(outpath + transfile.replace(".json", ""), "w", encoding="utf16") as f:
        f.write(orifile)
