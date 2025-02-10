from Lib import *

class GSC_FILE:
    def __init__(self, path):
        data = BytesReader(open_file_b(path))
        self.size = data.readU32()
        self.headersize = data.readU32()
        self.p1size = data.readU32()
        self.p2size = data.readU32() # 偏移
        self.p3size = data.readU32() # 文本
        self.p4size = data.readU32() # unk
        self.p5size = data.readU32() # unk
        self.p1 = BytesReader(data.read(self.p1size))
        self.p2 = BytesReader(data.read(self.p2size))
        self.p3 = BytesReader(data.read(self.p3size))
        self.p4 = BytesReader(data.read(self.p4size))
        self.p5 = BytesReader(data.read(self.p5size))
        # self.other = data.read()
        self.offsets = []
        while not self.p2.is_end():
            self.offsets.append(self.p2.readU32())
        self.texts = []
        for i in self.offsets:
            self.p3.seek(i)
            self.texts.append(self.p3.read_utill_zero().decode("932"))
    
    def dump_text(self, out: OriJsonOutput):
        for i in range(len(self.texts)):
            out.add_text(self.texts[i])
            out.dic["idx"] = i
            out.append_dict()

    def rebuild_text(self, transdata, h):
        offsets = []
        for data in transdata:
            ori = data["ori"]
            trans = h.hanzitihuan(data["message"])
            idx = data["idx"]
            if re.match(r"\^g[0-9]{3}\^n", ori):
                trans = ori[:7] + trans
                ori = ori[7:]
            # num_n = ori.count("^n")
            # trans = trans + "^n" * num_n
            self.texts[idx] = trans
        offset = 0
        new_offsets = []
        for i in self.texts:
            new_offsets.append(to_bytes(offset, 4))
            offset += len(i.encode("932")) + 1
        self.p2 = BytesReader(b"".join(new_offsets))
        self.p3 = BytesReader(b"".join([i.encode("932") + b"\x00" for i in self.texts]))
        self.size = 28 + len(self.p1.getvalue()) + len(self.p2.getvalue()) + len(self.p3.getvalue()) + len(self.p4.getvalue()) + len(self.p5.getvalue())
        self.p3size = len(self.p3.getvalue())
    
    def save(self, path):
        out = open(path, "wb")
        out.write(to_bytes(self.size, 4))
        out.write(to_bytes(self.headersize, 4))
        out.write(to_bytes(self.p1size, 4))
        out.write(to_bytes(self.p2size, 4))
        out.write(to_bytes(self.p3size, 4))
        out.write(to_bytes(self.p4size, 4))
        out.write(to_bytes(self.p5size, 4))
        out.write(self.p1.getvalue())
        out.write(self.p2.getvalue())
        out.write(self.p3.getvalue())
        out.write(self.p4.getvalue())
        out.write(self.p5.getvalue())
        out.write(b"\x00")
        out.close()
        