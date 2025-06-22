from Lib import *

def LZSS_decompress(data):
    frame_size = 0x800
    frame_mask = frame_size - 1
    frame = [0] * frame_size
    frame_pos = 2024  # same as `v7 = 2024`

    reader = BytesReader(data)
    output = bytearray()
    bit_flag = 0
    while True:
        bit_flag >>= 1
        if (bit_flag & 0x100) == 0:
            if reader.tell() >= reader.length:
                break
            b = reader.readU8()
            bit_flag = b | 0xFF00  

        if bit_flag & 1:
            if reader.tell() >= reader.length:
                break
            b = reader.readU8()
            output.append(b)
            frame[frame_pos] = b
            frame_pos = (frame_pos + 1) & frame_mask
        else:
            if reader.tell() + 1 >= reader.length:
                break
            b1 = reader.readU8()
            b2 = reader.readU8()
            offset = ((b2 & 0xE0) << 3) | b1
            length = (b2 & 0x1F) + 1
            for _ in range(length + 1): 
                b = frame[(offset) & frame_mask]
                output.append(b)
                frame[frame_pos] = b
                frame_pos = (frame_pos + 1) & frame_mask
                offset += 1
    return bytes(output)

def LZSS_compress(data):
    output = bytearray()
    for i in range(0, len(data), 8):
        output.append(0xff)
        for j in range(8):
            if i+j < len(data):
                output.append(data[i+j])
    return bytes(output)