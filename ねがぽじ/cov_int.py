def cal(i1, i2, i3, i4):
    i = i4 * 255 ** 3 + i3 * 255 ** 2 + i2 * 255 + i1
    i -= 0xfe0200
    if i % 2:
        return (i + 1) // -2
    else:
        return i // 2
    
def cal_from_int(i):
    b = i.to_bytes(4, 'little')
    return cal(b[0], b[1], b[2], b[3])

def cal_back(i):
    if i < 0:
        i = -2 * i - 1
    else:
        i = 2 * i
    i += 0xfe0200
    i1 = i % 255
    i //= 255
    i2 = i % 255
    i //= 255
    i3 = i % 255
    i //= 255
    i4 = i
    i_ = bytes([i1, i2, i3, i4])
    return int.from_bytes(i_, 'little')

# a = cal(0x06, 0xd9, 0x04, 0x01)
# print(hex(a))
# print(a)

if __name__ == "__main__":
    a = cal_from_int(268501249)
    a = cal(0x0a, 0x20, 0x01, 0x01)
    print(hex(a))
    print(a)
    print(cal_back(a))