from LIB.Lib import *
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

def compress(data):
    inBuf = memoryview(data)
    outBuf = bytearray()
    i = 0
    window_size = 0xFFF  # 12 bits for offset

    # Use a dictionary to speed up match finding
    # Key: bytes, Value: list of positions
    pos_dict = defaultdict(list)

    while i < len(inBuf):
        # print(i, end='\r')
        flag_byte = 0
        flag_pos = len(outBuf)
        outBuf.append(0)  # Placeholder for flag byte
        flag_bits = []
        for s in range(8):
            if i >= len(inBuf):
                break
            max_len = 0
            max_offset = 0
            # Only check for matches if enough data
            if i >= 2:
                # Use the next 2 bytes as key
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
                    # Update dictionary for each new position
                    if i + k + 1 < len(inBuf):
                        key = bytes(inBuf[i + k:i + k + 2])
                        pos_dict[key].append(i + k)
                i += max_len
            else:
                outBuf.append(inBuf[i])
                flag_bits.append(1)
                if i + 1 < len(inBuf):
                    key = bytes(inBuf[i:i+2])
                    pos_dict[key].append(i)
                i += 1
        for bit in reversed(flag_bits):
            flag_byte = (flag_byte << 1) | bit
        outBuf[flag_pos] = flag_byte
    return bytes(outBuf)

def compress2(data):
    inBuf = memoryview(data)
    n = len(inBuf)
    outBuf = bytearray()
    i = 0
    window_size = 0xFFF  # 12 bits for offset

    # map small integer keys to recent positions (bounded deque for speed/memory)
    pos_dict = defaultdict(lambda: deque(maxlen=8))

    while i < n:
        flag_pos = len(outBuf)
        outBuf.append(0)  # placeholder for flag byte
        flag_bits = []

        for _ in range(8):
            if i >= n:
                break

            max_len = 0
            max_off = 0

            # Only attempt match if at least 2 bytes ahead
            if i + 1 < n:
                # build a small integer key (prefer 3-byte key when available)
                if i + 2 < n:
                    key = (inBuf[i] << 16) | (inBuf[i + 1] << 8) | inBuf[i + 2]
                else:
                    key = (inBuf[i] << 8) | inBuf[i + 1]

                candidates = pos_dict.get(key)
                if candidates:
                    # iterate recent candidates first (deque is small, so fast)
                    for j in reversed(candidates):
                        off = i - j
                        if off <= 0 or off > window_size:
                            continue
                        # compare bytes up to the format limit
                        length = 0
                        limit = 0x0F + 2
                        # unroll comparisons a bit for speed (still safe fallback)
                        while length < limit and i + length < n and inBuf[j + length] == inBuf[i + length]:
                            length += 1
                        if length > max_len:
                            max_len = length
                            max_off = off
                            if max_len == limit:
                                break

            if max_len >= 2:
                data_word = ((max_off & 0xFFF) << 4) | ((max_len - 2) & 0x0F)
                outBuf.append(data_word & 0xFF)
                outBuf.append((data_word >> 8) & 0xFF)
                flag_bits.append(0)

                # update dictionary for new positions in the matched range
                for k in range(max_len):
                    pos = i + k
                    if pos + 1 < n:
                        if pos + 2 < n:
                            kkey = (inBuf[pos] << 16) | (inBuf[pos + 1] << 8) | inBuf[pos + 2]
                        else:
                            kkey = (inBuf[pos] << 8) | inBuf[pos + 1]
                        pos_dict[kkey].append(pos)
                i += max_len
            else:
                # literal
                outBuf.append(inBuf[i])
                flag_bits.append(1)
                if i + 1 < n:
                    if i + 2 < n:
                        kkey = (inBuf[i] << 16) | (inBuf[i + 1] << 8) | inBuf[i + 2]
                    else:
                        kkey = (inBuf[i] << 8) | inBuf[i + 1]
                    pos_dict[kkey].append(i)
                i += 1

        # pack flag bits (highest bit first)
        flag_byte = 0
        for bit in reversed(flag_bits):
            flag_byte = (flag_byte << 1) | bit
        outBuf[flag_pos] = flag_byte

    return bytes(outBuf)

if __name__ == "__main__":
    # Test the compress and decompress functions
    original_data = open_file_b("F:\\game\\射精管理上手な小悪魔娘_体験版\\code\\temp\\bs\\0100_プロローグ.dat")
    compressed_data = compress(original_data)
    print(compressed_data)
    decompressed_data = decompress(compressed_data)
    print(decompressed_data == original_data)
    