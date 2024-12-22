from Lib import *
import re

def dec(data):
    data_ = list(data)
    dec = []
    for i in range(len(data_)):
        dec.append(data_[i] ^ (i % 256))
    return bytes(dec)

def textFliter(text : bytes):
    try:
        text = text.decode("932")
    except:
        return False
    if re.match("[a-zA-Z0-9]", text):
        return False
    return True

class SCWFile:
    def __init__(self, data) -> None:
        self.data = BytesReader(data)
        self.head = self.data.read(0x100)
        entryCount1 = from_bytes(data[0x20:0x24])
        entryCount2 = from_bytes(data[0x24:0x28])
        entryCount3 = from_bytes(data[0x28:0x2c])
        unkLen = from_bytes(data[0x2C:0x30])
        textsLen = from_bytes(data[0x30:0x34])
        unk2Len = from_bytes(data[0x34:0x38])
        self.entryList1 = self.readEntryList(entryCount1)
        self.entryList2 = self.readEntryList(entryCount2)
        self.entryList3 = self.readEntryList(entryCount3)
        self.unk = self.data.read(unkLen)
        self.texts = dec(self.data.read(textsLen))
        self.unk2 = self.data.read(unk2Len)
        if self.data.p != len(data):
            print(hex(self.data.p))
            print(len(data))
            raise RuntimeError

    def readEntryList(self, entryCount):
        entryList = []
        for i in range(entryCount):
            P1 = self.data.readU32()
            P2 = self.data.readU32()
            P3 = self.data.readU32()
            P4 = self.data.readU32()
            entryList.append((P1, P2, P3, P4))
        return entryList
    
    '''def dumpCommand(self):
        texts = []
        for offset, _ in self.entryList1:
            i = 0
            while offset + i < len(self.texts) and self.texts[offset + i] != 0:
                i += 1
            texts.append(self.unk[offset : offset + i])
        return texts'''

    def dumpTexts(self):
        texts = []
        for offset, _, l, _ in self.entryList2:
            texts.append(self.texts[offset : offset + l])
        return texts
    
    def transText(self, transList):
        texts = []
        newEntryList2 = []
        o = 0
        for offset, _1, l, _2 in self.entryList2:
            t = self.texts[offset : offset + l]
            if textFliter(t):
                t = transList.pop(0).encode("932").replace(b"\x0d\x0a", b"\x0a") + b"\x00"
            texts.append(t)
            newEntryList2.append((o, _1, len(t), _2))
            o += len(t)
        self.entryList2 = newEntryList2
        self.texts = b"".join(texts)
        self.head = self.head[:0x30] + to_bytes(len(self.texts), 4) + self.head[0x34:]

    def genEntry(self, entryList):
        res = []
        for offset,P2, l, P4 in entryList:
            res.append(to_bytes(offset, 4))
            res.append(to_bytes(P2, 4))
            res.append(to_bytes(l, 4))
            res.append(to_bytes(P4, 4))
        return b"".join(res)
    
    def save(self, path):
        res = []
        res.append(self.head)
        res.append(self.genEntry(self.entryList1))
        res.append(self.genEntry(self.entryList2))
        res.append(self.genEntry(self.entryList3))
        res.append(self.unk)
        res.append(dec(self.texts))
        res.append(self.unk2)
        res = b"".join(res)
        save_file_b(path, res)

'''
if __name__ == "__main__":
    data = open_file_b("SCW\\" + "B03.scw")
    f = SCWFile(data)
    out = open("1.txt", "w", encoding="sjis")
    idx = 0
    for t in f.dumpTexts():
        out.write(f"L{idx}:" + t[:-1].decode("932") + "\n\n")
        idx += 1'''

if __name__ == "__main__":
    save_file_b("1.txt",dec(open_file_b("example")))
