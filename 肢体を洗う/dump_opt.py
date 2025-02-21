from Lib import *

oriFiles = os.listdir("ARC")
out = OriJsonOutput()
for file in oriFiles:
    data = open_file_b("ARC/" + file)
    dataReader = BytesReader(data)
    matches = re.finditer(rb"\x13\x00\xff", data)
    for match in matches:
        textStart = match.end() + 9
        dataReader.seek(textStart)
        text = dataReader.read_utill_zero().decode("932")
        out.add_text(text)
        out.dic["filename"] = file
        out.append_dict()
        while dataReader.read(2) == b"\xff\x00":
            dataReader.read(4)
            text = dataReader.read_utill_zero().decode("932")
            out.add_text(text)
            out.append_dict()
out.save_json("opts.json")