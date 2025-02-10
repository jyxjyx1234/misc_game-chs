from Lib import *
from EXEC import compile_text
# from HanziReplacer import *

enc = b"VERMILION"

def recover_tag(text, ori):
    start_n = ""
    if re.match(r"\n+", ori):
        start_n = re.match(r"\n*", ori).group(0)
        start_n = "\n\n" if len(start_n) > 1 else "\n"
        ori = ori[len(start_n):]
    voice_tag = ""
    if re.search(r"\[voice:.*?\]", ori):
        voice_tag = re.search(r"\[voice:.*?\]", ori).group(0)
        text = voice_tag + text + "[/voice]"
    text = start_n + text
    return text

# h = HanziReplacer()
# h.ReadTransAndGetHanzidictFromFolder("gt_output\\")

transdata = open_json("gt_output\\output.json")
res = []

line_count = 0
while transdata:
    if line_count == 0:
        data = transdata.pop(0)
        offset = data["offset"]
        line_count = data["line_count"]
        ori = data["ori"]
        trans = data["message"]
        trans = recover_tag(trans, ori)
        # trans = h.hanzitihuan(trans)
        trans += "[n]"
        line_count -= 1
    elif line_count > 0:
        data = transdata.pop(0)
        ori_ = data["ori"]
        trans_ = data["message"]
        if offset != data["offset"]:
            raise Exception("Offset mismatch: " + str(offset) + " " + str(data["offset"]))
        trans_ = recover_tag(trans_, ori_)
        # trans_ = h.hanzitihuan(trans_)
        trans += trans_ + "[n]"
        line_count -= 1

    if line_count == 0:
        trans = compile_text(trans)
        offset = to_bytes(offset, 4)
        length = to_bytes(len(trans), 4)
        res.append(offset + length + trans)

count = to_bytes(len(res), 4)

save_file_b("release\\data1.bin", count + b"".join(res), enc)
save_file_b("data1.bin", count + b"".join(res))