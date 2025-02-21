def uint32(x):
    return x & 0xFFFFFFFF

def shift_and_combine(value, shift):
    a = (value << (31 - shift)) & 0xFFFFFFFF
    print(hex(a))
    b = value >> (shift + 1)
    print(hex(b))
    return a + b

v1 = 1959960893
offset = 0
BASE = 0x5CC8E9D7

v3 = uint32(v1 << (31 - ((offset >> 4) & 0xF)))
print(hex(v3))
v4 = uint32(v1 >> (((offset >> 4) & 0xF) + 1))
print(hex(v4))
temp1 = uint32(offset - BASE + v3 + v4)
print(temp1)

temp1 = uint32(offset - BASE + shift_and_combine(v1, (offset >> 4) & 0xF))
print(temp1)