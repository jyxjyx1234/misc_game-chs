from SCR_FILE import *

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output")
h.gen_replace("release\\data2.bin", enc = b"ALyCE")
namedict = open_json("namedict.json")
outpath = "release\\scr\\"
os.makedirs(outpath, exist_ok=True)

arc = TBLSTR_ARC()
arc.read_from_path("TBLSTR.arc")

files = os.listdir("scr")
for file in files:
    data = open_file_b(f"scr/{file}")
    scr = SCR_FILE(data)
    try:
        transdatas = open_json(f"gt_output\\{file}.json")
    except:
        transdatas = []
        print(f"gt_output\\{file}.json not found")
    for transdata in transdatas:
        scr.trans(arc, transdata, namedict, h)
    scr.save(outpath + file)
arc.write_to_file("release\\TBLSTR.CHS")

magic = b"\x4C\x49\x4E\x32"
num_files = to_bytes(len(files), 4)
entries = []
datas = []
offset = 8
for file in files:
    offset += 2 + len(file.encode("932")) + 1 + 10
for file in files:
    filedata = open_file_b(f"release\\scr\\{file}")
    filename = file.encode("932") + b"\x00"
    entry = to_bytes(len(filename), 2) + dec(filename, 0xff) + to_bytes(offset, 4) + to_bytes(len(filedata), 4) + b"\x00\x00"
    entries.append(entry)
    datas.append(filedata)
    offset += len(filedata)
data = magic + num_files + b"".join(entries) + b"".join(datas)
save_file_b("release\\SCR.CHS", data)