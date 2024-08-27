from Lib import *
import os

def EncryptByte(ori_b:int)->int:
    a = ori_b // 64
    b = ori_b % 64
    return b * 4 + a

def EncryptSaveFile(oridata:bytes, path:str):
    head = oridata[:8]
    oridata_body = list(oridata[8:])
    encrypt_body = []
    for i in range(len(oridata_body)):
        encrypted_byte = EncryptByte(oridata_body[i])
        encrypt_body.append(encrypted_byte)
    encrypt_body = bytes(encrypt_body)
    save_file_b(path, head + encrypt_body)

if __name__ == "__main__":
    #测试
    files = os.listdir("ISF_test\\")
    for file in files:
        fp = "ISF_test\\" + file
        ofp = "ISF1\\" + file
        EncryptSaveFile(open_file_b(fp), ofp)