from Lib import *

def ror(val, n):
    n %= 8  # 确保 n 在0-7之间
    b = bin(val)
    b = str(b)[2:]
    while len(b) != 8:
        b = "0" + b
    for i in range(n):
        b = b[-1] + b[:-1]
    return int(b,2)

def encrypt(data):
    # 检查输入数据的第一个字节是否等于0x24
    if data[0] != 0x24:
        return data

    size = len(data)
    count = (size - 0x10) // 4
    p = 0x10

    key1 = 0x084DF873
    key2 = 0xFF987DEE
    c = 0x04

    data_out = []

    for i in range(count):
        dp = int.from_bytes(data[p:p + 4], byteorder='little')
        dp ^= key2
        dp ^= key1
        dp = dp.to_bytes(4, byteorder='little')
        dp0 = dp[0]
        dp1 = dp[1:]
        dp0 = ror(dp0 ,c) & 0xFF
        c = (c + 1) & 0xFF
        data_out.append(dp0.to_bytes(1, byteorder='little') + dp1)
        p += 4

    data_out = data[:0x10] + b"".join(data_out)
    return data_out

data1 = open_file_b("release\TEXT.DAT_NEW")
data1_enc = encrypt(data1)
save_file_b("release\\release\data\TEXT.DAT", data1_enc)


data1 = open_file_b("release\SCRIPT.SRC_NEW")
data1_enc = encrypt(data1)
save_file_b("release\\release\data\SCRIPT.SRC", data1_enc)
