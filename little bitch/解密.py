from Lib import *

def ror(val, n):
    n %= 8  # 确保 n 在0-7之间
    b = bin(val)
    b = str(b)[2:]
    while len(b) != 8:
        b = "0" + b
    for i in range(n):
        b = b[1:] + b[0]
    return int(b,2)

def decrypt(data):
    size = len(data)
    count = (size - 0x10)//4;
    
    p = 0x10

    key1 = 0x084DF873
    key2 = 0xFF987DEE

    c = 4

    data_out = []

    for i in range(count):
        dp0 = data[p]
        dp1 = data[p + 1:p + 4]
        dp0 = ror(dp0, c) & 0xff
        c += 1
        c &= 0xff
        dp = to_bytes(dp0, 1) + dp1
        dp = from_bytes(dp)
        dp ^= key1
        dp ^= key2
        dp = to_bytes(dp, 4)
        data_out.append(dp)
        p += 4

    data_out = data[:16] + b"".join(data_out)
    return data_out

data1 = open_file_b("text.dat_ori")
data1_enc = decrypt(data1)
save_file_b("text.dat_try", data1_enc)