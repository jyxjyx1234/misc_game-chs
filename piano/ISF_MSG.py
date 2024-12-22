from Lib import *
import re,random

class ISF_OBJ():
    def __init__(self,data) -> None:
        self.data = data
        self.datalen = len(data)
        if data[:5] == b'\x44\x0a\x0b\x00\x00':
            self.type = 'msg'
            self.read_msg()
        else:
            self.type = 'other'

    def read_msg(self):
        patten = re.compile(rb'([\x00-\xff]*)([\x00-\xff])([\x00-\xff][\x00-\x02]\x00\x00\x00\x03[\x00-\xff]*?\x11)([\x00-\xff])(\x00\x00\x00\xff)([\x01-\xff]*?)(\x00[\x00-\xff]*)')
        match = patten.match(self.data)
        if not match:
            print(self.data)
            raise RuntimeError
        self.p1 = match.group(1)
        self.len = match.group(2)[0]
        self.p2 = match.group(3)
        self.nameid = match.group(4)[0]
        self.p3 = match.group(5)
        self.text = match.group(6)
        self.p4 = match.group(7)

    def trans(self, transdict, mode = "sjis"):
        if self.type != 'msg':
            self.delta_len = 0
            return
        oristr = self.text.decode('sjis')
        transstr = transdict[oristr]
        #transstr = transdict.get(oristr,oristr)
        #transstr = "撈襪" * random.randint(2,5)

        if mode == "gbk":
            transstr = replace_symbol_for_gbk(transstr)
            transb = transstr.encode('gbk',errors='ignore')
        else:
            transb = transstr.encode('sjis')

        self.delta_len = len(transb) - len(self.text)
        self.text = transb
        self.len += self.delta_len
        self.datalen += self.delta_len
    
    def get_bytes(self) -> bytes:
        if self.type == 'msg':
            out = []
            out.append(self.p1)
            try:
                out.append(to_bytes(self.len,1))
                if self.len > 255:
                    raise RuntimeError
            except:
                print(self.data)
                print(self.len - self.delta_len)
                raise RuntimeError
            out.append(self.p2)
            out.append(to_bytes(self.nameid,1))
            out.append(self.p3)
            out.append(self.text)
            out.append(self.p4)
            return b''.join(out)
        else:
            return self.data
        