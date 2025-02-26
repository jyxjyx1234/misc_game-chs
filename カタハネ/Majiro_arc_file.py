from Lib import *
import os
import zlib

def calculate32(index):
    poly = 0xEDB88320
    num = index & 0xFFFFFFFF  
    for _ in range(8):
        if num & 0x1:  
            num = (num >> 1) ^ poly
        else:
            num >>= 1
    return num & 0xFFFFFFFF  

crc32_table = [calculate32(i) for i in range(256)]

class Majiro_arc_fileV3(object):
    def __init__(self) -> None:
        self.version: bytes
        self._Count: int
        self._NamesOffset: int
        self._DataOffset: int
        self.Entries: bytes
        self.NamesBuffer: bytes
        self.DataBuffer: bytes
        self.files: list[Majiro_arc_content]
        self.file_offset_list: list[int]
        self.namelist: list[str]

    def _read_arc(self, arc_file_data: bytes) -> None:
        self.version = arc_file_data[:16]
        self._Count = from_bytes(arc_file_data[16:20])  # 文件数量
        self._NamesOffset = from_bytes(arc_file_data[20:24])  # 文件名列表开始位置
        self._DataOffset = from_bytes(arc_file_data[24:28])  # 文件开始位置
        self.Entries = arc_file_data[28 : self._NamesOffset]
        self.NamesBuffer = arc_file_data[self._NamesOffset : self._DataOffset]
        self.DataBuffer = arc_file_data[self._DataOffset :]
        self._ReadEtries()
        self._GetFiles()

    def _ReadEtries(self):
        # 读取Etries,获取文件列表
        # 偏移：hash
        self.file_offset_list: list[int] = []
        i = 0
        while i < len(self.Entries):
            hash = self.Entries[i : i + 8]
            offset = from_bytes(self.Entries[i + 8 : i + 12])
            length = from_bytes(self.Entries[i + 12 : i + 16])
            self.file_offset_list.append((hash, offset, length))
            i += 0x10

    def _GetNameList(self):
        # 生成文件名列表
        namelist: list[bytes] = self.NamesBuffer.split(b"\x00")[:-1]
        self.namelist = [i.decode(encoding="sjis") for i in namelist]
        print(self.namelist)

    def _GetFiles(self):
        self.files: list[Majiro_arc_content] = []
        self._ReadEtries()
        self._GetNameList()
        for i in range(len(self.file_offset_list)):
            name = self.namelist[i]
            file_data = self.DataBuffer[self.file_offset_list[i][1] - self._DataOffset : self.file_offset_list[i][1] - self._DataOffset + self.file_offset_list[i][2]]
            file = Majiro_arc_content(file_data, name)
            self.files.append(file)

    # def _UpgradeEtries(self):
    #     offset = self._NamesOffset + len(self.NamesBuffer)
    #     self.Entries = b""
    #     for hash, offset, length in self.file_offset_list:
    #         self.Entries += hash
    #         self.Entries += to_bytes(offset, 4)

    # def _UpgradeNamesBuffer(self):
    #     # 根据文件生成新的NamesBuffer
    #     namelist = [file.name.encode(encoding="sjis") for file in self.files]
    #     self.NamesBuffer = b"\x00".join(namelist)

    # def _UpgradeDataBuffer(self):
    #     # 根据文件生成新的DataBuffer
    #     datalist = [file.data for file in self.files]
    #     self.DataBuffer = b"".join(datalist)

    def _Read_content_files(self, path):
        datalist = []
        offset = self._NamesOffset + len(self.NamesBuffer)
        self.Entries = b""
        for i in range(len(self.file_offset_list)):
            name = self.namelist[i]
            data = open_file_b(os.path.join(path, name))
            datalist.append(data)
            hash, _, _ = self.file_offset_list[i]
            self.Entries += hash
            self.Entries += to_bytes(offset, 4)
            self.Entries += to_bytes(len(data), 4)
            offset += len(data)
        self.DataBuffer = b"".join(datalist)


    def unpack(self, oripath, outpath, isenc=True):
        os.makedirs(outpath, exist_ok=True)
        arc = open_file_b(oripath)
        self._read_arc(arc)
        for f in self.files:
            if f.name!='':
                if isenc:
                    f.encrypt()
                f.save(outpath)

    def pack(self, oripath, outpath):
        # 将files中的文件进行打包
        self._NamesOffset = 28 + len(self.files) * 16
        self._Read_content_files(oripath)

        new_arc = (
            self.version
            + to_bytes(self._Count, 4)
            + to_bytes(self._NamesOffset, 4)
            + to_bytes(self._DataOffset, 4)
            + self.Entries
            + self.NamesBuffer
            + self.DataBuffer
        )

        save_file_b(outpath, new_arc)


class Majiro_arc_content(object):
    def __init__(self, file_data: bytes, name: str) -> None:
        if not name.endswith(".mjo"):
            self.name = name
            self.other_data = file_data
            return
        self.file_data = file_data
        self.name = name
        self.length = len(file_data)
        self.magic = file_data[:0x10]
        self.main_offset = from_bytes(file_data[0x10:0x14])
        self.line_count = from_bytes(file_data[0x14:0x18])
        self.func_count = from_bytes(file_data[0x18:0x1C])
        self.read_funcs()
        self.bytescode_size = from_bytes(file_data[0x1C + self.func_count * 0x8 : 0x1C + self.func_count * 0x8 + 0x4])
        self.data_start = 0x1C + self.func_count * 0x8 + 0x4
        self.data = file_data[self.data_start :]

    def read_funcs(self):
        self.funcs = []
        for i in range(self.func_count):
            func_hash = self.file_data[0x1C + i * 0x8 : 0x1C + i * 0x8 + 0x4]
            func_offset = from_bytes(self.file_data[0x1C + i * 0x8 + 0x4 : 0x1C + i * 0x8 + 0x8])
            self.funcs.append((func_hash, func_offset))

    def get_hash(self, init=0):
        data=self.name.encode(encoding='sjis')
        crc = ~init & 0xFFFFFFFF  
        for b in data:
            crc = (crc >> 8) ^ crc32_table[(crc ^ b) & 0xFF]
        return ~crc & 0xFFFFFFFF

    def encrypt(self):
        if not self.name.endswith(".mjo"):
            return
        key = b""
        for i in range(256):
            key += crc32_table[i].to_bytes(4, "little")
        data = bytearray(self.data)
        for i in range(len(self.data)):
            data[i] ^= key[(i) % len(key)]
        self.data = bytes(data)

    def save(self, path: str):
        if not self.name.endswith(".mjo"):
            save_file_b(os.path.join(path, self.name), self.other_data)
            return
        file_content = self.magic + to_bytes(self.main_offset, 4) + to_bytes(self.line_count, 4) + to_bytes(self.func_count, 4) + b"".join([i[0] + to_bytes(i[1], 4) for i in self.funcs]) + to_bytes(self.bytescode_size, 4) + self.data
        save_file_b(os.path.join(path, self.name), file_content)
