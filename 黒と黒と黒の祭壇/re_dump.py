import os
import json
import re
from Lib import *

os.makedirs("gt_input", exist_ok=True)
data = open_file_b("kuro3_06AE4000.bin")
msg_patten = re.compile(rb"\x40\x00\x00([\x00-\xff]{2})\x7f")
matches = msg_patten.finditer(data)
out = OriJsonOutput()
for match in matches:
    start = match.end()
    text = ""
    while True:
        if data[start: start + 2] == b"\x00\x00":
            break
        text += data[start: start + 2].decode("utf-16-le")
        start += 2
    if text.startswith("【"):
        out.add_name(text)
    else:
        text_ = re.sub(r"\\rh(.*?)\\rr.*?\\rt", lambda x: x.group(1), text)
        out.add_text(text_)
        out.dic["ori"] = text
        out.append_dict()
out.save_json("gt_input/kuro", split = 10)
# save_json("namedict.json", out.get_names())
print(f"Text Counts: {out.textcount}")