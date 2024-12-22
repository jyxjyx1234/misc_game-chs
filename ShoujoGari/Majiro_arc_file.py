from Lib import *
import os

#测试用
ori_namelist=['snr010.mjo', 'snr009e.mjo', 'snr002xb.mjo', 'snr002bb2z.mjo', 'snr005eaz.mjo', 'snr002czz.mjo', 'x_mikaend.mjo', 'snr009ac.mjo', 'snr009ecz.mjo', 'buttonmenu.mjo', 'bregexp.dll', 'snr002bb2a.mjo', 'x_rinoyumiend.mjo', 'snr002daab.mjo', 'start.mjo', 'snr002ca.mjo', 'console.mjo', 'snr009ca.mjo', 'snr002abb.mjo', 'snr008z.mjo', 'snr005ba.mjo', 'snr002ab.mjo', 'snr005dbz.mjo', 'config.mjo', 'game.mjo', 'snr002cab.mjo', 'snr002xc.mjo', 'snr005ea.mjo', 'snr002da.mjo', 'snr009d.mjo', 'snr011.mjo', 'snr008a.mjo', 'snr004.mjo', 'snr009dc.mjo', 'snr005ecz.mjo', 'snr006.mjo', 'snr005d.mjo', 'snr005bbz.mjo', 'snr002xa.mjo', 'x_sibou2end.mjo', 'snr005ec.mjo', 'つながりチェック.mjo', 'snr005bc.mjo', 'snr003d5.mjo', '$~snr002bzz.mjo', 'kosihata.mjo', 'cgmode.mjo', 'snr002d.mjo', 'yazlib.mjo', 'snr002bb2b.mjo', 'load_sysdata.mjo', 'snr002aba.mjo', 'snr009cb.mjo', 'message_box.mjo', 'snr002cb.mjo', 'x_sinjyuuend.mjo', 'snr002daaa.mjo', 'snr002aa.mjo', 'snr002e.mjo', 'loadsave.mjo', 'snr005caz.mjo', 'snr002ezz.mjo', 'snr005bb.mjo', 'x_kisaairiend.mjo', 'snr003d4.mjo', 'snr005eb.mjo', 'snr002caa.mjo', 'x_rinoend.mjo', 'transit_top.mjo', 'snr005e.mjo', 'snr002abz.mjo', 'snr008b.mjo', 'snr007.mjo', 'snr005abz.mjo', 'snr002az.mjo', 'snr002db.mjo', 'kazlib.mjo', 'snr005a.mjo', 'snr002ya.mjo', 'snr005dc.mjo', 'snr005bcz.mjo', 'usertrans.mjo', 'snr005ebz.mjo', 'adv.mjh', 'snr009ec.mjo', 'snr009c.mjo', 'snr002bab.mjo', 'stdio.mjh', 'snr002cabc.mjo', 'x_yumiend.mjo', 'snr009bc.mjo', 'snr002azz.mjo', 'snr002cbbb.mjo', 'snr002a.mjo', '$~x_sinjyuuend.mjo', 'gaizi.mjo', 'snr002aab.mjo', 'x_isumend.mjo', 'snr005cb.mjo', 'snr002dabb.mjo', 'snr003d1.mjo', 'snr002bb.mjo', 'snr002bzz.mjo', 'snr005daz.mjo', 'game.mjh', 'snr002cabb.mjo', 'snr005aa.mjo', 'snr002cbb.mjo', 'snr009b.mjo', 'snr009dcz.mjo', 'snr002daa.mjo', 'snr002eb.mjo', 'menu.mjo', 'snr005acz.mjo', 'snr005db.mjo', 'staffroll.mjo', 'snr002baz.mjo', 'history.mjo', 'snr002yb.mjo', 'pic.mjo', 'x_sibou1end.mjo', 'snr005b.mjo', 'x_airiend.mjo', 'snr002dzz.mjo', 'snr005baz.mjo', 'snr000.mjo', 'novelsample.mjo', 'snr009bcz.mjo', 'snr005ac.mjo', 'snr002baa.mjo', 'snr002b.mjo', 'snr002cbba.mjo', 'snr003d3.mjo', 'snr003d2.mjo', 'kazlib.mjh', 'snr009acz.mjo', 'snr005ca.mjo', 'snr002daba.mjo', 'novell.mjh', 'snr005dcz.mjo', 'snr002c.mjo', 'transit.mjo', 'snr002aaa.mjo', 'snr005cbz.mjo', 'snr005ab.mjo', 'snr002caba.mjo', 'x_kisaend.mjo', 'snr002ba.mjo', 'snr002aaz.mjo', 'snr002ea.mjo', 'snr002dab.mjo', 'snr009a.mjo', 'snr001.mjo', 'snr002cba.mjo', 'snr005c.mjo', 'snr005aaz.mjo', 'snr002yc.mjo', 'snr005da.mjo', 'snr002cabz.mjo', '']

class Majiro_arc_file(object):
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
            hash = self.Entries[i : i + 4]
            offset = from_bytes(self.Entries[i + 4 : i + 8])
            self.file_offset_list.append(offset)
            i += 8

    def _GetNameList(self):
        # 生成文件名列表
        namelist: list[bytes] = self.NamesBuffer.split(b"\x00")
        self.namelist = [i.decode(encoding="sjis") for i in namelist]
        print(self.namelist)

    def _GetFiles(self):
        self.files: list[Majiro_arc_content] = []
        self._ReadEtries()
        self._GetNameList()
        for i in range(len(self.file_offset_list)):
            name = self.namelist[i]
            try:
                file_data = self.DataBuffer[self.file_offset_list[i] - self._DataOffset : self.file_offset_list[i + 1]- self._DataOffset]
            except IndexError:
                file_data = self.DataBuffer[self.file_offset_list[i] - self._DataOffset :]
            file = Majiro_arc_content(file_data, name)
            self.files.append(file)

    def _UpgradeEtries(self):
        # 根据文件生成新的Etries
        # 需要先生成NamesBuffer,_NamesOffset
        offset = self._NamesOffset + len(self.NamesBuffer)
        self.Entries = b""
        for f in self.files:
            self.Entries += f.get_hash()
            self.Entries += to_bytes(offset,4)
            offset += f.length

    def _UpgradeNamesBuffer(self):
        # 根据文件生成新的NamesBuffer
        namelist = [file.name.encode(encoding="sjis") for file in self.files]
        self.NamesBuffer = b"\x00".join(namelist)

    def _UpgradeDataBuffer(self):
        # 根据文件生成新的DataBuffer
        datalist = [file.data for file in self.files]
        self.DataBuffer = b"".join(datalist)

    def _Read_content_files(self, folder_path):
        # 从文件夹中读取文件到self.files中
        self.files: list[Majiro_arc_content] = []
        fileslist = os.listdir(folder_path)
        #'''
        #测试用
        global ori_namelist
        fileslist=ori_namelist[:-1]
        #'''
        for filename in fileslist:
            f = open_file_b(folder_path + filename)
            f = Majiro_arc_content(f, filename)
            self.files.append(f)
        self.files.append(Majiro_arc_content(b"", ""))  # 末尾有个空文件

    def unpack(self, oripath, outpath):
        arc = open_file_b(oripath)
        self._read_arc(arc)
        for f in self.files:
            if f.name!='':
                save_file_b(outpath + f.name, f.data)

    def pack(self, oripath, outpath):
        # 将files中的文件进行打包
        self.version = (
            b"\x4D\x61\x6A\x69\x72\x6F\x41\x72\x63\x56\x31\x2E\x30\x30\x30\x00"
        )
        self._Count = 0x9F  # 这里不懂，就不修改了
        self._Read_content_files(oripath)

        self._NamesOffset = 28 + len(self.files) * 8  # 一个文件的Etries有8字节
        self._UpgradeNamesBuffer()

        self._UpgradeEtries()
        self._UpgradeDataBuffer()
        self._DataOffset = self._NamesOffset + len(self.NamesBuffer)

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
        self.data = file_data
        self.name = name
        self.length = len(file_data)

    def get_hash(self, init=0):
        def calculate32(index):
            poly = 0xEDB88320
            num = index & 0xFFFFFFFF  
            for _ in range(8):
                if num & 0x1:  
                    num = (num >> 1) ^ poly
                else:
                    num >>= 1
            return num & 0xFFFFFFFF  

        data=self.name.encode(encoding='sjis')
        crc = ~init & 0xFFFFFFFF  
        for b in data:
            crc = (crc >> 8) ^ calculate32((crc ^ b) & 0xFF)
        return to_bytes(~crc & 0xFFFFFFFF, 4)  


    def save(self, path: str):
        save_file_b(path + self.name, self.data)
