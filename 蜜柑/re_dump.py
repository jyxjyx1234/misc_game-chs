import os
import json
import re
from Lib import *

def dec(b : bytes) -> bytes:
    b = bytearray(b)
    for i in range(len(b)):
        b[i] = (b[i]<<4 | b[i]>>4) & 0xff   
    return bytes(b)

os.makedirs("gt_input", exist_ok=True)
data = open_file_b("Scenario.civ")
msg_patten = re.compile(rb"\x40\x00\x00([\x00-\xff]{2})\x7f([\x01-\xff]+?)\x00")
matches = msg_patten.finditer(data)
out = OriJsonOutput()
for match in matches:
    text = match.group(2)
    try:
        text = dec(text).decode("932")
    except:
        print(text.hex())
        exit()
    if text.startswith("【"):
        out.add_name(text)
    else:
        text_ = re.sub(r"\\rh(.*?)\\rr.*?\\rt", lambda x: x.group(1), text)
        out.add_text(text_)
        out.dic["ori"] = text
        out.append_dict()
# save_json("namedict.json", out.get_names())
print(f"Text Counts: {out.textcount}")