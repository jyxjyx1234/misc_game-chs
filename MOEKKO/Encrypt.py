from Lib import *
import os

def EncryptByte(ori_b:int)->int:
    a = ori_b // 64
    b = ori_b % 64
    return b * 4 + a

def DecryptByte(encrypted_b:int)->int:
    a = encrypted_b % 4
    b = encrypted_b // 4
    return a * 64 + b

def EncryptSaveFile(oridata:bytes, path:str):
    head = oridata[:8]
    oridata_body = list(oridata[8:])
    encrypt_body = []
    for i in range(len(oridata_body)):
        encrypted_byte = EncryptByte(oridata_body[i])
        encrypt_body.append(encrypted_byte)
    encrypt_body = bytes(encrypt_body)
    save_file_b(path, head + encrypt_body)

def EncryptData(oridata:bytes):
    head = oridata[:8]
    oridata_body = list(oridata[8:])
    encrypt_body = []
    for i in range(len(oridata_body)):
        encrypted_byte = EncryptByte(oridata_body[i])
        encrypt_body.append(encrypted_byte)
    encrypt_body = bytes(encrypt_body)
    return head + encrypt_body

def DecryptSaveFile(encrypted_data:bytes, path:str):
    head = encrypted_data[:8]
    encrypted_body = list(encrypted_data[8:])
    decrypt_body = []
    for i in range(len(encrypted_body)):
        decrypted_byte = DecryptByte(encrypted_body[i])
        decrypt_body.append(decrypted_byte)
    decrypt_body = bytes(decrypt_body)
    save_file_b(path, head + decrypt_body)

if __name__ == "__main__":
    #测试
    oriP = "ISF_DUMP\\"
    outP = "release\\ISF1\\"
    os.makedirs(outP, exist_ok = True)
    files = os.listdir(oriP)
    for file in files:
        fp = oriP + file
        ofp = outP + file
        EncryptSaveFile(open_file_b(fp), ofp)