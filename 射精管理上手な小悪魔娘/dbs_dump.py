import struct
import sys
from LIB.lzss import decompress as Decompress
from LIB.Lib import *

def decrypt1(buf: bytearray, key: bytes) -> None:
    """In-place XOR with key repeating every len(key) bytes."""
    klen = len(key)
    for i in range(len(buf)):
        buf[i] ^= key[i % klen]

def Decrypt3(buf: bytes) -> bytes:
    """Decrypt buffer using the algorithm from the original C implementation."""
    b = bytearray(buf)
    key = [
        [0x0E, 0xC7, 0x90, 0x71],
        [0x35, 0xF1, 0x9B, 0x49],
    ]
    r = [
        0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,
        1,1,0,0,1,1,1,0,0,1,1,1,0,0,1,1,
        0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,
        1,1,0,1,1,1,1,0,1,1,1,1,0,1,1,1,
        1,1,1,0,0,1,1,1,0,0,1,1,1,0,0,1
    ]
    rlen = len(r)
    keylen = 4  # each sub-key is 4 bytes
    rIndex = 0
    keyIndex = 0
    for i in range(len(b)):
        sel = r[rIndex]
        b[i] ^= key[sel][keyIndex]
        keyIndex += 1
        if keyIndex > 3:
            keyIndex = 0
            rIndex += 1
            if rIndex > (rlen - 1):
                rIndex = 0
    return bytes(b)

def Decrypt5(data: bytes) -> bytes:
    """Simple XOR with a 16-byte repeating key (pure Python replacement for DLL)."""
    key = bytes([
        0x2D, 0x62, 0xF4, 0x89, 0x2D, 0x62, 0xF4, 0x89,
        0x2D, 0x62, 0xF4, 0x89, 0x2D, 0x62, 0xF4, 0x89
    ])
    b = bytearray(data)
    decrypt1(b, key)
    return bytes(b)

class Header:
    def __init__(self, f):
        # f positioned at file start
        f.seek(0)
        self.fileSize = struct.unpack('<I', f.read(4))[0]
        headerData = f.read(24)
        self.headerList = struct.unpack('<6I', headerData)
        self.lineCount = self.headerList[0]
        self.dataCount = self.headerList[1]
        self.lineIndexOffset = self.headerList[2]
        self.dataFormatOffset = self.headerList[3]
        self.lineDataIndexOffset = self.headerList[4]
        self.textOffset = self.headerList[5]

def main(filename: str = None):
    if filename is None:
        filename = "sokubaku_kaisou.dbs"
    try:
        with open(filename, 'rb') as f:
            head = f.read(4)
            isUTF = head != b'\x00\x00\x00\x00'
            data = f.read()
    except Exception as e:
        return e

    # Step 1: Decrypt initial layer
    dataA = Decrypt5(data)

    # Step 2: decompress after the 8-byte header (compSize, decompSize)
    if len(dataA) < 8:
        return RuntimeError("input too small")
    compSize, decompSize = struct.unpack('<2I', dataA[:8])
    dataB = Decompress(dataA[8:])

    # Step 3: final decryption
    dataC = Decrypt3(dataB)

    out_path = filename + '.out'
    with open(out_path, 'wb') as out:
        out.write(dataC)

    # Parse resulting file
    with open(out_path, 'rb') as file:
        header = Header(file)

        file.seek(header.lineIndexOffset)
        lineIndex = struct.unpack('<%dI' % header.lineCount, file.read(header.lineCount * 4))

        dataIndex = []
        dataType = []
        file.seek(header.dataFormatOffset)  # typically formats start here
        # original code read interleaved index/type pairs; try to follow original order:
        file.seek(header.lineDataIndexOffset - header.dataCount * 8)  # ensure correct pos if offsets differ
        # safer: go to lineDataIndexOffset then read dataCount pairs as original
        file.seek(header.lineDataIndexOffset)
        for _ in range(header.dataCount):
            dataIndex.append(struct.unpack('<I', file.read(4))[0])
            dataType.append(struct.unpack('<I', file.read(4))[0])

        # read line data table
        lineData = {}
        for _ in range(header.lineCount):
            for n in range(header.dataCount):
                tempData = struct.unpack('<I', file.read(4))[0]
                try:
                    if dataType[n] not in [100, 218, 260, 30]:  # string
                        tempTell = file.tell()
                        file.seek(header.textOffset + tempData)
                        raw = bytearray()
                        while True:
                            two = file.read(2)
                            if not two or two == b'\x00\x00':
                                break
                            raw += two
                        if raw:
                            lineData[raw.decode('utf-16le')] = (raw.decode('utf-16le'), dataType[n])
                        else:
                            pass
                            # row.append((raw.decode('utf-16le'), dataType[n]))
                        file.seek(tempTell)
                    else:
                        pass
                        # row.append((tempData, dataType[n]))
                except:
                    pass
                    # row.append((tempData, dataType[n]))
        save_json(out_path + '.json', lineData )
if __name__ == '__main__':
    main()
    