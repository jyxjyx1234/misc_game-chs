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

def process_content(content):
    content = content.split(b"\x00\x06\xff")
    content = b"".join(content)
    content = content.split(b"\x00")
    content = b"".join(content)
    return content

def get_end_zero(content):
    for i in range(1, len(content)):
        if content[-i] != 0:
            break
    return i - 1

class ISF_OBJ():
    def __init__(self,data, idx) -> None:
        self.data = data
        self.datalen = len(data)
        self.id = idx

    def read_msg(self):
        patten = re.compile(rb'\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x5a\x00\x00\x80\x04([\x00-\xff])\x06\x00\xff([\x01-\xff]+?)\x00|\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x5a\x00\x00\x80\xFF([\x01-\xff]+?)\x00|\x00\x2B\x80([\x00-\xff][\x00-\xff])\x03\x08\x5a\x00\x00\x80\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00')

        '''
        1: 长度 2：人名 3：文本（15字节）
        4：长度 5：文本（11字节）
        6：长读 7：人名 8：文本（16字节）
        '''

        matches = patten.finditer(self.data)
        result = []
        for m in matches:
            if m.group(1):
                length = m.group(1)
            if m.group(4):
                length = m.group(4)
            if m.group(6):
                length = m.group(6)
            length = from_bytes(length)

            

            if m.group(3):
                content = self.data[m.start() + 15 : m.start()+length]
                content = process_content(content)
                result.append({
                'name' : f"{from_bytes(m.group(2))}",
                'ori' : content.decode("sb"),
                'message' : content.decode("sb"),
                })
                
            elif m.group(5):
                content = self.data[m.start() + 11:m.start()+length]
                content = process_content(content)
                result.append({
                'name' : "",  
                'ori' : content.decode("sb"),             
                'message' : content.decode("sb"),
                })
            
            elif m.group(6):
                content = self.data[m.start() + 16:m.start()+length]
                content = process_content(content)
                result.append({
                'name' : f"{from_bytes(m.group(7))}",
                'ori' : content.decode("sb"),             
                'message' : content.decode("sb"),
                })
        return result

    def trans(self, transdict, mode = "sjis"):
        patten = re.compile(rb'\x04\x16\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x5a\x00\x00\x80\x04([\x00-\xff])\x06\x00\xff([\x01-\xff]+?)\x00|\x04\x16\x00\x2B([\x00-\xff][\x00-\xff])\x03\x08\x5a\x00\x00\x80\xFF([\x01-\xff]+?)\x00|\x04\x16\x00\x2B\x80([\x00-\xff][\x00-\xff])\x03\x08\x5a\x00\x00\x80\x04([\x00-\xff])\x06\x00\xFF([\x01-\xff]+?)\x00')
        '''
        1: 长度 2：人名 3：文本（17字节）
        4：长度 5：文本（13字节）
        6：长度 7：人名 8：文本（18字节）
        '''
        matches = patten.finditer(self.data)
        data = [to_bytes(i, 1) for i in self.data]

        for m in matches:
            if m.group(1):
                length = m.group(1)
            if m.group(4):
                length = m.group(4)
            if m.group(6):
                length = m.group(6)
            length = from_bytes(length)
            if m.group(3):
                content = b"".join(data[m.start() + 17 : m.start()+length])
                content = process_content(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x06\x00\xFF".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 17
                trans = b"\x04\x16\x00\x2B" + to_bytes(newLen, 2) + b"\x03\x08\x5a\x00\x00\x80\x04" + m.group(2) + b"\x06\x00\xFF" + trans
                
            elif m.group(5):
                content = b"".join(data[m.start() + 13 : m.start()+length])
                content = process_content(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x00".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 13
                trans = b"\x04\x16\x00\x2B" + to_bytes(newLen, 2) + b"\x03\x08\x5a\x00\x00\x80\xFF" + trans
            
            elif m.group(6):
                content = b"".join(data[m.start() + 18 : m.start()+length])
                content = process_content(content)
                trans = transdict[content.decode("sb")]
                #trans = splitText(transdict[content.decode("sb")])
                #trans = [t.encode("sb") for t in trans]
                #trans = b"\x06\x00\xFF".join(trans)
                trans = trans.encode("sb")
                newLen = len(trans) + 18
                trans = b"\x04\x16\x00\x2B\x80" + to_bytes(newLen, 2) + b"\x03\x08\x5a\x00\x00\x80\x04" + m.group(7) + b"\x06\x00\xFF" + trans
            data[m.start() : m.start() + length] = [trans] + [b""] * (length - 1)

        self.data = b"".join(data)
        self.datalen = len(self.data)
    
    def get_bytes(self) -> bytes:
        return self.data
        