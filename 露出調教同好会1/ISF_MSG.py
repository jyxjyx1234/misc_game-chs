from Lib import *
import re,random, encoder

def splitText(text,lineLen=30):
    res = []
    while len(text) > lineLen:
        res.append(text[:lineLen])
        text = text[lineLen:]
    if text != "":
        res.append(text)
    return res

class ISF_OBJ():
    def __init__(self,data, idx) -> None:
        self.data = data
        self.datalen = len(data)
        self.id = idx

    def read_msg(self):
        patten = re.compile(rb'\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x1B\x00\x00\x80\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00|\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x1B\x00\x00\x80\x06\xFF([\x01-\xff]+?)\x00|\x00\x2B([\x00-\xff][\x00-\xff])\x03\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00|\x00\x2B\x80([\x00-\xff][\x00-\xff])\x03\x08\x1B\x00\x00\x80\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00')
        matches = patten.finditer(self.data)
        result = []
        for m in matches:
            if m.group(1):
                length = m.group(1)
            if m.group(4):
                length = m.group(4)
            if m.group(6):
                length = m.group(6)
            if m.group(9):
                length = m.group(9)
            length = from_bytes(length)

            if m.group(3):
                content = self.data[m.start() + 15 : m.start()+length]
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)

                result.append({
                'name' : f"{from_bytes(m.group(2))}",
                'ori' : content.decode("sb"),
                'message' : content.decode("sb"),
                })
                
            elif m.group(5):
                content = self.data[m.start() + 12:m.start()+length]
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)
                result.append({
                'name' : "",  
                'ori' : content.decode("sb"),             
                'message' : content.decode("sb"),
                })
            
            elif m.group(6):
                content = self.data[m.start() + 10:m.start()+length]
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)
                result.append({
                'name' : "",  
                'ori' : content.decode("sb"),             
                'message' : content.decode("sb"),
                })
            
            elif m.group(9):
                content = self.data[m.start() + 16 : m.start()+length]
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)

                result.append({
                'name' : f"{from_bytes(m.group(10))}",
                'ori' : content.decode("sb"),
                'message' : content.decode("sb"),
                })
        return result

    def trans(self, transdict, mode = "sjis"):
        patten = re.compile(rb'\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x1B\x00\x00\x80\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00|\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x1B\x00\x00\x80\x06\xFF([\x01-\xff]+?)\x00|\x00\x2B([\x00-\xff][\x00-\xff])\x03\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00|\x00\x2B\x80([\x00-\xff][\x00-\xff])\x03\x08\x1B\x00\x00\x80\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00')
        matches = patten.finditer(self.data)
        data = [to_bytes(i, 1) for i in self.data]

        for m in matches:
            if m.group(1):
                length = m.group(1)
            if m.group(4):
                length = m.group(4)
            if m.group(6):
                length = m.group(6)
            if m.group(9):
                length = m.group(9)
            length = from_bytes(length)
            if m.group(3):
                content = b"".join(data[m.start() + 15 : m.start()+length])
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x06\x00\xFF".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 16
                trans = b"\x00\x2B" + to_bytes(newLen, 2) + b"\x03\x08\x1B\x00\x00\x80\x04" + m.group(2) + b"\x06\x00\xFF" + trans + b"\x00"
                
            elif m.group(5):
                content = b"".join(data[m.start() + 12 : m.start()+length])
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x00".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 13
                trans = b"\x00\x2B" + to_bytes(newLen, 2) + b"\x03\x08\x1B\x00\x00\x80\x06\xFF" + trans + b"\x00"
            
            elif m.group(6):
                content = b"".join(data[m.start() + 10 : m.start()+length])
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x06\x00\xFF".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 11
                trans = b"\x00\x2B" + to_bytes(newLen, 2) + b"\x03\x04" + m.group(7) + b"\x06\x00\xFF" + trans + b"\x00"
            
            if m.group(9):
                content = b"".join(data[m.start() + 16 : m.start()+length])
                content = content.split(b"\x00\x06\xff")
                content = b"".join(content)
                content = content.split(b"\x00")
                content = b"".join(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x06\x00\xFF".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 17
                trans = b"\x00\x2B\x80" + to_bytes(newLen, 2) + b"\x03\x08\x1B\x00\x00\x80\x04" + m.group(10) + b"\x06\x00\xFF" + trans + b"\x00"
            data[m.start() : m.start() + length] = [trans] + [b""] * (length - 1)

        self.data = b"".join(data)
        self.datalen = len(self.data)
    
    def get_bytes(self) -> bytes:
        return self.data
        