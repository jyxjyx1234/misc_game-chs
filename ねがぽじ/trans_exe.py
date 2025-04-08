from Lib import *

# class TextList:
#     def __init__(self, start, count, data:BytesReader):
#         self.start = start
#         self.count = count
#         self.data = data
#         self.data.seek(start)
#         offsetlist = []
#         for i in range(count):
#             offsetlist.append(data.readU32())
#         self.textlist = []
#         for i in offsetlist:
#             data.seek(i - 0x400000)
#             self.textlist.append(data.read_utill_zero().decode("932"))
#     def dump(self, outpath):
#         out = {}
#         for i in self.textlist:
#             out[i] = i
#         save_json(outpath, out)

#     def trans(self, transdata, encode = "936"):
#         for i, t in enumerate(self.textlist):
#             self.textlist[i] = transdata[t].encode(encode)
#         offset = self.start + self.count * 4 + 0x400000
#         for

def dump_text(start, end, out:OriJsonOutput, data:BytesReader):
    data.seek(start)
    while data.tell() < end:
        offset = data.tell()
        text = data.read_utill_zero()
        if text and not re.match(b"[\x00-\x80]+$", text):
            try:
                out.add_text(text.decode("932"))
            except:
                continue
            out.dic["offset"] = offset
            out.append_dict()


def trans_text(transdatapath, data:BytesReader, h = None):
    for transdata in open_json(transdatapath):
        trans = transdata["message"]
        pos = transdata["offset"]
        data.seek(pos)
        ori = data.read_utill_zero()
        orilen = len(ori)
        data.seek(pos)
        if not h:
            if orilen < len(trans.encode("936")):
                print(f"warning: text too long {trans}")
            data.write(trans.encode("936") + b"\x00")
        else:
            trans = h.hanzitihuan(trans)
            if orilen < len(trans.encode("932")):
                print(f"warning: text too long {trans}")
            data.write(trans.encode("932") + b"\x00")

if __name__ == "__main__":
    out = OriJsonOutput()
    exe = open_file_b("NEGAPOSI_CHS.EXE")
    data = BytesReader(exe)
    dump_text(0x496b8, 0x49d80, out, data)
    dump_text(0x49ea4, 0x4a59b, out, data)
    dump_text(0x4a6dc, 0x4c43b, out, data)
    dump_text(0x38050, 0x38270, out, data)
    out.save_json("exe_.json")
    # trans_text("exe_trans.json", data)
    # save_file_b("release\\NEGAPOSI_CHS.EXE", data.getvalue())