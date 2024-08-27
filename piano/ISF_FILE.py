from Lib import *
from ISF_MSG import *
from Encrypt import *

class ISF_FILE():
    def __init__(self) -> None:
        pass

    def load_from_path(self, path):
        data = open_file_b(path)
        self.load_from_bytes(data)
    
    def load_from_bytes(self,data):
        self.head_len = from_bytes(data[:4])
        self.head_un = data[4:12]
        self.offsetlist = []
        offsetcounts = (self.head_len - 12) // 4
        for i in range(offsetcounts):
            offset = data[12 + i*4 : 16 + i*4]
            self.offsetlist.append(from_bytes(offset))

        body = data[self.head_len:]
        self.body :list[ISF_OBJ] = []
        offsets = [0] + self.offsetlist + [len(body) + 1]
        for i in range(len(offsets) - 1):
            obj = ISF_OBJ(body[offsets[i]:offsets[i+1]])
            self.body.append(obj)
    
    def dumptext(self, outpath, namedict = None):
        if not namedict:
            namedict_new = {}
        out = OriJsonOutput()
        for obj in self.body:
            if obj.type != 'msg':
                continue
            nameid = obj.nameid
            if namedict:
                name = namedict[str(nameid)]
            else:
                namedict_new[str(nameid)] = ""
                name = str(nameid)
            out.dic['name'] = name
            out.dic['message'] = obj.text.decode('sjis')
            out.append_dict()
        out.save_json(outpath)
        return out.textcount
        
    def savefile(self, outpath):
        out = []
        out.append(to_bytes(self.head_len,4))
        out.append(self.head_un)
        offsetlist = []
        body = []
        i = 0
        for obj in self.body:
            body.append(obj.get_bytes())
            i += len(body[-1])
            offsetlist.append(to_bytes(i, 4))
        offsetlist.pop()
        out = out + offsetlist + body
        out = b''.join(out)
        EncryptSaveFile(out, outpath)
    
    def trans(self, transdict):
        for obj in self.body:
            obj.trans(transdict)