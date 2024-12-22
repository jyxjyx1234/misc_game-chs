from Lib import *
from HanziReplacer import *

patten = re.compile(rb'(?<=\x15\x01\x02)([\x01-\xfe]+?)(?=\x05)|(?<=\x00\x40)([\x40-\xfe]+?)(?=\x00)|(?<=[\x00-\x04]\x17\x03\x00)([\x00\x30-\xfe]+?)(?=\x00\x00)')

files = os.listdir('snx_ori')
pkg = open_file_b("moon_chs")
def get_text(match):
    try:
        if match.group(1):
            text = match.group(1).replace(b'\x81\x40', "\u3000".encode('gbk'))
            return text.decode('gbk')
        elif match.group(2):
            text = match.group(2).replace(b'\x81\x40', "\u3000".encode('gbk'))
            return text.decode('gbk')
        elif match.group(3):
            text = match.group(3).replace(b'\x81\x40', "\u3000".encode('gbk')).replace(b'\x00', b"")
            return text.decode('gbk')
    except:
        print(match.group(1))
        print(match.group(2))
        print(match.group(3))
        exit()

allText = []
for file in files:
    data =open_file_b('snx_ori/' + file)
    for i in patten.finditer(data):
        text =get_text(i)
        allText.append(text)

h = HanziReplacer()
h.ReadTransAndGetHanzidict([allText])
#h.ChangeFont("WenQuanYi.ttf","release\moonfont.ttf","moonfont")

def process_match(match):
    if match.group(1):
        if b"\x01" in match.group(1):
            texts = match.group(1).replace(b'\x81\x40', "\u3000".encode('gbk'))
            texts = texts.split(b"\x01")
            for i in range(len(texts)):
                texts[i] = h.hanzitihuan(texts[i].decode('gbk')).encode("932")
            res = b"\x01".join(texts)
        text = match.group(1).replace(b'\x81\x40', "\u3000".encode('gbk'))
        res = h.hanzitihuan(text.decode('gbk')).encode("932")
    elif match.group(2):
        text = match.group(2).replace(b'\x81\x40', "\u3000".encode('gbk'))
        res = h.hanzitihuan(text.decode('gbk')).encode("932")
    elif match.group(3):
        texts = match.group(3).replace(b'\x81\x40', "\u3000".encode('gbk'))
        texts = texts.split(b"\x00")
        for i in range(len(texts)):
            texts[i] = h.hanzitihuan(texts[i].decode('gbk')).encode("932")
        res = b"\x00".join(texts)
        
    if len(res) != len(match.group(0)):
        print(res)
        print(match.group(0))
        exit()
    return res

for file in files:
    data =open_file_b('snx_ori/' + file)
    data_new = patten.sub(process_match, data)
    if len(data) != len(data_new):
        print(file)
        print(len(data))
        print(len(data_new))
        exit()
    if data not in pkg:
        print(file)
    if data != data_new:
        pkg = pkg.replace(data, data_new)

save_file_b("release/moon_chs", pkg)
    