#YBN文件格式解析
from Lib import *


class YSTB_command:
    def __init__(self, data= 0) -> None:
        if data != 0:
            self.read_command_bytes(data)
        self.command_offset: int

    def read_command_bytes(self, data):
        self.opcode = data[0:4]
        self.read_len = from_bytes(data[4:8])
        self.content_offset = from_bytes(data[8:12])
    
    def type(self) -> str:
        if self.opcode == b'\x00\x00\x00\x00':
            return "text"
        elif self.opcode == b'\x16\x00\x03\x00':
            return "sound"
        elif self.opcode == b'\x00\x00\x03\x00':
            return "may_be_opt"
        elif self.opcode == b'\x21\x00\x03\x00':
            return "name_def"
        elif self.opcode == b'\x22\x00\x03\x00':
            return "name_def"
        else:
            return "others"


class YSTB_FILE:
    def __init__(self, path=None, data=None, encrypt: int = None) -> None:
        self.encrypt = None
        if encrypt:
            self.encrypt = to_bytes(encrypt,4)
        if path:
            self.read_from_path(path)
        if data:
            self.read_from_data(data)
        else:
            pass

    def read_from_path(self, path: str) -> None:
        data = open_file_b(path)
        self.read_from_bytes(data)

    def read_from_bytes(self, data: bytes) -> None:
        if self.encrypt:
            data = list(data)
            for i in range(len(data)):
                if i < 0x20:
                    continue
                data[i] = data[i] ^ self.encrypt[i%4]
            data = bytes(data)
            
        self.magic = data[0:4]
        self.version = data[4:8]
        self.unknown1 = data[8:12]
        self.part1_len = from_bytes(data[12:16])
        self.command_len = from_bytes(data[16:20])
        self.str_len = from_bytes(data[20:24])
        self.part4_len = from_bytes(data[24:28])
        self.unknown2 = data[28:32]
        self.part1 = data[0x20 : 0x20 + self.part1_len]
        self.commands = list(data[
            0x20 + self.part1_len :
            0x20 + self.part1_len + self.command_len
        ])
        self.strs = data[
            0x20 + self.part1_len + self.command_len :
            0x20 + self.part1_len + self.command_len + self.str_len
        ]
        self.part4 = data[
            0x20 + self.part1_len + self.command_len + self.str_len :
            0x20 + self.part1_len + self.command_len + self.str_len + self.part4_len
        ]
        self.append_region = b""
        self._read_command()

    def save_file(self, path: str,encrypt: int = None):
        data = (
            self.magic
            + self.version
            + self.unknown1
            + to_bytes(len(self.part1), 4)
            + to_bytes(len(self.commands), 4)
            + to_bytes(len(self.strs)+len(self.append_region), 4)
            + to_bytes(len(self.part4), 4)
            + self.unknown2
            + self.part1
            + bytes(self.commands)
            + self.strs
            + self.append_region
            + self.part4
        )
        if encrypt:
            encrypt = to_bytes(encrypt, 4)
            data = list(data)
            for i in range(len(data)):
                if i < 0x20:
                    continue
                data[i] = data[i] ^ encrypt[i%4]
            data = bytes(data)
        save_file_b(path, data)

    def _read_command(self) -> list:
        self.command_list:list[YSTB_command] = []
        p = 0
        while p < self.command_len:
            command = YSTB_command(bytes(self.commands[p : p + 12]))
            command.command_offset = p
            self.command_list.append(command)
            p += 12

    def _read_bytes_from_command(self, command: YSTB_command) -> bytes:
        offset = command.content_offset
        len = command.read_len
        if len == 0 or len > 256:
            return None
        return self.strs[offset : offset + len]

    def dump_text_to_file(self, path):
        outputfile = open(path, "w", encoding="utf8")
        outputfile_opt = []
        opt_flag = False
        for command in self.command_list:
            command_offset = command.command_offset
            command_type = command.type()
            if command_type == "text":
                data = self._read_bytes_from_command(command)
                if data != None and data[0] != 0x4d and data[0:1] != b'H':
                    try:
                        text = data.decode(encoding='sjis')
                    except:
                        text = data.decode(encoding='sjis',errors='ignore')
                        print(data)
                        print(0x20 + self.part1_len + command_offset)
                        print(0x20 + self.part1_len + self.command_len + command.content_offset)
                        continue
                    outputline = f'[{command_offset}]\nORI={text}\nTR1={text}\nTR2={text}\n'
                    outputfile.write(outputline)
            
            if opt_flag:
                data = self._read_bytes_from_command(command)[4:-1]
                print(data)
                if data == b'':
                    opt_flag = False
                else:
                    try:
                        text = data.decode(encoding='sjis')
                        print(text)
                        dic = {}
                        dic['message'] = text
                        dic['offset'] = command_offset
                        outputfile_opt.append(dic)
                    except:
                        pass

            if command_type == "may_be_opt":
                data = self._read_bytes_from_command(command)
                if data == b'\x4D\x0C\x00\x22\x45\x53\x2E\x53\x45\x4C\x2E\x53\x45\x54\x22':
                    opt_flag = True
        if len(outputfile_opt) > 0:           
            save_json("opt//" + path[-20:].replace("txt", "json"), outputfile_opt)
                    
        

    def append_trans(self,command_offset:int,trans:str):
        offset = len(self.strs) + len(self.append_region)
        #处理gbk不支持的符号
        trans = trans.replace("♪","").replace("#","＃").replace("〜","~").replace("@","＠")
        trans = replace_halfwidth_with_fullwidth(trans)
        
        trans = trans.replace("≪","114514").replace("／","114515").replace("≫","114516")
        transdata = trans.encode(encoding='gbk')

        transdata = transdata.replace("114514".encode('gbk'), "≪".encode("sjis")).replace("114515".encode('gbk'), "／".encode("sjis")).replace("114516".encode('gbk'), "≫".encode("sjis"))

        #处理特殊标识
        teshulist = ["＠","＃"]
        for i in teshulist:
            transdata = transdata.replace(i.encode(encoding='gbk'),i.encode(encoding='sjis'))
        

        length = len(transdata)
        self.append_region += transdata + b'\x00'
        self.commands[command_offset+4:command_offset+12] = list(to_bytes(length,4) + to_bytes(offset,4))

    def append_opt(self,command_offset:int,trans:str):
        offset = len(self.strs) + len(self.append_region)
        transdata = trans.encode(encoding='gbk')
        transdata = b'\x4D' + to_bytes(len(transdata) + 2, 2) + b'\x22' + transdata + b'\x22'
        length = len(transdata)
        self.append_region += transdata + b'\x00'
        self.commands[command_offset+4:command_offset+12] = list(to_bytes(length,4) + to_bytes(offset,4))

class YSTB_NAMEDEF_FILE(YSTB_FILE):
    def _read_command(self) -> list:
        self.command_list:list[YSTB_command] = []
        p = 0
        while p < self.command_len:
            command = YSTB_command(bytes(self.commands[p : p + 12]))
            command.command_offset = p
            if command.type() == "name_def":
                self.command_list.append(command)
            p += 12

    def _append_new_namedef(self,command_offset:int,newdata:bytes):
        offset = len(self.strs) + len(self.append_region)
        length = len(newdata)
        self.append_region += newdata + b'\x00'
        self.commands[command_offset+4:command_offset+12] = list(to_bytes(length,4) + to_bytes(offset,4))

    def changenamecharset(self):
        for command in self.command_list:
            command_offset = command.command_offset
            command_type = command.type()
            if command_type != "name_def":
                return
            content_data = self._read_bytes_from_command(command)
            print(content_data[4:-1].decode(encoding='sjis'))
            newdata = content_data[:4]+content_data[4:-1].decode(encoding='sjis').encode(encoding='gbk')+content_data[-1:]
            self._append_new_namedef(command_offset,newdata)