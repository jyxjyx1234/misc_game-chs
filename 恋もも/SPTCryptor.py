#encoding:utf-8
#by ALyCE\jyxjyx1234 2024.10.17
#This script is used to encrypt/decrypt .spt files in GSD Engine
#Usage: python SPTCryptor.py folder -e/-d
#folder: the path of folder contains .spt files
#-e: encrypt
#-d: decrypt
#Example: python SPTCryptor.py folder -e
#This will encrypt all .spt files in the folder and save them in folder_e
#Example: python SPTCryptor.py folder -d
#This will decrypt all .spt files in the folder and save them in folder_d
#Note: reference from https://github.com/ZQF-ReVN/RxGSD/blob/main/src/src/ReVN/RxGSD/Core/SPT_Cryptor.cpp

import os

enc_start_idx = 0x04

sg_aTable =[
		0x00000005, 0x00000001, 0xFFFFFFFE, 0x00000000, 0x00000002, 0xFFFFFFFF, 0x00000001, 0xFFFFFFFA,
		0x00000006, 0x00000003, 0x00000000, 0xFFFFFFFD, 0x00000003, 0xFFFFFFFC, 0xFFFFFFFD, 0xFFFFFFFE,
		0x00000007, 0x00000005, 0x00000003, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFD, 0xFFFFFFFB, 0xFFFFFFF9,
		0x00000003, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFD, 0x00000003, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFD,
		0x00000002, 0x00000003, 0x00000005, 0x00000002, 0xFFFFFFFD, 0x00000001, 0xFFFFFFFA, 0xFFFFFFFC,
		0x00000004, 0x00000004, 0x00000001, 0x00000004, 0x00000002, 0xFFFFFFFB, 0xFFFFFFFC, 0xFFFFFFFA,
		0x00000001, 0x00000002, 0x00000002, 0x00000003, 0x00000001, 0x00000002, 0xFFFFFFFC, 0xFFFFFFF9,
		0x00000002, 0xFFFFFFFF, 0x00000001, 0x00000004, 0x00000002, 0xFFFFFFFF, 0xFFFFFFFB, 0xFFFFFFFE,
		0x00000002, 0x00000006, 0xFFFFFFFF, 0x00000000, 0x00000001, 0xFFFFFFFB, 0xFFFFFFFE, 0xFFFFFFFF,
		0x00000003, 0x00000004, 0x00000000, 0x00000003, 0xFFFFFFFD, 0x00000002, 0xFFFFFFFA, 0xFFFFFFFD,
		0x00000007, 0x00000005, 0x00000003, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFD, 0xFFFFFFFB, 0xFFFFFFF9,
		0x00000003, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFD, 0x00000003, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFD,
		0x00000006, 0x00000003, 0xFFFFFFFE, 0x00000004, 0xFFFFFFFD, 0xFFFFFFFE, 0xFFFFFFFF, 0xFFFFFFFB,
		0x00000005, 0x00000006, 0x00000004, 0xFFFFFFFF, 0xFFFFFFFC, 0xFFFFFFFC, 0xFFFFFFFE, 0xFFFFFFFC,
		0x00000007, 0xFFFFFFFF, 0x00000004, 0xFFFFFFFE, 0xFFFFFFFE, 0xFFFFFFFF, 0xFFFFFFFD, 0xFFFFFFFE,
		0x00000001, 0x00000005, 0xFFFFFFFE, 0xFFFFFFFF, 0x00000001, 0x00000002, 0xFFFFFFFE, 0xFFFFFFFC
    ]
def to_signed_int(value):
    if value & 0x80000000:
        return value - 0x100000000
    else:
        return value
    
def listbyte(b):
    s = bin(b)[2:]
    s = '0' * (8 - len(s)) + s
    return list(s)

class SPTCryptor:
    def __init__(self, path = None, data = None):
        if path:
            self.data = list(open(path, "rb").read())
        elif data: 
            self.data = list(data)

    def decrypt(self):
        self.readinfo()
        self.dec1()
        self.dec2()
    
    def encrypt(self):
        self.readinfo()
        self.enc2()
        self.enc1()

    def readinfo(self):
        self.start_idx = self.data[0] ^ 0xf0
        self.enctype = self.data[1] ^ 0xf0

    def dec1(self):
        if self.enctype == 0:
            for i in range(enc_start_idx, len(self.data)-1, 2):
                self.data[i], self.data[i+1] = self.data[i+1], self.data[i]
        if self.enctype == 1:
            for i in range(enc_start_idx, len(self.data)-3, 4):
                self.data[i], self.data[i+1], self.data[i+2], self.data[i+3] = self.data[i+2], self.data[i+3], self.data[i+0], self.data[i+1]
        if self.enctype == 2:
            for i in range(enc_start_idx, len(self.data)-7, 8):
                self.data[i], self.data[i+1], self.data[i+2], self.data[i+3],self.data[i+4], self.data[i+5], self.data[i+6], self.data[i+7] = self.data[i+6], self.data[i+4], self.data[i+5], self.data[i+7], self.data[i+1], self.data[i+2], self.data[i+0], self.data[i+3]

    def enc1(self):
        if self.enctype == 0:
            for i in range(enc_start_idx, len(self.data)-1, 2):
                self.data[i], self.data[i+1] = self.data[i+1], self.data[i]
        if self.enctype == 1:
            for i in range(enc_start_idx, len(self.data)-3, 4):
                self.data[i+2], self.data[i+3], self.data[i+0], self.data[i+1] = self.data[i], self.data[i+1], self.data[i+2], self.data[i+3]
        if self.enctype == 2:
            for i in range(enc_start_idx, len(self.data)-7, 8):
                self.data[i+6], self.data[i+4], self.data[i+5], self.data[i+7], self.data[i+1], self.data[i+2], self.data[i+0], self.data[i+3] = self.data[i], self.data[i+1], self.data[i+2], self.data[i+3],self.data[i+4], self.data[i+5], self.data[i+6], self.data[i+7]
    
    def dec2(self):
        if self.start_idx >= 8:
            return
        #print(self.start_idx)
        key = sg_aTable[8 * self.start_idx + 64 : 8 * self.start_idx + 72]
        changemap = {}
        for i in range(8):
            shift_value = to_signed_int(key[i])
            changemap[7 - i] = 7 - i - shift_value
        #print(changemap)

        for i in range(enc_start_idx, len(self.data)):
            dec = [0] * 8
            b = self.data[i]
            b = listbyte(b)
            for _ in range(8):
                dec[changemap[_]] = b[_]
            dec = int(''.join(dec), 2)
            self.data[i] = dec ^ 0xFF

    def enc2(self):
        if self.start_idx >= 8:
            return
        key = sg_aTable[8 * self.start_idx + 64 : 8 * self.start_idx + 72]
        changemap = {}
        for i in range(8):
            shift_value = to_signed_int(key[i])
            changemap[7 - i] = 7 - i - shift_value

        for i in range(enc_start_idx, len(self.data)):
            enc = [0] * 8
            b = self.data[i]
            b = listbyte(b)
            for _ in range(8):
                enc[_] = b[changemap[_]]
            enc = int(''.join(enc), 2)
            self.data[i] = enc ^ 0xFF

    def save(self, path):
        with open(path, "wb") as f:
            f.write(bytes(self.data))

if __name__ == "__main__":
    import sys
    def help():
        print("Usage: python SPTCryptor.py folder -e/-d")
        print("folder: the path of folder contains .spt files")
        print("-e: encrypt")
        print("-d: decrypt")
        print("Example: python SPTCryptor.py folder -e")
        print("This will encrypt all .spt files in the folder and save them in folder_e")
        print("Example: python SPTCryptor.py folder -d")
        print("This will decrypt all .spt files in the folder and save them in folder_d")
        input("Press enter to exit")
        exit()

    if len(sys.argv) != 3:
        help()
    folder = sys.argv[1]
    mode = sys.argv[2]
    files = os.listdir(folder)
    for f in files:
        if f.endswith(".spt") or f == "global.dat":
            print(f)
            spt = SPTCryptor(os.path.join(folder, f))
            if mode == "-d":
                os.makedirs(folder + "_d", exist_ok=True)
                spt.decrypt()
                spt.save(os.path.join(folder + "_d", f))
            elif mode == "-e":
                os.makedirs(folder + "_e", exist_ok=True)
                spt.encrypt()
                spt.save(os.path.join(folder + "_e", f))
            else:
                help()
            
    