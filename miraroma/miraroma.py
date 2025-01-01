from Lib import *

class Reader(BytesReader):
    def readStr(self):
        length = self.readU32()
        msg = self.read(length * 2)
        return msg.decode('utf-16')
    
    def readOP(self):
        

class BINFile:
    def __init__(self, data) -> None:
        self.data = Reader(data)

    def 