from gen_font import *

oritext = open("text.txt", "r", encoding="sjis").read()
transData = []
for f in os.listdir("trans"):
    transData += open_json("trans\\" + f)
allTexts = {}
for i in oritext[:0x500]:
    allTexts[i] = ""

for data in transData:
    msg = data["post_zh_preview"]
    msg = msg.replace("\\n", "").replace("\n", "").replace("[", "").replace("]", "").replace("\r", "").replace("\\r", "")
    msg = re.sub(r"\.+", "…", msg)
    msg = replace_halfwidth_with_fullwidth(msg)
    msg = processQuote(msg)
    for char in msg:
        try:
            charLen = len(char.encode("936"))
        except:
            try:
                charLen = len(char.encode("sjis"))
            except:
                charLen = 2
        if charLen == 1:
            raise Exception("Invalid char: " + char)
        allTexts[char] = ""
allTexts = list(allTexts.keys())

font = BFD_FONT()
h = font.get_chars(allTexts)
# h.ChangeFont("WenQuanYi.ttf", "release\\body.ttf", "body")
h.gen_replace("release\\data2.bin")
font.rebuild("release\\font.bfd", h)

res = []
for data in transData:
    msg = data["post_zh_preview"]
    ori = data["pre_jp"].replace("\uff5e", b"\x81\x60".decode("sjis")).replace("\uff0d", b"\x81\x7c".decode("sjis"))
    msg = msg.replace("\\n", "").replace("\n", "").replace("[", "").replace("]", "").replace("\r", "").replace("\\r", "")
    msg = re.sub(r"\.+", "…", msg)
    msg = re.sub("…+", "……", msg)
    msg = replace_halfwidth_with_fullwidth(msg)
    msg = processQuote(msg)
    msg = h.hanzitihuan(msg)
    r = ori.encode("sjis") + b"[=]" + msg.encode("sjis") + b"[n]"
    res.append(r)
save_file_b("release\\data1.bin", b"".join(res))
