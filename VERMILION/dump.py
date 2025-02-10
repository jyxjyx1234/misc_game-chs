from Lib import *
from EXEC import to_plain_text

offsetsData = BytesReader(open_file_b("offset.bin"))
textsData = BytesReader(open_file_b("text.bin"))

temp = open("temp.txt", "w", encoding="utf8")

def process_tag(text):
    text = re.sub(r"\[([^\[\|]*?)\|([^\[\|]*?)\]", r"\1", text)
    text = re.sub(r"\[(.*?)\]", "", text)
    text = text.strip("\n")
    return text

out = OriJsonOutput()
out.preProcess = process_tag
while not offsetsData.is_end():
    offset = offsetsData.readU32()
    length = offsetsData.readU32()
    textsData.seek(offset)
    text = textsData.read(length)
    text = to_plain_text(text)
    temp.write(text + "\n")
    texts = text.split("[n]")
    texts = [t for t in texts if t.strip()]
    for t in texts:
        out.add_text(t)
        out.dic["offset"] = offset
        out.dic["line_count"] = len(texts)
        out.dic["n_count"] = text.count("[n]")
        out.append_dict()
print(out.textcount)
print(len(out.outlist))
out.save_json("gt_input\\output.json")
