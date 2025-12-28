try:
    from LIB.Lib import *
except:
    try:
        from .Lib import *
    except:
        from Lib import *
from collections import defaultdict

def decompress(data):
    inBuf = memoryview(data)
    outBuf = bytearray() 
    i = 0
    while i < len(inBuf):
        byte = inBuf[i]
        i += 1
        s = 8
        while s > 0 and i < len(inBuf):
            if byte & 1:
                outBuf.append(inBuf[i])
                i += 1
            else:
                if i + 1 >= len(inBuf):
                    break
                data_word = inBuf[i] | (inBuf[i+1] << 8)
                i += 2
                tempData = (data_word & 0x0f) + 2
                offset = data_word >> 4
                for _ in range(tempData):
                    outBuf.append(outBuf[-offset])
            byte >>= 1
            s -= 1
    return bytes(outBuf)


def compress(data, isfake = False):
    inBuf = memoryview(data)
    outBuf = bytearray()
    i = 0
    window_size = 0xFFF
    pos_dict = defaultdict(list)

    while i < len(inBuf):
        flag_byte = 0
        flag_pos = len(outBuf)
        outBuf.append(0) 
        flag_bits = []
        for s in range(8):
            if i >= len(inBuf):
                break
            max_len = 0
            max_offset = 0
            
            if not isfake:
                if i >= 2:
                    key = bytes(inBuf[i:i+2])
                    candidates = pos_dict.get(key, [])
                    for j in reversed(candidates):
                        if i - j > window_size:
                            break
                        length = 2
                        while (length < 0x0F + 2 and
                            i + length < len(inBuf) and
                            inBuf[j + length] == inBuf[i + length]):
                            length += 1
                        if length > max_len:
                            max_len = length
                            max_offset = i - j
                        if max_len == 0x0F + 2:
                            break  # Max match found
            
            if max_len >= 2:
                data_word = ((max_offset & 0xFFF) << 4) | ((max_len - 2) & 0x0F)
                outBuf.append(data_word & 0xFF)
                outBuf.append((data_word >> 8) & 0xFF)
                flag_bits.append(0)
                for k in range(max_len):
                    if i + k + 1 < len(inBuf):
                        key = bytes(inBuf[i + k:i + k + 2])
                        pos_dict[key].append(i + k)
                i += max_len
            else:
                outBuf.append(inBuf[i])
                flag_bits.append(1)
                if not isfake and i + 1 < len(inBuf):
                    key = bytes(inBuf[i:i+2])
                    pos_dict[key].append(i)
                i += 1
        for bit in reversed(flag_bits):
            flag_byte = (flag_byte << 1) | bit
        outBuf[flag_pos] = flag_byte
    return bytes(outBuf)


if __name__ == "__main__":
    import sys
    path = sys.argv[1]
    out = sys.argv[2]
    try:
        mode = sys.argv[3]
    except:
        mode = ""
    data = open_file_b(path)
    compressed_data = compress(data, isfake=(mode=="fake"))
    save_file_b(out, compressed_data)
    