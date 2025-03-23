from Lib import *
from lzss import LZSS_decompress, LZSS_compress
import PIL.Image


class pixel:
    def __init__(self, b, g, r, a):
        self.r = r
        self.g = g
        self.b = b
        self.a = a

    def to_BGRAbytes(self):
        return bytes([self.b, self.g, self.r, self.a])

class IMGReader(BytesReader):
    def readPixel(self):
        return pixel(self.read(1)[0], self.read(1)[0], self.read(1)[0], self.read(1)[0])

class BMPFile:
    def __init__(self):
        pass

    def read_from_bytes(self, bytes, width, height):
        self.header = b"BM" + to_bytes(14 + 40 + len(bytes), 4) + b"\x00\x00\x00\x00" + to_bytes(14 + 40, 4) + to_bytes(40, 4) + to_bytes(width, 4) + to_bytes(height, 4) + to_bytes(1, 2) + to_bytes(32, 2) + to_bytes(0, 4) + to_bytes(0, 4) + to_bytes(0xec4, 4) + to_bytes(0xec4, 4) + to_bytes(0, 4) + to_bytes(0, 4)
        self.height = height
        self.width = width
        lines = []
        bytes = IMGReader(bytes)
        for i in range(height):
            line = []
            for j in range(width):
                line.append(bytes.readPixel().to_BGRAbytes())
            lines.append(b"".join(line))
        self.lines = lines
    
    def read_from_BMPdata(self, data):
        start = from_bytes(data[10:14])
        self.header = data[:start]
        self.width = from_bytes(data[18:22])
        self.height = from_bytes(data[22:26])
        data = IMGReader(data[start:])
        lines = []
        for i in range(self.height):
            line = []
            for j in range(self.width):
                line.append(data.read(4))
            lines.append(b"".join(line))
        lines.reverse()
        self.lines = lines
    
    def save_bmp(self, path):
        with open(path, "wb") as f:
            f.write(self.header)
            for i in range(self.height):
                f.write(self.lines[-(i + 1)])
    
    def get_bmp_bytes(self):
        out = [self.header]
        for i in range(self.height):
            out.append(self.lines[-(i + 1)])
        return b"".join(out)
    
    def get_bytes(self):
        out = []
        for i in range(self.height):
            out.append(self.lines[i])
        return b"".join(out)
    

class YGAFile:
    def __init__(self):
        pass

    def to_bmp(self, data) -> BMPFile:
        self.magic = data[0:4]
        self.width = from_bytes(data[4:8])
        self.height = from_bytes(data[8:12])
        self.isCompressed = from_bytes(data[12:16])
        self.unpackedSize = from_bytes(data[16:20])
        self.packedSize = from_bytes(data[20:24])
        self.data = data[24:]
        if self.isCompressed:
            self.data = LZSS_decompress(self.data)
        bmp = BMPFile()
        bmp.read_from_bytes(self.data, self.width, self.height)
        return bmp
    
    def to_png(self, data):
        self.to_bmp(data)
        data = IMGReader(self.data)
        img = PIL.Image.new("RGBA", (self.width, self.height))
        pixels = []
        for i in range(self.width * self.height):
            pixel = data.readPixel()
            pixels.append((pixel.r, pixel.g, pixel.b, pixel.a))
        img.putdata(pixels)
        return img

    def from_bmp(self, data) -> bytes:
        bmp = BMPFile()
        bmp.read_from_BMPdata(data)
        self.magic = b"YGA\x00"
        self.width = bmp.width
        self.height = bmp.height
        self.data = bmp.get_bytes()
        self.isCompressed = 0
        self.unpackedSize = len(self.data)
        self.packedSize = len(self.data)
        return self.to_bytes()
    
    def to_bytes(self) -> bytes:
        self.isCompressed = 0
        out = self.magic + to_bytes(self.width, 4) + to_bytes(self.height, 4) + to_bytes(self.isCompressed, 4) + to_bytes(self.unpackedSize, 4) + to_bytes(self.packedSize, 4) + self.data
        return out
    
if __name__ == "__main__":
    yga = YGAFile()
    data = open_file_b("fam00.yga")
    bmp = yga.to_bmp(data)
    # with open("test.bmp", "wb") as f:
    #     f.write(bmp)
    # print("Done")