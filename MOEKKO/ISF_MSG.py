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
    content = content.split(b"\x00")
    # content = b"".join(content)
    content = "".encode("932").join(content)
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
        patten = re.compile(rb'\x2B(?P<length1>[\x00-\xff]{2})\xff(?P<text1>[\x01-\xff]*?)\x00|\x2B(?P<lengthruby>[\x00-\xff]{2})\x03\x06\xff(?P<textruby>[\x01-\xff]*?)\x00|\x2b(?P<lengthname>[\x00-\xff]{2})\x03\x04(?P<nameid>[\x00-\xff])|\x2B\x80(?P<length2>[\x00-\xff]{2})\xff(?P<text2>[\x01-\xff]*?)\x00')
        '''
        '''

        matches = patten.finditer(self.data)
        out = OriJsonOutput()
        for m in matches:
            if m.group("length1"):
                length = from_bytes(m.group("length1"))
                content = self.data[m.start() + 4:m.start() + length - 2]
                content = process_content(content)
                out.add_text(content.decode("sb"))
                out.append_dict()
            
            elif m.group("length2"):
                length = from_bytes(m.group("length2"))
                content = self.data[m.start() + 5:m.start() + length - 2]
                content = process_content(content)
                out.add_text(content.decode("sb"))
                out.append_dict()
            
            elif m.group("lengthruby"):
                length = from_bytes(m.group("lengthruby"))
                content = self.data[m.start() + 6:m.start() + length - 2]
                content = process_content(content)
                # result.append({
                # # 'name' : f"{from_bytes(m.group(2))}",
                # 'ori' : content.decode("sb"),
                # 'message' : content.decode("sb"),
                # 'type' : "ruby"
                # })
            
            elif m.group("lengthname"):
                nameid = from_bytes(m.group("nameid"))
                out.add_name(f"{nameid}")
                
            # elif m.group(5):
            #     content = self.data[m.start() + 11:m.start()+length]
            #     content = process_content(content)
            #     result.append({
            #     'name' : "",  
            #     'ori' : content.decode("sb"),             
            #     'message' : content.decode("sb"),
            #     })
            
            # elif m.group(6):
            #     content = self.data[m.start() + 16:m.start()+length]
            #     content = process_content(content)
            #     result.append({
            #     'name' : f"{from_bytes(m.group(7))}",
            #     'ori' : content.decode("sb"),             
            #     'message' : content.decode("sb"),
            #     })
        return out

    def trans(self, transdata):
        patten = re.compile(rb'\x2B(?P<length1>[\x00-\xff]{2})\xff(?P<text1>[\x01-\xff]*?)\x00|\x2B(?P<lengthruby>[\x00-\xff]{2})\x03\x06\xff(?P<textruby>[\x01-\xff]*?)\x00|\x2b(?P<lengthname>[\x00-\xff]{2})\x03\x04(?P<nameid>[\x00-\xff])|\x2B\x80(?P<length2>[\x00-\xff]{2})\xff(?P<text2>[\x01-\xff]*?)\x00')
        matches = patten.finditer(self.data)
        data = [to_bytes(i, 1) for i in self.data]

        for m in matches:
            pos = m.start()
            if m.group("length1") or m.group("length2"):
                if m.group("length1"):
                    orilength = from_bytes(m.group("length1"))
                elif m.group("length2"):
                    orilength = from_bytes(m.group("length2"))
                trans = transdata.pop(0)
                transb = trans["message"].encode("sb")
                newlength = len(transb) + 2 + 4
                if newlength >= 0x80:
                    # print(trans["message"])
                    # print(newlength)
                    newlength = len(transb) + 2 + 5
                    newdata = b"\x2B\x80" + to_bytes(newlength, 2) + b"\xff" + transb + b"\x00" + b"\x00"
                else:
                    newdata = b"\x2B" + to_bytes(newlength, 2) + b"\xff" + transb + b"\x00" + b"\x00"
                data[pos] = newdata
                for i in range(pos + 1, pos + orilength):
                    data[i] = b""
            elif m.group("lengthruby"):
                orilength = from_bytes(m.group("lengthruby"))
                for i in range(pos + 6, pos + orilength):
                    if data[i] != b"\x00":
                        data[i] = b"\x01"
                    else:
                        break

        self.data = b"".join(data)
        self.datalen = len(self.data)
    
    def get_bytes(self) -> bytes:
        return self.data
        