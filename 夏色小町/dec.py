from Lib import *
import ctypes


declib = ctypes.CDLL('./解密函数/x64/Release/dec.dll')
declib.fuc_411320.argtypes = [ctypes.POINTER(ctypes.c_ubyte), ctypes.c_int, ctypes.c_int]
declib.fuc_411320.restype = None
declib.fuc_411320_rev.argtypes = [ctypes.POINTER(ctypes.c_ubyte), ctypes.c_int, ctypes.c_int]
declib.fuc_411320_rev.restype = None

def dec_file(oriPath):
    data = BytesReader(open_file_b(oriPath))
    data.read(0x08)
    while not data.is_end():
        name = data.read(4).decode()
        length = data.readU32()
        headlen = data.readU32()
        if headlen == 0x10:
            key = data.readU32()
            l = length - headlen
            content = bytearray(data.try_read(l))
            content = (ctypes.c_ubyte * l).from_buffer(content)
            declib.fuc_411320(content, l, key)
            content = bytes(content)
            data.write(content)
        elif name == "cCOD":
            p1 = data.readU32()# 区段2开始的偏移（从cCOD开始）
            p2 = data.readU32()# key
            p3 = data.readU32()# ？
            p4 = data.readU32()# 区段2中int的个数
            l = length - headlen
            content = bytearray(data.try_read(l))
            content = (ctypes.c_ubyte * l).from_buffer(content)
            declib.fuc_411320(content, l, p2)
            content = bytes(content)
            data.write(content)
        else:
            print(f"Unknown name: {name}, length: {length}, headlen: {headlen}")
            data.read(length-0x0c)
    return data.getvalue()

def enc_file(oriPath):
    data = BytesReader(open_file_b(oriPath))
    data.read(0x08)
    while not data.is_end():
        name = data.read(4).decode()
        length = data.readU32()
        headlen = data.readU32()
        if headlen == 0x10:
            key = data.readU32()
            l = length - headlen
            content = bytearray(data.try_read(l))
            content = (ctypes.c_ubyte * l).from_buffer(content)
            declib.fuc_411320_rev(content, l, key)
            content = bytes(content)
            data.write(content)
        elif name == "cCOD":
            p1 = data.readU32()# 区段2开始的偏移（从cCOD开始）
            p2 = data.readU32()# key
            p3 = data.readU32()# ？
            p4 = data.readU32()# 区段2中int的个数
            l = length - headlen
            content = bytearray(data.try_read(l))
            content = (ctypes.c_ubyte * l).from_buffer(content)
            declib.fuc_411320_rev(content, l, p2)
            content = bytes(content)
            data.write(content)
        else:
            print(f"Unknown name: {name}, length: {length}, headlen: {headlen}")
            data.read(length-0x0c)
    return data.getvalue()

if __name__ == "__main__":
    oriPath = "script"
    outPath = "script_d"
    os.makedirs(outPath, exist_ok=True)

    for file in os.listdir(oriPath):
        save_file_b(os.path.join(outPath, file), dec_file(os.path.join(oriPath, file)))