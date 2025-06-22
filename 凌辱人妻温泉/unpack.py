from Lib import *


data = open_file_b("D:\\game\\STRIKES\\凌辱人妻温泉\\GR.056")
outpath = "release/script"
oridata = BytesReader(data)

oridata.seek(0x10)

i = 0
while True:
    offset = oridata.readU32()
    end_offset = oridata.readU32()
    oridata.seek(-4, 1)
    if end_offset == 0:
        break
    filedata = data[offset:end_offset]
    save_file_b(os.path.join(outpath, f"GR#{i:05d}"), filedata)
    i += 1