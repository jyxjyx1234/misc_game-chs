from Lib import *

class SDReader(BytesReader):
    def read_utill_zero(self):
        out = b""
        while True:
            c = self.read(1)
            if c == b"\x00":
                break
            if self.p >= self.length:
                break
            out += c
        return out

class SD_FILE:
    def __init__(self, filename):
        self.filename = filename
        self.data = open_file_b(filename)
    
    def get_names(self, namebinfile):
        namebin = open_file_b(namebinfile)
        names = namebin.split(b'\x00')
        self.names = {}
        namedict = {}
        namedict = open("namedict.txt", "w", encoding="utf-8")
        for i in range(len(names)):
            self.names[f"N{i + 1}"] = names[i].decode("932")
            namedict.write(names[i].decode("932") + "=" + names[i].decode("932") + "\n")
        self.names["N0"] = ""

    def set_text_region(self, start, end):
        self.text_region_start = start
        self.text_region = SDReader(self.data[start: end])

    def dump_text(self, outpath, opt_outpath):
        out = OriJsonOutput()
        opt_out = OriJsonOutput()
        file=open("errors.txt", "w", encoding="sjis")
        while True:
            if self.text_region.p >= len(self.text_region.data):
                break
            text = self.text_region.read_utill_zero()
            if len(text) == 0:
                continue
            elif text[0] == 0x4e and len(text) < 4 and len(text) > 1:
                try:
                    out.add_name(self.names[text.decode("932")])
                except:
                    pass
            elif text[0:1] == b"v" and len(text) > 6 and re.match(rb"[0-9a-zA-Z]*", text).group().__len__ == text.__len__:
                self.text_region.p += 6 
            elif text == b"\x43":
                out.append_dict(remove_name=True)
            elif text == b"\x47":#选项处理
                num_of_options = self.text_region.readU16()
                if num_of_options < 8 and num_of_options > 1:
                    for i in range(num_of_options):
                        opt = self.text_region.read_utill_zero()
                        opt_out.add_text(opt.decode("932"))
                        opt_out.dic["offset"] = self.text_region_start + self.text_region.p - len(opt) - 1
                        opt_out.append_dict()
                else:
                    self.text_region.p -= 2
            elif text[0] < 0x80 and text[0:1] != b"@":
                out.append_dict(remove_name=False)
            else:
                try:
                    t = text.decode("932")
                    if len(t) * 2 != len(text):
                        if len(t) * 2 - len(re.findall(r"[0-9a-zA-Z?!@&｢｣:]", t)) == len(text) and len(text) > 3:
                            print(t)
                            out.add_text(text.decode("932"))
                        else:
                            if len(text) != 1 and b"\x03".decode() not in t and b"\x16".decode() not in t and b"\x01".decode() not in t:
                                print(t, file=file)
                            continue
                    else:
                        out.add_text(text.decode("932"))
                except:
                    continue
                if out.dic["hangshu"] == 1:
                    out.dic["offset"] = self.text_region_start + self.text_region.p - len(text) - 1
        out.save_json(outpath)
        print(out.textcount)
        opt_out.save_json(opt_outpath)
        print(opt_out.textcount)

if __name__ == "__main__":
    sd = SD_FILE("MKSFN.SD")
    sd.get_names("name.bin")
    sd.set_text_region(0x1014, 0x1645c8)
    sd.dump_text("SD_FILE.json", "SD_FILE_opt.json")
