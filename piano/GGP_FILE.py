from Lib import *


class GGP_FILE:
    def __init__(self) -> None:
        pass

    def load_from_path(self, path):
        data = open_file_b(path)
        self.load_from_bytes(data)

    def load_from_bytes(self, data):
        self.head = data[:36]
        self.getkey()
        self.content = data[36:]

    def getkey(self):
        key = []
        for i in range(8):
            k = self.head[i] ^ self.head[i + 12]
            key.append(k)
        self.key = key

    def decrypt(self):
        content = list(self.content)
        newcontent = []
        for i in range(len(content)):
            newcontent.append(content[i] ^ self.key[i % 8])
        self.content = bytes(newcontent)

    def savepng(self, path):
        save_file_b(path, self.content)

    def load_from_png(self, path):
        self.content = open_file_b(path)
        newhead = list(self.head)
        datasize = to_bytes(len(self.content), 4)
        newhead[24:28] = list(datasize)
        self.head = bytes(newhead)
        self.getkey()

    def saveggp(self, path):
        data = self.head + self.content
        save_file_b(path, data)
