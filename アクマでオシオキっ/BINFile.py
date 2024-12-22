from Lib import *

def isText(text):
    if re.match(r"[0-9a-zA-Z]", text):
        return False
    return True
    
class BINFile:
    def __init__(self, path):
        self.path = path
        self.data = open_file_b(path)
        self.textstart = self.data.find(b"\x41\x53\x5C\x53\x79\x73\x74\x65\x6D\x4D\x65\x6E\x75")

    def dumptext(self, outpath, namedict):
        out = OriJsonOutput()
        data = BytesReader(self.data)
        data_ = BytesReader(self.data)
        data.p = self.textstart
        nameoffsets = {}
        while data.p < len(data.data):
            offset = data.p
            text = data.read_until_zero().decode("sjis")
            data.read_until_notzero()
            if isText(text):
                out.dic["message"] = text
                out.dic["offset"] = offset
                if text in namedict:
                    out.dic["isname"] = True
                    out.dic["message"] = text.replace("\u3000", "")
                    nameoffsets[offset] = out.dic["message"]
                elif text[0] != "\u3000":
                    p = self.data.find(to_bytes(offset, 4))
                    while p > 0 and p % 4:
                        p = self.data.find(to_bytes(offset, 4), p + 1)
                    p -= 4
                    if p < 0:
                        raise RuntimeError("offset not found")
                    while p > 0:
                        data_.p = p
                        nameoffset = data_.readU32()
                        if nameoffset in nameoffsets:
                            out.dic["name"] = nameoffsets[nameoffset]
                            break
                        p -= 4
                out.dic["ori"] = out.dic["message"] 
                out.append_dict()

        out.save_json(outpath)

    def transtext(self, transpath, outpath, preprocess):
        transdata = open_json(transpath)
        offset_dict = {}
        for d in transdata:
            offset = to_bytes(d["offset"], 4)
            text:str = d["message"]
            text = preprocess(text)
            text = text.encode("sjis")
            new_offset = to_bytes(len(self.data), 4)
            self.data += text + b"\x00"
            self.data += b"\x00" * (4 - len(self.data) % 4)
            offset_dict[offset] = new_offset
        out = b""
        for i in range(0, self.textstart, 4):
            b = self.data[i:i+4]
            out += offset_dict.get(b, b)
        out += self.data[self.textstart:]
        save_file_b(outpath, out)

if __name__ == "__main__":
    oripath = "ori\\"
    files = os.listdir(oripath)
    outpath = "gt_input\\"
    namedict = open_json("namedict.json")
    os.makedirs(outpath, exist_ok = True)
    for f in files:
        print(f)
        binfile = BINFile(oripath + f)
        binfile.dumptext(outpath + f + ".json", namedict)
    save_json("namedict.json", namedict)