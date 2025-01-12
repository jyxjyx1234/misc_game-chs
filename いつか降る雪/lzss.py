from Lib import *

def LZSS_decompress(data):
    frameSize = 0x1000
    frameFill = 0
    frameInitPos = 0xFEE
    framemask = frameSize - 1
    frame = [frameFill] * frameSize
    framePos = frameInitPos

    output = bytearray()
    data = BytesReader(data)
    while data.p < data.size:
        byte = data.readU8()
        for i in range(8):
            if data.p >= data.size:
                break
            mask = 2 ** i
            if byte & mask:
                b = data.readU8()
                frame[framePos & framemask] = b
                framePos += 1
                output.append(b)
            else:
                if data.p + 1 >= data.size:
                    break
                b1 = data.readU8()
                b2 = data.readU8()
                offset = ((b2 & 0xF0) << 4) | b1
                length = (b2 & 0x0F) + 3
                for j in range(length):
                    b = frame[offset & framemask]
                    offset += 1
                    frame[framePos & framemask] = b
                    framePos += 1
                    output.append(b)
    return bytes(output)

def LZSS_compress(data):
    output = bytearray()
    for i in range(len(data), 8):
        output.append(0xff)
        for j in range(8):
            if i+j < len(data):
                output.append(data[i+j])
    return bytes(output)