from Lib import *

files = os.listdir("SNR")
os.makedirs("SNR_dec", exist_ok=True)

def xor(data, key):
    return bytes([data[i] ^ key[i % len(key)] for i in range(len(data))])

for f in files:
    data = open_file_b("SNR/" + f)
    key = data[4:0x13]
    start = from_bytes(data[:4]) * 4 + 0x14
    data = data[:start] + xor(data[start:], key)
    save_file_b("SNR_dec/" + f, data)