from Lib import *
from lzss import *

class DAT_FILE:
    def __init__(self):
        pass

    def read_from_file(self, file_path):
        self.data = open_file_b(file_path)
        data = BytesReader(self.data)
        self.header = data.read(2)
        self.num_files = data.readU16()
        self.filesize = data.readU32()
        self.entries = []
        for i in range(self.num_files):
            entry = {}
            entry['name'] = data.read(0x10).decode('932').rstrip('\x00')
            entry['size'] = data.readU32()
            entry['offset'] = data.readU32()
            self.entries.append(entry)

    def unpack(self, out_path, json_outPath = "gt_input"):
        os.makedirs(out_path, exist_ok=True)
        os.makedirs(json_outPath, exist_ok=True)
        info = StatusInfo()
        for entry in self.entries:
            file_name = entry['name']
            file_size = entry['size']
            file_offset = entry['offset']
            file_data = self.data[file_offset:file_offset + file_size]
            f = NPK_FILE()
            f.read_from_data(file_data)
            f.dec()
            save_file_b(os.path.join(out_path, file_name), f.data)
            f.read_commands()
            commands = f.commands
            out = OriJsonOutput()
            for command in commands:
                command_type, content = self.filter_commnand(command)
                if content:
                    if command_type == "msg":
                        out.add_text(content)
                        out.dic["ori"] = command.hex()
                        out.append_dict()
                    elif command_type == "sptext":
                        out.add_text(content)
                        out.dic["ori"] = command.hex()
                        out.append_dict()
                    elif command_type == "name":
                        out.dic["nameori"] = command.hex()
                        out.add_name(content.replace("\u3000", ""))
                # else:
                #     with open("unknown_commands.txt", "a", encoding="932") as f_unknown:
                #         f_unknown.write(f"{command.decode("932", "ignore")}\n")
            out.save_json(os.path.join(json_outPath, file_name + ".json"))
            info.update(out)
        info.output(0)

            
    @staticmethod
    def filter_commnand(command):
        m1 = re.match(rb"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00[\x00-\xff]\x00([\x81-\xfe][\x01-\xff]*?)\x00", command)
        if m1:
            return "msg", m1.group(1).decode('932')
        m2 = re.match(rb"\x5C\x00\x00\x00\x0D\x00\x00\x00\x10\x04\x00\x00([\x81-\xfe][\x20-\xff]*?)\x00", command)
        if m2:
            return "sptext", m2.group(1).decode('932')
        m3 = re.match(rb"\x1A\x00\x00\x00\x7B\x01\x00\x00\x10\x03\x00\x00([\x81-\xfe][\x20-\xff]*?)\x00", command)
        if m3:
            return "name", m3.group(1).decode('932')
        else:
            return "unknown", None

class NPK_FILE:
    def __init__(self):
        pass

    def read_from_data(self, file_data):
        data = BytesReader(file_data)
        self.magic = data.read(4)
        self.sp_num = data.readU32()
        self.text_start = self.sp_num * 0xc + 0x1d
        self.data = file_data
    
    def dec(self):
        try:
            os.makedirs(os.path.dirname(out_path), exist_ok=True)
        except:
            pass
        res = self.data[:self.text_start] + LZSS_decompress(self.data[self.text_start:])
        self.data = res

    def read_commands(self):
        text_content = BytesReader(self.data[self.text_start:])
        self.commands = []
        while not text_content.is_end():
            length = text_content.readU16()
            content = text_content.read(length)
            self.commands.append(content)
    


if __name__ == "__main__":
    orifile = "moj.dat"
    out_path = "MOJ"
    dat_file = DAT_FILE()
    dat_file.read_from_file(orifile)
    dat_file.unpack(out_path)