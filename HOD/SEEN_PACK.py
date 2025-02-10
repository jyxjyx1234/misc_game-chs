from Lib import *

def LZdecompr(buff,outlen):
    uncompr=[]
    iSrc=0
    while iSrc<len(buff):
        code=buff[iSrc]
        iSrc+=1
        for i in range(8):
            if (code>>i) & 1:
                uncompr.append(buff[iSrc])
                iSrc+=1
                if iSrc>=len(buff) or len(uncompr)>=outlen: 
                    break
            else:
                count=(buff[iSrc] & 0xF)+2
                pos=(buff[iSrc])>>4 + buff[iSrc+1]<<4
                iSrc+=2
                for j in range(count):
                    uncompr.append(uncompr[-pos])
                if iSrc>=len(buff) or len(uncompr)>=outlen: 
                    break
    return bytes(uncompr)

class SEEN_ENTRY:
    idx : int
    offset : int
    size : int

    def __init__(self):
        pass

    def read(self, data: BytesReader):
        self.offset = data.readU32()
        self.size = data.readU32()


class SEEN_PACK:
    def __init__(self, filepath):
        self.filepath = filepath
        self.data = BytesReader(open_file_b(self.filepath))
        self.read_Entry()
        
    def read_Entry(self):
        self.entrys = []
        msgStart = -1
        idx = 0
        while True:
            if self.data.p == msgStart:
                break
            entry = SEEN_ENTRY()
            entry.read(self.data)
            entry.idx = idx
            idx += 1
            self.entrys.append(entry)
            if entry.offset != 0 and msgStart == -1:
                msgStart = entry.offset

    def unpack(self, outdir):
        os.makedirs(outdir, exist_ok=True)
        for entry in self.entrys:
            if entry.offset == 0:
                continue
            self.data.seek(entry.offset)
            data = SEEN_FILE(self.data.read(entry.size))
            outpath = os.path.join(outdir, f"{entry.idx}.bin")
            SEEN_FILE.uncompressed(data, outpath)

class SEEN_FILE:
    def __init__(self, data):
        self.data = BytesReader(data)
        self.headerlen = self.data.readU32()
        self.unk1 = self.data.readU32()
        self.unk2 = self.data.readU32()
        self.part1Count = self.data.readU32()
        self.part1len = self.data.readU32()
        self.nameOffset = self.data.readU32()
        self.nameCount = self.data.readU32()
        self.namePartLen = self.data.readU32()
        self.textOffset = self.data.readU32()
        self.textUncompressedSize = self.data.readU32()
        self.textCompressedSize = self.data.readU32()
        self.unk3 = self.data.read(self.headerlen - self.data.tell())
        self.part1 = self.data.read(self.part1len)
        self.names = self.data.read(self.namePartLen)
        self.texts = self.data.read(self.textCompressedSize)
    
    def uncompressed(self, out):
        self.data.seek(0)
        header = self.data.read(self.textOffset)
        res = header + LZdecompr(self.texts, self.textUncompressedSize)
        # res = header + self.texts
        save_file_b(out, res)

if __name__ == "__main__":
    seen = SEEN_PACK("seen.txt")
    seen.unpack("seen")