from Lib import *

orifile = "output.txt"
outfile = "gt_input\\text.json"
os.makedirs("gt_input", exist_ok=True)

with open(orifile, "r", encoding="utf8") as f:
    data = f.read()
    matches = re.findall(r"(?<=<line>)([^<>]*?)(?=<endline>)", data)

textcountdict = {}
namedict = open_json("namelist.json")
out = OriJsonOutput()
info = StatusInfo()

def preProcess_text(text):
    text = re.sub(r"@r(.*?)@(.*?)@", r"\1", text)
    text = re.sub(r"@n", "\\n", text)
    text = re.sub(r"^@[@a-z0-9]*", "", text)
    text = re.sub(r"@[@a-z0-9]*$", "", text)
    if "@" in text:
        print("Warning: @ in text:", text)
    return text

'''
Warning: @ in text: 「この後の体育できねぇだろ。しゃーねえ、
 「この後の体育できねぇだろ。しゃーねえ、
@t0425美冬。金貸してくれ」
Warning: @ in text: 『成田は、@t0135彼女居ない歴＝年齢だ』
Warning: @ in text: 「……そうですか、良かったです………………
@t0468なら早く私の上から退いてください……」
Warning: @ in text: 「はーい、@t0171あ、ラブラブなカップルの人たちか」
Warning: @ in text: 明日は日向くんとの会話、@p食材の買い出し、@p日向くんとの会話、
@p日向くんとの会話をしよう。
'''

out.preProcess = preProcess_text

for text in matches:
    if re.match(r"[#0-9a-zA-Z_\.-]*$", text):
        continue
    if ".png" in text or ".jpg" in text or ".bin" in text or ".spm" in text:
        continue
    if "_" in text and "@" not in text:
        continue
    if text in namedict:
        out.add_name(text)
        continue
    out.add_text(text)
    out.append_dict(quchong=True)
    textcountdict[text] = textcountdict.get(text, 0) + 1

sorted_textcount = dict(sorted(textcountdict.items(), key=lambda item: item[1], reverse=True))
sorted_textcount_ = {}
for key in sorted_textcount:
    if sorted_textcount[key] >= 2:
        sorted_textcount_[key] = sorted_textcount[key]
with open("textcount_sorted.json", "w", encoding="utf-8") as f:
    json.dump(sorted_textcount_, f, ensure_ascii=False, indent=4)

out.save_json(outfile)
info.update(out)
info.output(isSaveName=False)

orifile = "sptext.txt"
outfile = "gt_input\\sptext.json"

with open(orifile, "r", encoding="utf8") as f:
    data = f.read()
    matches = re.findall(r"(?<=<line>)([^<>]*?)(?=<endline>)", data)
out = OriJsonOutput()
for text in matches:
    if re.match(r"[#0-9a-zA-Z_\.-]*$", text):
        continue
    if ".png" in text or ".jpg" in text or ".bin" in text or ".spm" in text:
        continue
    if "_" in text:
        continue
    out.add_text(text)
    out.append_dict(quchong=True)
out.save_json(outfile)