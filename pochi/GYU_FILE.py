from Lib import *
from PIL import Image, ImageDraw
from lzss import *
import random
# from unpackgyu import unpack_gyu

class MersenneTwister:
    DefaultSeed     = 4357
    StateLength     = 624
    StateM          = 397
    MatrixA         = 0x9908B0DF
    SignMask        = 0x80000000
    LowerMask       = 0x7FFFFFFF
    TemperingMaskB  = 0x9D2C5680
    TemperingMaskC  = 0xEFC60000

    def __init__(self, seed: int):
        self.mt = [0] * self.StateLength
        self.mti = self.StateLength
        self.mag01 = [0, self.MatrixA]
        self.SRand(seed)

    def SRand(self, seed: int):
        for i in range(self.StateLength):
            upper = seed & 0xffff0000
            seed = (69069 * seed + 1) & 0xFFFFFFFF
            self.mt[i] = (upper | ((seed & 0xffff0000) >> 16)) & 0xFFFFFFFF
            seed = (69069 * seed + 1) & 0xFFFFFFFF

    def Rand(self) -> int:
        if self.mti >= self.StateLength:
            for kk in range(self.StateLength - self.StateM):
                y = (self.mt[kk] & self.SignMask) | (self.mt[kk + 1] & self.LowerMask)
                self.mt[kk] = self.mt[kk + self.StateM] ^ (y >> 1) ^ self.mag01[y & 1]

            for kk in range(self.StateLength - self.StateM, self.StateLength - 1):
                y = (self.mt[kk] & self.SignMask) | (self.mt[kk + 1] & self.LowerMask)
                self.mt[kk] = self.mt[kk + self.StateM - self.StateLength] ^ (y >> 1) ^ self.mag01[y & 1]

            y = (self.mt[self.StateLength - 1] & self.SignMask) | (self.mt[0] & self.LowerMask)
            self.mt[self.StateLength - 1] = self.mt[self.StateM - 1] ^ (y >> 1) ^ self.mag01[y & 1]

            self.mti = 0

        y = self.mt[self.mti]
        self.mti += 1

        y ^= y >> 11
        y ^= (y << 7) & self.TemperingMaskB
        y ^= (y << 15) & self.TemperingMaskC
        y ^= y >> 18

        return y & 0xFFFFFFFF



def reverse_deobfuscate(data: bytearray, key: int):
    rng = MersenneTwister(key)
    length = len(data)
    for _ in range(10):
        i1 = rng.Rand() % length
        i2 = rng.Rand() % length
        data[i1], data[i2] = data[i2], data[i1]

def deobfuscate(data: bytearray, key: int):
    rng = MersenneTwister(key)
    length = len(data)
    pairs = []
    for _ in range(10):
        i1 = rng.Rand() % length
        i2 = rng.Rand() % length
        pairs.append((i1, i2))
    pairs.reverse()
    for i1, i2 in pairs:
        data[i1], data[i2] = data[i2], data[i1]

class GYU_FILE:
    def __init__(self):
        pass

    def read(self, file):
        self.data = open_file_b(file)
        self.data_ = BytesReader(self.data)
        self.magic = self.data_.read(4)
        self.flag = self.data_.read(2)
        self.commod = self.data_.readU16()
        self.key = self.data_.read(4)
        self.BPP = self.data_.readU32()
        self.width = self.data_.readU32()
        self.height = self.data_.readU32()
        self.datasize = self.data_.readU32()
        self.alphasize = self.data_.readU32()
        self.palettesize = self.data_.readU32()

        self.palette = self.data_.read(self.palettesize * 4)
        self.imgdata = self.data_.read(self.datasize)
        self.alphadata = self.data_.read(self.alphasize)
        self.appdata = self.data_.read()

    def dec(self, key=None):
        if self.key != b"\xff\xff\xff\xff":
            self.imgdata = bytearray(self.imgdata)
            if self.key == b"\x00\x00\x00\x00" and key:
                reverse_deobfuscate(self.imgdata, key)
                self.key = b"\xff\xff\xff\xff"
            else:
                reverse_deobfuscate(self.imgdata, int.from_bytes(self.key, 'little'))
            self.imgdata = bytes(self.imgdata)

    def enc(self, key=None):
        self.imgdata = bytearray(self.imgdata)
        if self.key == b"\xff\xff\xff\xff" and key:
            deobfuscate(self.imgdata, key)
            self.key = b"\x00\x00\x00\x00"
        else:
            deobfuscate(self.imgdata, int.from_bytes(self.key, 'little'))
        self.imgdata = bytes(self.imgdata)

    def save(self, output_file):
        with open(output_file, 'wb') as f:
            f.write(self.magic)
            f.write(self.flag)
            f.write(self.commod.to_bytes(2, 'little'))
            f.write(self.key)
            f.write(self.BPP.to_bytes(4, 'little'))
            f.write(self.width.to_bytes(4, 'little'))
            f.write(self.height.to_bytes(4, 'little'))
            f.write(self.datasize.to_bytes(4, 'little'))
            f.write(self.alphasize.to_bytes(4, 'little'))
            f.write(self.palettesize.to_bytes(4, 'little'))
            f.write(self.palette)
            f.write(self.imgdata)
            f.write(self.alphadata)
            f.write(self.appdata)
    
    def to_png(self, output_file):
        # self.dec()
        self.width = (self.width + 3) & ~3
        if 0x100 == self.commod:
            pass
        elif 0x400 == self.commod:
            self.imgdata = LZSS_decompress(self.imgdata)
            self.alphadata = LZSS_decompress(self.alphadata)
        else:
            raise RuntimeError("不支持的压缩方式")
            # self.imgdata = unpack_gyu(self.imgdata, self.width * self.height * (self.BPP // 8))
            # self.alphadata = unpack_gyu(self.alphadata, self.width * self.height)
        if self.BPP == 8:
            img = Image.new('P', (self.width, self.height))
            if self.palette:
                palette_data = []
                for i in range(0, len(self.palette), 4):
                    palette_data.extend(self.palette[i:i+3])
                img.putpalette(palette_data, "BGR")
            print(len(self.imgdata))
            img.putdata(self.imgdata)
            if self.alphadata:
                alpha = Image.frombytes('L', (self.width, self.height), self.alphadata)
                img = img.convert('RGBA')
                img.putalpha(alpha)
                print(len(self.alphadata))
        elif self.BPP == 32:
            imgdata_ = bytearray()
            for i in range(0, len(self.imgdata), 4):
                b, g, r, a = self.imgdata[i:i+4]
                imgdata_.extend([b, g, r, a])
            img = Image.frombytes('RGBA', (self.width, self.height), bytes(imgdata_))
        else:
            imgdata_ = bytearray()
            for i in range(0, len(self.imgdata), 3):
                r, g, b = self.imgdata[i:i+3]
                imgdata_.extend([b, g, r])
        img = img.transpose(Image.FLIP_TOP_BOTTOM)
        img.save(output_file, 'PNG')

    def replace_img(self, new_img_path, output_path):
        try:
            os.makedirs(os.path.dirname(output_path), exist_ok=True)
        except Exception as e:
            pass
        oriwidth = self.width
        self.width = (self.width + 3) & ~3
        # self.key = b"\xff\xff\xff\xff"
        _ = Image.open(new_img_path)
        if _.mode == 'RGBA':
            new_img = Image.new('RGBA', (self.width, self.height), (0,0,0,0))
        else:
            new_img = Image.new('RGB', (self.width, self.height), (0,0,0))
        new_img.paste(_, (0,0,oriwidth,self.height))
        new_img = new_img.transpose(Image.FLIP_TOP_BOTTOM)
        if new_img.mode == 'RGBA':
            isCompressed = True
            if len(self.alphadata) == self.width * self.height:
                isCompressed = False
            self.alphadata = bytes(new_img.getchannel('A').tobytes())
            if isCompressed:
                self.alphadata = LZSS_compress(self.alphadata)
            self.alphasize = len(self.alphadata)
            print(self.alphasize)
        else:
            self.alphadata = b''
            self.alphasize = 0
        if self.BPP == 8:
            self.width, self.height = new_img.size
            # if new_img.mode != 'P':
            #     new_img = new_img.quantize(256)
            # print(new_img.getpalette())
            # new_img.show()
            # palette = bytearray()
            # pal = new_img.getpalette() or [0] * (256*3)  # Handle None palette case
            # for i in range(0, 256*3, 3):
            #     r, g, b = pal[i:i+3]
            #     palette.extend([b, g, r, 0])
            # self.palette = bytes(palette)
            if self.palette:
                palette_data = []
                for i in range(0, len(self.palette), 4):
                    palette_data.extend(self.palette[i:i+3])
            palette_img = Image.new("P", (1, 1))
            palette_img.putpalette(palette_data, "BGR")
            new_img = new_img.convert('RGB')
            new_img = new_img.quantize(palette=palette_img, dither=Image.NONE)
            # new_img.show()
            self.palettesize = 256
            self.BPP = 8
            self.imgdata = bytes(new_img.tobytes())
            if self.commod == 0x400:
                self.imgdata = LZSS_compress(self.imgdata)
                # self.commod == 0x100
            elif self.commod == 0x800:
                self.commod = 0x400
                # self.imgdata = gyu_compress(self.imgdata)
                self.imgdata = LZSS_compress(self.imgdata)
            self.datasize = len(self.imgdata)
            print(self.datasize, self.width*self.height)
        elif self.BPP == 24:
            self.width, self.height = new_img.size
            new_img = new_img.convert('RGB')
            imgdata_ = bytearray()
            for r, g, b in new_img.getdata():
                imgdata_.extend([b, g, r])
            self.imgdata = bytes(imgdata_)
            if self.self.commod == 0x400:
                self.imgdata = LZSS_compress(self.imgdata)
            elif self.commod == 0x800:
                self.imgdata = gyu_compress(self.imgdata)
            self.datasize = len(self.imgdata)
        self.width = oriwidth
        self.enc()
        self.save(output_path)

if __name__ == "__main__":

    import sys

    def help():
        print("Usage: python GYU_FILE.py <mode> <oripath> <outpath>")
        print("mode: enc or dec")
        print("oripath: path to the original files")
        print("outpath: path to save the processed files")
        print("Usage: python GYU_FILE.py 2gyu <ori_gyupath> <new_pngpath> <outpath>")
        sys.exit(1)
    
    try:
        mode = sys.argv[1]
        oripath = sys.argv[2]
        outpath = sys.argv[3]
    except:
        help()
    if mode == "dec":
        keys = open_json("seeds.json")
        os.makedirs(outpath, exist_ok=True)
        for fn in os.listdir(oripath):
            if fn.endswith('.gyu'):
                idx = int(fn.split('.')[0])
                f = GYU_FILE()
                f.read(os.path.join(oripath, fn))
                f.dec(keys[idx])
                f.save(os.path.join(outpath, fn))
                os.system(f"echo y | gyu2png.exe {os.path.join(outpath, fn)} > NUL")
    elif mode == "enc":
        keys = open_json("seeds.json")
        os.makedirs(outpath, exist_ok=True)
        for fn in os.listdir(oripath):
            if fn.endswith('.gyu'):
                os.system(f"echo y | png2gyu.exe {os.path.join(outpath, fn)}")
        for fn in os.listdir(oripath):
            if fn.endswith('.gyu'):
                idx = int(fn.split('.')[0])
                f = GYU_FILE()
                f.read(os.path.join(oripath, fn))
                f.enc(keys[idx])
                f.save(os.path.join(outpath, fn))
    elif mode == "2png":
        keys = open_json("seeds.json")
        os.makedirs(outpath, exist_ok=True)
        for fn in os.listdir(oripath):
            if fn.endswith('.gyu'):
                idx = int(fn.split('.')[0])
                f = GYU_FILE()
                f.read(os.path.join(oripath, fn))
                f.dec(keys[idx])
                f.to_png(os.path.join(outpath, fn.replace('.gyu', '.png')))
    elif mode == "2gyu":
        gyupath = sys.argv[2]
        imgpath = sys.argv[3]
        outpath = sys.argv[4]
        f = GYU_FILE()
        f.read(gyupath)
        f.replace_img(imgpath, outpath)
    else:
        help()

#         if self.key != b"\xff\xff\xff\xff":
#             self.imgdata = bytearray(self.imgdata)
#             if self.key == b"\x00\x00\x00\x00":
#                 reverse_deobfuscate(self.imgdata, key)
#             else:
#                 reverse_deobfuscate(self.imgdata, int.from_bytes(self.key, 'little'))
#             self.imgdata = bytes(self.imgdata)
        
#         if 0x100 == self.commod:
#             pass
#         elif 0x800 == self.commod:
#             self.imgdata = LZSS_decompress(self.imgdata)
#         else:
#             self.imgdata = LZSS_decompress(self.imgdata)
#         self.alphadata = LZSS_decompress(self.alphadata)

#     def to_png(self, output_file):
#         if self.BPP == 8:
#             img = Image.new('P', (self.width, self.height))
#             if self.palette:
#                 palette_data = []
#                 for i in range(0, len(self.palette), 4):
#                     palette_data.extend(self.palette[i:i+3])
#                 img.putpalette(palette_data)
#             img.putdata(self.imgdata)
#             if self.alphadata:
#                 alpha = Image.frombytes('L', (self.width, self.height), self.alphadata)
#                 img = img.convert('RGBA')
#                 img.putalpha(alpha)
#         else:
#             imgdata_ = bytearray()
#             for i in range(0, len(self.imgdata), 3):
#                 r, g, b = self.imgdata[i:i+3]
#                 imgdata_.extend([b, g, r])  # Convert RGB to BGR
#             self.imgdata = bytes(imgdata_)
#             rgba_data = bytearray()
#             for i in range(0, len(self.imgdata), self.BPP // 8):
#                 rgba_data.extend(self.imgdata[i:i+self.BPP//8])
#             if len(self.alphadata) == self.width * self.height:
#                 img = Image.new('RGBA', (self.width, self.height))
#                 for i in range(self.width * self.height):
#                     if i*3 + 2 < len(self.imgdata):
#                         r, g, b = self.imgdata[i*3:i*3+3]
#                         a = self.alphadata[i]
#                         rgba_data[i*4:i*4+4] = bytes([b, g, r, a])
#             else:
#                 img = Image.frombytes('RGBA' if self.BPP == 32 else 'RGB', 
#                                         (self.width, self.height), bytes(rgba_data))
#         img.save(output_file, 'PNG')
#         return img

# keys = open_json("seeds.json")
# f = GYU_FILE()
# f.read("1600.gyu", keys[1600])
# f.to_png("1600.png")