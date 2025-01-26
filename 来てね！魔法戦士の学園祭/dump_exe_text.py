from Lib import *
from SD_FILE import SDReader

data = open_file_b("LMK.exe")

start = 0x7055c
end = 0x70d1b

data = data[start:end]

data = SDReader(data)
out = OriJsonOutput()

while True:
    if data.p >= len(data.data):
        break
    text = data.read_utill_zero()
    if len(text) == 0:
        continue
    out.add_text(text.decode("932"))
    out.dic["offset"] = data.p + start -len(text) - 1
    out.append_dict()

out.save_json("exe_text.json")