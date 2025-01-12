from Lib import *
from lzss import LZSS_decompress, LZSS_compress
from YGA_file import YGAFile

class DatFile:
    def __init__(self, filename):
        self.filename = filename
        self.data = open_file_b(self.filename)
        self.magic = self.data[0:8]
        self.filenum = from_bytes(self.data[8:12])
        self.entriesData = self.data[12 : 12 + 0x10c * self.filenum]
        self.readEntries()
        

    def readEntries(self):
        self.entries = []
        for i in range(self.filenum):
            entryData = self.entriesData[i * 0x10c : (i + 1) * 0x10c]
            entry = {}
            entry['filename'] = entryData[0:0x100].strip(b'\x00').decode('932')
            if entry['filename'].endswith('.yga'):
                entry['filename'] = entry['filename'].replace('.yga', '_yga.bmp')
            entry['offset'] = from_bytes(entryData[0x100:0x104])
            entry['oriSize'] = from_bytes(entryData[0x104:0x108])
            entry['packedSize'] = from_bytes(entryData[0x108:0x10c])
            self.entries.append(entry)

    def decompress(self, data):
        return LZSS_decompress(data)

    def compress(self, data):
        return data
    
    def conv_yga(self, data):
        yga = YGAFile()
        return yga.to_bmp(data)
    
    def gen_yga(self, data):
        yga = YGAFile()
        return yga.from_bmp(data)

    def unpack(self, output):
        os.makedirs(output, exist_ok=True)
        for entry in self.entries:
            data = self.data[entry['offset'] : entry['offset'] + entry['packedSize']]
            if entry['oriSize'] != entry['packedSize']:
                data = self.decompress(data)
            if entry['filename'].endswith('_yga.bmp'):
                bmp = self.conv_yga(data)
                data = bmp.get_bmp_bytes()
            outpath = os.path.join(output, entry['filename'])
            os.makedirs(os.path.dirname(outpath), exist_ok=True)
            with open(outpath, 'wb') as f:
                f.write(data)

    def pack(self, input, output):
        try:
            os.makedirs(os.path.dirname(output), exist_ok=True)
        except:
            pass
        newentry = []
        newdata = []
        offset = 12 + 0x10c * self.filenum
        for entry in self.entries:
            data = open_file_b(os.path.join(input, entry['filename']))
            if entry['filename'].endswith('_yga.bmp'):
                data = self.gen_yga(data)
                entry['filename'] = entry['filename'].replace('_yga.bmp', '.yga')
            entry['oriSize'] = len(data)
            entry['packedSize'] = len(data)
            entry['offset'] = offset
            offset += entry['packedSize']
            filename = entry['filename'].encode('932') + b'\x00' * (0x100 - len(entry['filename'].encode('932')))
            newentry.append(filename + to_bytes(entry['offset'], 4) + to_bytes(entry['oriSize'], 4) + to_bytes(entry['packedSize'], 4)) 
            newdata.append(data)
        out = self.magic + to_bytes(self.filenum, 4) + b''.join(newentry) + b''.join(newdata)
        save_file_b(output, out)

if __name__ == '__main__':
    dat = DatFile('data.dat')
    dat.pack('data_unpack', 'release\\data.dat')
    # dat.unpack('data_unpack')