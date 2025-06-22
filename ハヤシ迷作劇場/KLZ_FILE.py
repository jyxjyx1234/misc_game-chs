from Lib import *
from lzss import *

class KLZFile():
    def __init__(self):
        pass

    def read_from_file(self, filename):
        self.data = BytesReader(open_file_b(filename))
        self.magic = self.data.read(4)
        self.filenum = self.data.readU32()
        self.size = self.data.readU32()
        self.unk = self.data.readU32()
        self.entries = []
        for i in range(self.filenum):
            entry = {}
            entry['name'] = self.data.read(0x1c).decode('932').rstrip('\x00')
            entry['unk1'] = self.data.readU32()
            entry['size'] = self.data.readU32()
            entry['orisize'] = self.data.readU32()
            # if entry['size'] > entry['orisize']:
            #     print(f"Warning: Compressed size for {entry['name']} is larger than original size: {entry['size']} > {entry['orisize']}")
            entry['unk2'] = self.data.readU32()
            entry["offset"] = self.data.readU32()
            entry['unk3'] = self.data.readU32()
            # print(entry['unk2'])
            self.entries.append(entry)
    
    def unpack(self, outdir):
        os.makedirs(outdir, exist_ok=True)
        for entry in self.entries:
            outfilename = os.path.join(outdir, entry['name'])
            print(f"Unpacking {entry['name']} to {outfilename}")
            self.data.seek(entry['offset'] + 0x10 + self.filenum * 0x34)
            filedata = self.data.read(entry['size'])
            filedata = LZSS_decompress(filedata)
            if len(filedata) != entry['orisize']:
                print(f"Warning: Size mismatch for {entry['name']}: expected {entry['orisize']}, got {len(filedata)}")
            pos = from_bytes(filedata[0x14:0x18])
            filedata = filedata[:pos] + LZSS_decompress(filedata[pos:])
            save_file_b(outfilename, filedata)

    def pack(self, orifilename, indir, outfilename):
        try:
            os.makedirs(os.path.dirname(outfilename), exist_ok=True)
        except Exception as e:
            pass
        self.read_from_file(orifilename)
        offset = 0
        for entry in self.entries:
            newdata = open_file_b(os.path.join(indir, entry['name']))
            pos = from_bytes(newdata[0x14:0x18])
            strpart = LZSS_compress(newdata[pos:])
            newdata = newdata[:pos] + strpart
            newdata = newdata[:0x1c] + to_bytes(len(strpart), 4) + newdata[0x20:]
            entry["orisize"] = len(newdata)
            newdata = LZSS_compress(newdata)
            entry['size'] = len(newdata)
            entry["data"] = newdata
            entry["offset"] = offset
            offset += len(newdata)
        self.size = offset + 0x10 + self.filenum * 0x34
        with open(outfilename, 'wb') as f:
            f.write(self.magic)
            f.write(to_bytes(self.filenum, 4))
            f.write(to_bytes(self.size, 4))
            f.write(to_bytes(self.unk, 4))
            for entry in self.entries:
                f.write(entry['name'].encode('932').ljust(0x1c, b'\x00'))
                f.write(to_bytes(entry['unk1'], 4))
                f.write(to_bytes(entry['size'], 4))
                f.write(to_bytes(entry['orisize'], 4))
                f.write(to_bytes(entry['unk2'], 4))
                f.write(to_bytes(entry['offset'], 4))
                f.write(to_bytes(entry['unk3'], 4))
            for entry in self.entries:
                f.write(entry["data"])
            
if __name__ == "__main__":
    import sys
    if len(sys.argv) < 4:
        print("Usage: python KLZ_FILE.py unpack <ori_pack_file> <output_directory>")
        print("Usage: python KLZ_FILE.py pack <ori_pack_file> <input_directory> <output_pack_file>")
        sys.exit(1)
    if sys.argv[1] == "unpack":
        input_file = sys.argv[2]
        output_directory = sys.argv[3]
        klz_file = KLZFile()
        klz_file.read_from_file(input_file)
        klz_file.unpack(output_directory)
    elif sys.argv[1] == "pack":
        orifile = sys.argv[2]
        input_directory = sys.argv[3]
        output_file = sys.argv[4]
        klz_file = KLZFile()
        klz_file.pack(orifile, input_directory, output_file)
    else:
        print("Usage: python KLZ_FILE.py unpack <ori_pack_file> <output_directory>")
        print("Usage: python KLZ_FILE.py pack <ori_pack_file> <input_directory> <output_pack_file>")
        sys.exit(1)
