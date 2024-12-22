from Lib import *
from GSD_GLOBAL_DAT import GSD_GLOBAL_DAT

class SPT_CONTENT_PARA:
    idx : int
    def __init__(self) -> None:
        pass

def read_u32_to_str(data:BytesReader, i = 1) -> str:
    out = ""
    for _ in range(i):
        out += f"u32({data.readU32()})||"
    return out

def read_zero(data:BytesReader, i = 1) -> None:
    for _ in range(i):
        if data.read() != b"\x00":
            raise RuntimeError

def read_str(data:BytesReader) -> str:
    out = ""
    len = data.readU32()
    data.read_zero(9)
    text = data.read(len)
    data.read_zero()
    return f"{text.decode("932")}||"

class SPT_FILE:
    def __init__(self, path) -> None:
        self.path = path
        self.data = open_file_b(path)
        self.global_dat = GSD_GLOBAL_DAT(os.path.join(os.path.dirname(path), "GSD_GLOBAL.DAT"))
    
    def read(self):
        data = BytesReader(self.data)
        start = self.data.find(b"\x00\x00\x00\x00\xff\xff\xff\xff\x00\x00\x00\x00") + 12
        self.header = data.read(start)
        while True:
            self.read_content_para(data)
    
    def read_content_para(self, data:BytesReader) -> SPT_CONTENT_PARA:
        para = SPT_CONTENT_PARA()
        para.idx = data.readU32()
        para.p1 = data.readU32()
        para.p2 = data.readU32()
        para.p3 = data.readU32()
        para.conent = []
        while True:
            op = data.readU32()
            match op:
                case 1:
                    content = "#1||"
                    content += read_u32_to_str(data)
                    para.conent.append(content)
                case 
                case 0x20:
                    content = "#20||"
                    content += read_u32_to_str(data, 5)
                    read_zero(data, 1)
                case 0x21:
                    content = "#21||"
                    content += read_u32_to_str(data, 5)
                    content += read_str(data)
                    para.conent.append(content)
                case 0x22:
                    content = "#22||"
                    content += read_u32_to_str(data, 2)
                    para.conent.append(content)
                case 0x23:
                    content = "#23||"
                    content += read_u32_to_str(data, 2)
                    content += read_str(data)
                    para.conent.append(content)
                case 0xffffffff:
                    read_zero(data, 4)
                    break

        return para