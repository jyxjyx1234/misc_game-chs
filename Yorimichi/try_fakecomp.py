from Lib import *
def fake_LZSS_compress(data):
    output = bytearray()
    for i in range(0, len(data), 8):
        output.append(0xff)
        for j in range(8):
            if i+j < len(data):
                output.append(data[i+j])
    return bytes(output)

ori = open_file_b("咲_dec.bin")
print(len(ori))
fake = fake_LZSS_compress(ori)
save_file_b("temp.bin", fake)