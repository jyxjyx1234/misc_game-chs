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

def readUntilZero(data, offset):
    end = offset
    while data[end]:
        end += 1
    return data[offset:end]

class SCWFile:
    def __init__(self, data) -> None:
        self.data = BytesReader(data)
        self.head = self.data.read(0x50)
        self.unk1 = self.data.read(8)
        self.totalL = self.data.readU32()
        self.commandL = self.data.readU32()
        self.contentL = self.data.readU32()
        self.unk2 = self.data.read(4)
        self.command = self.data.read(self.commandL)
        self.content = self.data.read(self.contentL)
        self.unk3 = self.data.read(self.totalL - self.commandL - self.contentL)
        if self.data.p != len(self.data.data):
            print(self.data.p)
            print(len(self.data.data))
            raise RuntimeError
        if self.unk2 != b"\x00" * 4:
            print(self.unk2)
            print(self.totalL - self.commandL - self.contentL)

    def readCommand(self):
        command = BytesReader(self.command)
        self.strs : list[SCWCommand] = []
        while True:
            i = command.read(4)
            if i in [b"\x00\x00\x10\x00", b"\x00\x00\x11\x00", b"\x00\x00\x12\x00"]:
                scwcommand = SCWCommand()
                command.read(4)#序号之类的东西
                scwcommand.offset = command.p
                strOffset = command.readU32()
                scwcommand.content = readUntilZero(self.content, strOffset)
                self.strs.append(scwcommand)
            if command.p == len(command.data):
                break
    
    def dumpTexts(self):
        self.readCommand()
        res = []
        for i in self.strs:
            res.append(i.content)
        return res
    
    def append_trans(self, translist):
        self.readCommand()
        for command in self.strs:
            new_text = translist.pop(0).encode("932")
            offset = to_bytes(len(self.content), 4)
            self.content += new_text + b"\x00"
            self.command = self.command[:command.offset] + offset + self.command[command.offset + 4:]
    
    def save(self, path):
        self.contentL = len(self.content)
        self.totalL = len(self.command) + len(self.content) + len(self.unk2)
        res = (
            self.head +
            self.unk1 +
            to_bytes(self.totalL, 4) +
            to_bytes(self.commandL, 4) +
            to_bytes(self.contentL, 4) +
            self.unk2 +
            self.command +
            dec(self.content) +
            self.unk3
        )
        save_file_b(path, res)


class SCWCommand:
    def __init__(self) -> None:
        self.offset : int
        self.content : bytes

if __name__ == "__main__":
    print(dec(b"\x59\x54\x50\x4A\x04\x55\x47\x55\x5C\x50\x58\x0B\x47\x44\x43\x46\x5B\x5E\x12\x5C\x47\x50\x5A\x52\x5B\x4D\x1A\x56\x5D\x44\x5F\x1F\x6F\x72\x67\x6F\x61\x66\x72\x27\x63\x60\x67\x62\x67\x62\x2E\x62\x71\x68\x73\x33"))
