from Lib import *


data = open_file_b("exetext.bin")

data = data.split(b"\x00")

out = OriJsonOutput()

for i in data:
    if len(i) == 0:
        continue
    try:
        text = i.decode("932")
    except:
        continue
    if re.match("[a-zA-Z0-9]", text):
        continue
    out.add_text(text)
    out.append_dict()

out.save_json("gt_input\\exetext.json")