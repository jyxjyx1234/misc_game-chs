from Lib import *
import re

exe = "EXHIBIT_CHS.exe"
new_exe = "EXHIBIT_CHS_trans.exe"

data = open_file_b(exe)
datas = data.split(b"\x00")

try:
    textdict = open_json("textdict.json")
except FileNotFoundError:
    textdict = {}

try:
    transdict = open_json("transdict.json")
except FileNotFoundError:
    transdict = {}

for i, d in enumerate(datas):
    if len(d) < 3:
        continue
    flag = False
    for char in d:
        if char < 0x20 and char not in (0x0a, 0x0d, 0x09):
            flag = True
            continue
    if flag:
        continue
    try:
        text = d.decode(encoding='932')
    except UnicodeDecodeError:
        continue
    for char in text:
        if len(char.encode("932")) == 1 and not re.match(r"[0-9a-zA-Z-%_\n\r\t ]", char):
            flag = True
            continue
    if flag:
        continue
    if len(text) == len(d):
        # print(text)
        continue
    if text not in textdict:
        textdict[text] = text
    if text in transdict:
        newtext = transdict[text]
        newtextb = newtext.encode(encoding='936')
        if len(newtextb) > len(d):
            print(f"Warning: Translation for '{text}' is longer than original text, skipping.")
            continue
        datas[i] = newtextb + b"\x00" * (len(d) - len(newtextb))

save_file_b(new_exe, b"\x00".join(datas))
save_json("textdict.json", textdict)
save_json("transdict.json", transdict)