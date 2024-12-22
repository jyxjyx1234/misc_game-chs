from Lib import *
from GSD_GLOBAL_DAT import GSD_GLOBAL_DAT
import sys

class SPT_MESSAGE():
    idx : int
    start : int
    end : int
    nameid1 : int
    nameid2 : int
    name : str
    ukn1 : int
    ukn2 : int
    len : int
    content : str = ""

    def to_bytes(self):
        out = b"\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xFF\xFF\xFF\xFF\x00\x00\x00\x00"
        out += self.idx.to_bytes(4, "little")
        out += b"\x00" * 12
        out += self.nameid1.to_bytes(4, "little")
        out += self.nameid2.to_bytes(4, "little")
        out += self.ukn1.to_bytes(4, "little")
        out += self.ukn2.to_bytes(4, "little")
        out += (len(self.content) + 1).to_bytes(4, "little")
        out += b"\x00" * 8
        for char in self.content:
            out += b"\x07\x00\x00\x00\x00\x00\x00\x00" + char.encode("932") + b"\x00" * 2
        out += b"\x08\x00\x00\x00\x00\x00\x00\x00" + char.encode("932") + b"\x00" * 2
        return out

class SPT_OPT():
    content : str
    name : str = ""
    start : int
    end : int

    def to_bytes(self):
        length = len(self.content.encode("932"))
        length = length.to_bytes(4, "little")
        res = b"\x23\x00\x00\x00\xFF\xFF\xFF\xFF\x00\x00\x00\x00" + length + b"\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        res += self.content.encode("932")
        return res

class SPT_FILE:
    def __init__(self, path) -> None:
        self.path = path
        self.data = open_file_b(path)
        self.global_dat = GSD_GLOBAL_DAT(os.path.join(os.path.dirname(path), "GLOBAL.DAT"))
    
    def find_text(self):
        data = BytesReader(self.data)
        texts = re.finditer(rb"\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00(?P<idx>[\x00-\xff]{4})\x00{12}(?P<nameid1>[\x00-\xff]{4})(?P<nameid2>[\x00-\xff]{4})(?P<ukn1>[\x00-\xff]{4})(?P<ukn2>[\x00-\xff]{4})(?P<len>[\x00-\xff]{4})\x00{8}|\x76\x53\x65\x6C\x65\x63\x74\x2E\x73\x70\x74\x00\x01\x00\x00\x00\xFF\xFF\xFF\xFF(?P<opts>[\x00-\xff]*?)\x23\x00\x00\x00\xFF\xFF\xFF\xFF\x00\x00\x00\x00\x00\x00\x00\x00\x00", self.data)
        self.texts = []
        for t in texts:
            print(t)
            if t.group("opts"):
                opts = re.finditer(rb"\x23\x00\x00\x00\xFF\xFF\xFF\xFF\x00\x00\x00\x00(?P<len>[\x00-\xff]{4})\x00\x00\x00\x00\x00\x00\x00\x00\x00", t.group("opts"))
                optdata = BytesReader(t.group("opts"))
                for opt in opts:
                    msg = SPT_OPT()
                    optdata.p = opt.end()
                    msg.start = t.start() + 20 + opt.start()
                    content = optdata.read(int.from_bytes(opt.group("len"), "little")).decode("932")
                    msg.end = t.start() + 20 + optdata.p
                    msg.content = content
                    self.texts.append(msg)
            else:
                msg = SPT_MESSAGE()
                msg.start = t.start()
                msg.idx = int.from_bytes(t.group("idx"), "little")
                msg.nameid1 = int.from_bytes(t.group("nameid1"), "little")
                msg.nameid2 = int.from_bytes(t.group("nameid2"), "little")
                msg.len = int.from_bytes(t.group("len"), "little")
                msg.ukn1 = int.from_bytes(t.group("ukn1"), "little")
                msg.ukn2 = int.from_bytes(t.group("ukn2"), "little")
                try:
                    msg.name = self.global_dat.get_name(msg.nameid2)
                except:
                    msg.name = ""
                data.p = t.end()
                for i in range(msg.len):
                    char = re.match(rb"[\x07]\x00{7}([\x01-\xff]*)", data.read(12))
                    if char:
                        char = char.group(1)
                        msg.content += char.decode("932")
                msg.end = data.p
                self.texts.append(msg)
    
    def dump_text(self, path):
        out = OriJsonOutput()
        self.find_text()
        for msg in self.texts:
            out.dic["ori"] = msg.content
            out.dic["message"] = msg.content
            if msg.name:
                out.dic["name"] = msg.name
            out.append_dict()
        if out.outlist:
            out.save_json(path)

    def trans_text(self, transdict, outpath):
        self.find_text()
        datalist = [to_bytes(self.data[i], 1) for i in range(len(self.data))]
        for msg in self.texts:
            start = msg.start
            end = msg.end
            trans = transdict[msg.content]
            msg.content = trans
            datalist[start:end] = [msg.to_bytes()] + [b""] * (end - start - 1)
        newdata = b"".join(datalist)
        save_file_b(outpath, newdata)