from Lib import *
import re
import os

def replaceByteText(data, start, end, trans):
    data[start] = trans
    i = start + 1
    while i != end:
        data[i] = b""
        i += 1

def replaceNameCode(text):
    FName = "葵"
    LName = "春日"
    text = text.replace("$FName", FName).replace("$LName", LName)
    return text

def changeNameToCode(text):
    FName = "葵"
    LName = "春日"
    text = text.replace(FName, "$FName").replace(LName, "$LName")
    return text


class Message:
    def __init__(self, data, offset) -> None:
        self.len :int = from_bytes(data[offset : offset + 2])
        self.content : bytes = data[offset + 2 : offset + 2 + self.len - 1]
        self.offset : int = offset
        self.end : int = offset + 2 + self.len
        self.type : str

    def toBytes(self) -> bytes:
        return to_bytes(len(self.content) + 1, 2) + self.content + b'\x00'

class CSBFile:
    def __init__(self) -> None:
        pass

    def read(self, data):
        if type(data) == type(""):
            self.path = data
            data = open_file_b(self.path)
        self.data = data

        msgMatches = re.finditer(rb'(\x24\x4E\x61\x6D\x65\x00)|(\x24\x4D\x73\x67\x00)|(\x44\x6F\x53\x65\x6C\x65\x63\x74\x00)', data)

        self.messages = []
        for match in msgMatches:
            offset = match.end()
            if match.group(1):
                t = "name"
            if match.group(2):
                t = "msg"
            if match.group(3):
                t = "select"
            if t != "select":
                content = Message(data, offset)
                content.type = t
                self.messages.append(content)
            else:
                while True:
                    content = Message(data, offset)
                    try:
                        content.content.decode("cp932")
                        if b"\x00" in content.content:
                            break
                        if content.content == b"":
                            break
                    except:
                        break
                    content.type = t
                    self.messages.append(content)
                    offset = content.end
    
    def dumpText(self, outPath):
        f = open(outPath, "w", encoding="utf8")
        for msg in self.messages:
            text = msg.content.decode("cp932")
            f.write(f"@{msg.offset}-{msg.end}\n")
            if msg.type == "name":
                f.write(f"name&{text}\n")
            else:
                f.write(f"msg&&{text}\n")
        f.close()

    def trans(self, transFilePath, outPath, h : HanziReplacer):
        dataList = [to_bytes(i, 1) for i in self.data]
        f = open(transFilePath, "r", encoding="utf8").readlines()
        for l in f:
            if l == "\n":
                continue
            if l[0] == "@":
                start, end = l[1:-1].split("-")
            else:
                text = l[5:-1]
                text = h.hanzitihuan(text)
                text = replace_halfwidth_with_fullwidth(text)
                text = changeNameToCode(text)
                text = text.replace("「「", "「").replace("」」", "」")
                textBytes = text.encode("cp932")
                textBytes = to_bytes(len(textBytes) + 1, 2) + textBytes + b'\x00'
                replaceByteText(dataList, int(start), int(end), textBytes)
        data = b"".join(dataList)
        save_file_b(outPath, data)

if __name__ == "__main__":
    pass