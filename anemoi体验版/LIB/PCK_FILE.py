from gen_key import gen_key
from .Lib import *
from LIB.lzss import *
import concurrent.futures
import time

try:
    key = gen_key("暗号.dat")
except Exception:
    print("暗号.dat not found, using default key.")
    key = None

def xor(data: bytes, key: bytes) -> bytes:
    ret = bytearray(data)
    key_len = len(key)
    if key_len == 0:
        return bytes(ret)
    for i in range(len(ret)):
        ret[i] ^= key[i % key_len]
        ret[i] %= 256
    return bytes(ret)

class PCK_Header:
    def __init__(H,f:BytesReader):
        f.seek(0)
        H.length=f.readU32()#5c

        H.varInfoOffset = f.readU32()#5c
        H.varInfoCount = f.readU32()#c7

        H.varNameIndexOffset = f.readU32()#694
        H.varNameIndexCount = f.readU32()#c7
        H.varNameOffset = f.readU32()#ccc
        H.varNameCount = f.readU32()#c7

        H.cmdInfoOffset = f.readU32()#2324
        H.cmdInfoCount = f.readU32()#57

        H.cmdNameIndexOffset = f.readU32()#25dc
        H.cmdNameIndexCount = f.readU32()#57
        H.cmdNameOffset = f.readU32()#2894
        H.cmdNameCount = f.readU32()#57

        H.SceneNameIndexOffset= f.readU32()#ea23
        H.SceneNameIndexCount = f.readU32()#35
        H.SceneNameOffset = f.readU32()#3492
        H.SceneNameCount = f.readU32()#35

        H.SceneInfoOffset = f.readU32()#39ba
        H.SceneInfoCount = f.readU32()#35

        H.SceneDataOffset = f.readU32()#623b
        H.SceneDataCount = f.readU32()#35

        H.ExtraKeyUse = f.readU32()#0 or 1
        H.SourceHeaderLength = f.readU32()#266
        H.unk = b""
        if f.tell() < H.length:
            H.unk = f.read(H.length - f.tell())
    
    def to_byte(H):
        res = []
        res.append(to_bytes(H.length))
        res.append(to_bytes(H.varInfoOffset))
        res.append(to_bytes(H.varInfoCount))
        res.append(to_bytes(H.varNameIndexOffset))
        res.append(to_bytes(H.varNameIndexCount))
        res.append(to_bytes(H.varNameOffset))
        res.append(to_bytes(H.varNameCount))
        res.append(to_bytes(H.cmdInfoOffset))
        res.append(to_bytes(H.cmdInfoCount))
        res.append(to_bytes(H.cmdNameIndexOffset))
        res.append(to_bytes(H.cmdNameIndexCount))
        res.append(to_bytes(H.cmdNameOffset))
        res.append(to_bytes(H.cmdNameCount))
        res.append(to_bytes(H.SceneNameIndexOffset))
        res.append(to_bytes(H.SceneNameIndexCount))
        res.append(to_bytes(H.SceneNameOffset))
        res.append(to_bytes(H.SceneNameCount))
        res.append(to_bytes(H.SceneInfoOffset))
        res.append(to_bytes(H.SceneInfoCount))
        res.append(to_bytes(H.SceneDataOffset))
        res.append(to_bytes(H.SceneDataCount))
        res.append(to_bytes(H.ExtraKeyUse))
        res.append(to_bytes(H.SourceHeaderLength))
        res.append(H.unk)
        return b"".join(res)

class PCK_Infos:
    def __init__(self,f:BytesReader, count:int):
        self.contents = []
        for i in range(count):
            _ = []
            _.append(f.readU32())  # p1
            _.append(f.readU32())  # p2
            self.contents.append(_)
    
    def to_byte(self):
        res = []
        for _ in self.contents:
            res.append(to_bytes(_[0], 4))
            res.append(to_bytes(_[1], 4))
        return b"".join(res)

class PCK_Names:
    def __init__(self, f:BytesReader, count:int, varNameOffset:int):
        self.contents = []
        for i in range(count):
            offset = f.readU32() * 2
            length = f.readU32() * 2
            cur = f.tell()
            f.seek(varNameOffset + offset)
            name = f.read(length).decode("utf-16-le")
            self.contents.append(name)
            f.seek(cur)
    
    def to_byte(self):
        indexs = []
        texts = []
        pos = 0
        for name in self.contents:
            encoded = name.encode("utf-16-le")
            indexs.append(to_bytes(pos, 4))
            indexs.append(to_bytes(len(encoded) // 2, 4))
            texts.append(encoded)
            pos += len(encoded) // 2
        indexs = b"".join(indexs)
        texts = b"".join(texts)
        self.len_indexs = len(indexs)
        self.len_texts = len(texts)
        return indexs + texts

class PCK_Scene_Data:
    def __init__(self, data):
        self.data = data

    def get_length(self):
        return len(self.data)
    
    def xor(self, key: bytes):
        self.data = xor(self.data, key)
        return self
    
    def extra_dec(self):
        key = [0x70,0xF8,0xA6,0xB0,0xA1,0xA5,0x28,0x4F,0xB5,0x2F,0x48,0xFA,0xE1,0xE9,0x4B,0xDE,
                0xB7,0x4F,0x62,0x95,0x8B,0xE0,0x03,0x80,0xE7,0xCF,0x0F,0x6B,0x92,0x01,0xEB,0xF8,
                0xA2,0x88,0xCE,0x63,0x04,0x38,0xD2,0x6D,0x8C,0xD2,0x88,0x76,0xA7,0x92,0x71,0x8F,
                0x4E,0xB6,0x8D,0x01,0x79,0x88,0x83,0x0A,0xF9,0xE9,0x2C,0xDB,0x67,0xDB,0x91,0x14,
                0xD5,0x9A,0x4E,0x79,0x17,0x23,0x08,0x96,0x0E,0x1D,0x15,0xF9,0xA5,0xA0,0x6F,0x58,
                0x17,0xC8,0xA9,0x46,0xDA,0x22,0xFF,0xFD,0x87,0x12,0x42,0xFB,0xA9,0xB8,0x67,0x6C,
                0x91,0x67,0x64,0xF9,0xD1,0x1E,0xE4,0x50,0x64,0x6F,0xF2,0x0B,0xDE,0x40,0xE7,0x47,
                0xF1,0x03,0xCC,0x2A,0xAD,0x7F,0x34,0x21,0xA0,0x64,0x26,0x98,0x6C,0xED,0x69,0xF4,
                0xB5,0x23,0x08,0x6E,0x7D,0x92,0xF6,0xEB,0x93,0xF0,0x7A,0x89,0x5E,0xF9,0xF8,0x7A,
                0xAF,0xE8,0xA9,0x48,0xC2,0xAC,0x11,0x6B,0x2B,0x33,0xA7,0x40,0x0D,0xDC,0x7D,0xA7,
                0x5B,0xCF,0xC8,0x31,0xD1,0x77,0x52,0x8D,0x82,0xAC,0x41,0xB8,0x73,0xA5,0x4F,0x26,
                0x7C,0x0F,0x39,0xDA,0x5B,0x37,0x4A,0xDE,0xA4,0x49,0x0B,0x7C,0x17,0xA3,0x43,0xAE,
                0x77,0x06,0x64,0x73,0xC0,0x43,0xA3,0x18,0x5A,0x0F,0x9F,0x02,0x4C,0x7E,0x8B,0x01,
                0x9F,0x2D,0xAE,0x72,0x54,0x13,0xFF,0x96,0xAE,0x0B,0x34,0x58,0xCF,0xE3,0x00,0x78,
                0xBE,0xE3,0xF5,0x61,0xE4,0x87,0x7C,0xFC,0x80,0xAF,0xC4,0x8D,0x46,0x3A,0x5D,0xD0,
                0x36,0xBC,0xE5,0x60,0x77,0x68,0x08,0x4F,0xBB,0xAB,0xE2,0x78,0x07,0xE8,0x73,0xBF]
                
        self.data = xor(self.data, bytes(key))
    
    def decompress(self):
        self.data = decompress(self.data[8:])
    
    def compress(self, name=None, skip_compress = None):
        size = len(self.data)
        if not skip_compress:
            self.data = compress(self.data)
        else:
            self.data = skip_compress
        new_size = len(self.data) + 8
        self.data = to_bytes(new_size, 4) + to_bytes(size, 4) + self.data
        
class PCK_File:
    def __init__(self, path: str):
        self.data = BytesReader(open_file_b(path))
        self.header = PCK_Header(self.data)

        self.data.seek(self.header.varInfoOffset)
        self.varInfos = PCK_Infos(self.data, self.header.varInfoCount)

        self.data.seek(self.header.varNameIndexOffset)
        self.varNames = PCK_Names(self.data, self.header.varNameIndexCount, self.header.varNameOffset)

        self.data.seek(self.header.cmdInfoOffset)
        self.cmdInfos = PCK_Infos(self.data, self.header.cmdInfoCount)

        self.data.seek(self.header.cmdNameIndexOffset)
        self.cmdNames = PCK_Names(self.data, self.header.cmdNameIndexCount, self.header.cmdNameOffset)

        self.data.seek(self.header.SceneNameIndexOffset)
        self.SceneNames = PCK_Names(self.data, self.header.SceneNameIndexCount, self.header.SceneNameOffset)
        
        self.data.seek(self.header.SceneInfoOffset)
        self.SceneInfos = PCK_Infos(self.data, self.header.SceneInfoCount)

        self.scenes = {}
        for i in range(self.header.SceneNameCount):
            name = self.SceneNames.contents[i]
            offset, length = self.SceneInfos.contents[i]
            self.data.seek(self.header.SceneDataOffset + offset)
            data = self.data.read(length)
            self.scenes[name] = PCK_Scene_Data(data)
        max_offset = 0
        for offset, length in self.SceneInfos.contents:
            if offset + length > max_offset:
                max_offset = offset + length
        self.data.seek(self.header.SceneDataOffset + max_offset)
        # print(hex(self.data.tell()))
        self.resource_code_data = self.data.read()

    def save_header_infos(self, path: str):
        var_info_json = []
        cmd_info_json = []
        for i, name in enumerate(self.varNames.contents):
            _ = {}
            _["name"] = name
            _["info"] = self.varInfos.contents[i]
            var_info_json.append(_)
        for i, name in enumerate(self.cmdNames.contents):
            _ = {}
            _["name"] = name
            _["info"] = self.cmdInfos.contents[i]
            cmd_info_json.append(_)
        save_json(path, {"var_infos": var_info_json, "cmd_infos": cmd_info_json, "SourceHeaderLength": self.header.SourceHeaderLength})

    def rebuild(self, output_path: str, remove_source_code: bool = False):
        #rebuild scene data
        scene_data_parts = []
        pos = 0
        self.SceneNames.contents = []
        self.SceneInfos.contents = []
        for name in self.scenes:
            data = self.scenes[name]
            length = data.get_length()
            self.SceneNames.contents.append(name)
            self.SceneInfos.contents.append([pos, length])
            pos += length
            scene_data_parts.append(data.data)

        # Rebuild PCK file with updated headers
        new_varInfos_data = self.varInfos.to_byte()
        new_varNames_data = self.varNames.to_byte()
        new_cmdInfos_data = self.cmdInfos.to_byte()
        new_cmdNames_data = self.cmdNames.to_byte()
        new_SceneNames_data = self.SceneNames.to_byte()
        new_SceneInfos_data = self.SceneInfos.to_byte()
        scene_data = b"".join(scene_data_parts)
        # Update counts in header
        self.header.varInfoCount = len(self.varInfos.contents)
        self.header.varNameCount = len(self.varNames.contents)
        self.header.cmdInfoCount = len(self.cmdInfos.contents)
        self.header.cmdNameCount = len(self.cmdNames.contents)
        self.header.SceneNameCount = len(self.SceneNames.contents)
        self.header.SceneInfoCount = len(self.SceneInfos.contents)
        self.header.SceneDataCount = len(self.scenes)
        # Update offsets in header
        current_offset = self.header.length

        self.header.varInfoOffset = current_offset
        current_offset += len(new_varInfos_data)

        self.header.varNameIndexOffset = current_offset
        current_offset += self.varNames.len_indexs
        self.header.varNameOffset = current_offset
        current_offset += self.varNames.len_texts

        self.header.cmdInfoOffset = current_offset
        current_offset += len(new_cmdInfos_data)

        self.header.cmdNameIndexOffset = current_offset
        current_offset += self.cmdNames.len_indexs
        self.header.cmdNameOffset = current_offset
        current_offset += self.cmdNames.len_texts

        self.header.SceneNameIndexOffset = current_offset
        current_offset += self.SceneNames.len_indexs
        self.header.SceneNameOffset = current_offset
        current_offset += self.SceneNames.len_texts

        self.header.SceneInfoOffset = current_offset
        current_offset += len(new_SceneInfos_data)

        self.header.SceneDataOffset = current_offset

        with open(output_path, "wb") as f:
            f.write(self.header.to_byte())
            f.write(new_varInfos_data)
            f.write(new_varNames_data)
            f.write(new_cmdInfos_data)
            f.write(new_cmdNames_data)
            f.write(new_SceneNames_data)
            f.write(new_SceneInfos_data)
            f.write(scene_data)
            if not remove_source_code:
                f.write(self.resource_code_data)

    def undec(self, key: bytes):
        if self.header.ExtraKeyUse == 0:
            raise Exception("PCK file is not encrypted.")
        for name in self.scenes:
            self.scenes[name] = self.scenes[name].xor(key)
        self.header.ExtraKeyUse = 0

    def replace_file(self, name: str, ss: PCK_Scene_Data, xor_key: bytes|None = None, iscompress = True):
        if iscompress:
            ss.compress()
        ss.extra_dec()
        if xor_key:
            ss.xor(xor_key)
        self.scenes[name] = ss

    def compress_and_enc_all_scenes(self, isFake=False):
        def compress_scene(name):
            # print(f"Compressing scene: {name}")
            data = self.scenes[name]
            os.makedirs("compressing_temp", exist_ok=True)
            save_file_b(f"compressing_temp/{name}", data.data)
            try:
                os.remove(f'compressing_temp/{name}.lzss')
            except FileNotFoundError:
                pass
            os.system(f'python LIB/lzss.py "compressing_temp/{name}" "compressing_temp/{name}.lzss" {"fake" if isFake else ""}')
            while True:
                if os.path.exists(f'compressing_temp/{name}.lzss'):
                    break
                time.sleep(0.1)
            compressed_data = open_file_b(f'compressing_temp/{name}.lzss')
            os.remove(f'compressing_temp/{name}')
            os.remove(f'compressing_temp/{name}.lzss')
            data.compress(name=name, skip_compress=compressed_data)
            data.extra_dec()
            self.scenes[name] = data
        with concurrent.futures.ThreadPoolExecutor() as executor:
            scene_names_sorted = sorted(self.scenes.keys(), key=lambda name: len(self.scenes[name].data), reverse=True)
            executor.map(compress_scene, scene_names_sorted)


if __name__ == "__main__":
    pck = PCK_File("sceneZH.pck")
    pck.save_header_infos("pck_header_infos.txt")
    key = gen_key("暗号.dat")
    pck.undec(key)
    os.makedirs("temp", exist_ok=True)
    for name in pck.scenes:
        data = pck.scenes[name]
        data.extra_dec()
        data.decompress()
        pck.scenes[name] = data
    pck.compress_and_enc_all_scenes()
    pck.rebuild("F:\\game\\射精管理上手な小悪魔娘_体験版\\sceneZH.pck", remove_source_code=False)

    # pck_new = PCK_File("F:\\game\\射精管理上手な小悪魔娘_体験版\\sceneZH.pck")
    # for name in pck_new.scenes:
    #     data = pck_new.scenes[name]
    #     data.extra_dec()
    #     data.decompress()
    #     save_file_b(f"temp/{name}", data.data)


        
