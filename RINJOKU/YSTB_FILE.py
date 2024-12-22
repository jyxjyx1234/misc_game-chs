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
        if self.opcode == b'\x15\x00\x03\x00':
            return "name_def"
        if self.opcode == b'\x16\x00\x03\x00':
            return "name_def"
        else:
            return "others"       

class YSTB_command_v2(YSTB_command):
    def type(self) -> str:
        if self.opcode == b'\x00\x00\x00\x00':
            return "text"
        if self.opcode == b'\x11\x00\x03\x00':
            return "name_def"
        if self.opcode == b'\x12\x00\x03\x00':
            return "name_def"
        else:
            return "others"
    
class YSTB_FILE:
    def __init__(self, path=None, data=None, encrypt: int = None) -> None:
        self.encrypt = None
        self.optflag = False
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
            if command.type() == "text":
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
        for command in self.command_list:
            command_offset = command.command_offset
            command_type = command.type()
            if command_type == "text":
                data = self._read_bytes_from_command(command)
                if data != None and data[0] not in [0x42, 0x4d, 0x57, 0x56]:
                    try:
                        text = data.decode(encoding='cp932')
                    except:
                        text = data.decode(encoding='cp932',errors='ignore')
                        print(data)
                        print(path)
                        print(0x20 + self.part1_len + command_offset)
                        print(0x20 + self.part1_len + self.command_len + command.content_offset)
                        continue
                    outputline = f'[{command_offset}]\nORI={text}\nTR1={text}\nTR2={text}\n'
                    outputfile.write(outputline)
            else:
                data = self._read_bytes_from_command(command)
                if data == b"\x4D\x0C\x00\x22\x65\x73\x2E\x53\x45\x4C\x2E\x53\x45\x54\x22":
                    self.optflag = True
                    continue
                if self.optflag:
                    text = data[4:-1]
                    if text == b'':
                        self.optflag = False
                        continue
                    text = text.decode(encoding='cp932')
                    outputline = f'[{command_offset}@opt]\nORI={text}\nTR1={text}\nTR2={text}\n'
                    outputfile.write(outputline)

    def append_trans(self,command_offset:int,trans:str,isopt = False):
        offset = len(self.strs) + len(self.append_region)
        #处理gbk不支持的符号
        trans = replace_symbol_for_gbk(trans)

        trans = trans.replace("≪","114514").replace("／","114515").replace("≫","114516")
        try:
            transdata = trans.encode(encoding='gbk')
        except:
            print(trans)
            exit()
        transdata = transdata.replace("114514".encode("gbk"), "≪".encode("cp932")).replace("114515".encode("gbk"), "／".encode("cp932")).replace("114516".encode("gbk"), "≫".encode("cp932"))

        if isopt:
            l = to_bytes(len(transdata) + 2, 2)
            transdata = b'\x4D' + l + b'\x22' + transdata + b'\x22'

        length = len(transdata)
        self.append_region += transdata + b'\x00'
        self.commands[command_offset+4:command_offset+12] = list(to_bytes(length,4) + to_bytes(offset,4))

class YSTB_NAMEDEF_FILE(YSTB_FILE):
    def _read_command(self):
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
            name = content_data[4:-1].decode(encoding='cp932')
            name = replace_symbol_for_gbk(name)
            newdata = content_data[:4]+name.encode(encoding='gbk')+content_data[-1:]
            self._append_new_namedef(command_offset, newdata)
    
    def gen_namedict(self) ->dict:
        namedict = {}
        for command in self.command_list:
            command_type = command.type()
            if command_type != "name_def":
                return
            content_data = self._read_bytes_from_command(command)
            name = content_data[4:-1].decode(encoding='cp932')
            namedict[name] = name
        return namedict
    
    def transnamecharset(self, namedict):
        for command in self.command_list:
            command_offset = command.command_offset
            command_type = command.type()
            if command_type != "name_def":
                return
            content_data = self._read_bytes_from_command(command)
            name = content_data[4:-1].decode(encoding='cp932')
            print(name)
            name = namedict[name]
            name = replace_symbol_for_gbk(name)
            newdata = content_data[:4] + name.encode(encoding='gbk') + content_data[-1:]
            self._append_new_namedef(command_offset,newdata)
    
class YSTB_commandsdata_v2:
    def __init__(self, data = 0):
        if data == 0:
            return
        if type(data) == type([]):
            data = bytes(data)
        self.data = data
        self.p = 0
        self.commands = []
        while self.p <= len(data):
            self._read_command()

    def _read_command(self):
        data = self.data[self.p:]
        op = data[:1]
        len = from_bytes(data[1:2])
        unk = data[2:6]
        command = {}
        command['op'] = op
        command['len'] = len
        command['unk'] = unk
        if op == b"\x3b":
            command["content"] = [data[2:6]]
            self.p += 10
        else:
            command["content"] = []
            for i in range(len):
                c = YSTB_command_v2(data[6 + 12 * i:18 + 12 * i])
                c.command_offset = self.p + 6 + 12 * i
                command["content"].append(c)
            self.p += 6 + 12 * len
        self.commands.append(command)

    def gen_commands_list(self):
        res = []
        for command in self.commands:
            for _ in command['content']:
                if type(_) != type(b''):
                    res.append(_)
        return res
    
    def __bytes__(self):
        res = []
        for command in self.commands:
            res.append(command['op'])
            res.append(to_bytes(command['len'], 1))
            res.append(command['unk'])
            for _ in command['content']:
                if type(_) == type(b''):
                    res.append(_)
                else:
                    res.append(_.opcode)
                    res.append(to_bytes(_.read_len, 4))
                    res.append(to_bytes(_.content_offset, 4))
            return res
    
    def __list__(self):
        return list(self.__bytes__())
      
class YSTB_FILE_v2(YSTB_FILE):
    def read_from_bytes(self, data: bytes) -> None:
        self.magic = data[0:4]
        self.version = data[4:8]
        self.command_len = from_bytes(data[8:12])
        self.text_len = from_bytes(data[12:16])
        self.unknown = data[16:32]
        self.commands = list(data[0x20 : 0x20 + self.command_len])
        self.strs = list(data[self.command_len + 0x20 : self.command_len + 0x20 + self.text_len])
        self.append_region = b""#用于放译文
        self.part1_len = 0#用于兼容
        self.part4_len = 0#用于兼容
        
        if self.encrypt:
            for i in range(len(self.commands)):
                self.commands[i] ^= self.encrypt[i % 4]
            for i in range(len(self.strs)):
                self.strs[i] ^= self.encrypt[i % 4]
        self.strs = bytes(self.strs)
        self._read_command()

    def save_file(self, path: str, encrypt: int = None):
        strs = list(self.strs)
        append_region = list(self.append_region)
        commands = self.commands.copy()
        strs = strs + append_region
        
        if encrypt:
            encrypt = to_bytes(encrypt, 4)
            for i in range(len(commands)):
                commands[i] ^= encrypt[i % 4]
            for i in range(len(strs)):
                strs[i] ^= encrypt[i % 4]

        data = (
            self.magic
            + self.version
            + to_bytes(len(self.commands), 4)
            + to_bytes(len(self.strs) + len(self.append_region), 4)
            + self.unknown
            + bytes(commands)
            + bytes(strs)
        )
        save_file_b(path, data)
         
    def _read_command(self):
        c = YSTB_commandsdata_v2(self.commands)
        self.command_list = c.gen_commands_list()

class YSTB_NAMEDEF_FILE_v2(YSTB_FILE_v2, YSTB_NAMEDEF_FILE):
    def _read_command(self):
        self.command_list:list[YSTB_command_v2] = []
        c = YSTB_commandsdata_v2(self.commands)
        c = c.gen_commands_list()
        for i in c:
            if i.type() == "name_def":
                self.command_list.append(i)
    