# -*- coding: utf-8 -*-
# For Windows OS Only....

import sys
import os
from io import BytesIO
import struct
from LIB.Lib import *
from LIB.lzss import decompress as Decompress
from LIB.lzss import compress as Compress


def decrypt1(buf: bytearray, key: bytes) -> None:
    """In-place XOR with key repeating every len(key) bytes."""
    klen = len(key)
    for i in range(len(buf)):
        buf[i] ^= key[i % klen]

def Decrypt3(buf: bytes) -> bytes:
    """Decrypt buffer using the algorithm from the original C implementation."""
    b = bytearray(buf)
    key = [
        [0x0E, 0xC7, 0x90, 0x71],
        [0x35, 0xF1, 0x9B, 0x49],
    ]
    r = [
        0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,
        1,1,0,0,1,1,1,0,0,1,1,1,0,0,1,1,
        0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,
        1,1,0,1,1,1,1,0,1,1,1,1,0,1,1,1,
        1,1,1,0,0,1,1,1,0,0,1,1,1,0,0,1
    ]
    rlen = len(r)
    keylen = 4  # each sub-key is 4 bytes
    rIndex = 0
    keyIndex = 0
    for i in range(len(b)):
        sel = r[rIndex]
        b[i] ^= key[sel][keyIndex]
        keyIndex += 1
        if keyIndex > 3:
            keyIndex = 0
            rIndex += 1
            if rIndex > (rlen - 1):
                rIndex = 0
    return bytes(b)

def Decrypt5(data: bytes) -> bytes:
    """Simple XOR with a 16-byte repeating key (pure Python replacement for DLL)."""
    key = bytes([
        0x2D, 0x62, 0xF4, 0x89, 0x2D, 0x62, 0xF4, 0x89,
        0x2D, 0x62, 0xF4, 0x89, 0x2D, 0x62, 0xF4, 0x89
    ])
    b = bytearray(data)
    decrypt1(b, key)
    return bytes(b)

def main():
    inFN = "sokubaku_kaisou.dbs.trans"
    outFN = "release\\dat\\sokubaku_kaisou.dbs"
    os.makedirs(os.path.dirname(outFN), exist_ok=True)
    dataB=Decrypt3(open_file_b(inFN) )
    orilen = len(dataB)
    dataA=Compress(dataB)
    newlen = len(dataA)
    dataA = to_bytes(newlen,4) + to_bytes(orilen,4) + dataA
    data=Decrypt5(dataA)
    try:
        output=open(outFN,'wb')
        output.write(b'\x01\x00\x00\x00')
        output.write(data)
        output.close()
    except Exception as e:
        return e
    return True

if __name__=="__main__":
    main()
