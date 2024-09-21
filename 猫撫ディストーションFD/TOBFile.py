from Lib import *
import re, os, math
from HanziReplacer import *

class TOBOffsets():
    def __init__(self, data) -> None:
        self.len = from_bytes(data[0:4])
        self.count = from_bytes(data[4:8])
        self.offsetsList = [0]
        for i in range(self.count):
            offset = from_bytes(data[8 + i * 4 : 12 + i * 4])
            self.offsetsList.append(offset)

    def __bytes__(self) -> bytes:
        out = b""
        out += to_bytes(self.len, 4)
        out += to_bytes(self.count, 4)
        offsetsList = self.offsetsList[1:]
        offsets = [to_bytes(i, 4) for i in offsetsList]
        out += b"".join(offsets)
        return out
    
class TOBText():
    NamePatten = re.compile(rb"(?<=\x1A\x00\x00\x00\x01[\x01-\xff][\x00-\xff]\x00\x00\x02\x01\x01)(?P<namelen>[\x00-\xff][\x00-\xff])(?P<name>[\x01-\xff]*?)(?=\x00)")
    
    #showmsgPatten = re.compile(rb"(?<=\x10\x00\x00\x00\x01\x05\x00\x00\x00\x00)(?P<msg>[\x01-\xff]+)")
    #nextlinePatten = re.compile(rb"(?<=\x0e\x00\x00\x00\x01\x05\x00\x00\x00\x00)(?P<msg>[\x01-\xff]+)")
     
    selectionPatten = re.compile(rb"(?<=\x0D\x00\x00\x00\x01)(?P<len>[\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff])(?=\x0A\x01\x00\x00\x00\x00\x00)")
    selectionTextPatten = re.compile(rb"(?<=\x01\x01)(?P<len>[\x00-\xff][\x00-\xff])(?P<msg>[\x01-\xff]*?)(?=\x00)")

    def __init__(self, data, oriStart, oriEnd, path = "") -> None:
        self.data = data
        self.oriLen = len(data)
        self.datas = data.split(b"\x5b\x20")
        self.isText = True
        self.oriStart = oriStart
        self.oriEnd = oriEnd
        self.textStart = -2
        self.path = path
        self.readText()

    def readText(self):
        self.texts : list[dict] = []

        for i in self.datas:
            if self.selectionPatten.search(i):
                matches = self.selectionTextPatten.finditer(i)
                for match in matches:
                    dic = {}
                    dic["len"] = "selection"
                    dic["message"] = match.group("msg").decode("932")
                    self.texts.append(dic)
                self.texts[-1]["len"] = "selectionend"
                return
            self.textStart += len(i) + 2
        self.textStart = -2

        dic = {}
        textFlag = False
        for i in self.datas:
            if self.NamePatten.search(i):
                textFlag = True
                match = self.NamePatten.search(i)
                dic["name"] = match.group("name").decode("932")

            unknownPatten = re.compile(rb"\x08\x00\x00\x00\x00\x00\x00\x00\x00\x0C\x00\x00\x00\x02\xFF\x00\x76\xAD\x01\x00\x00")
            
            if unknownPatten.match(i):
                commandLen = 16
            else:
                commandLen = from_bytes(i[5:9])
            text = i[5 + commandLen : ]
            if text and text[0] != 0x5b and b"\x00" not in text: 
                if not textFlag:
                    self.textStart += 7 + commandLen
                textFlag = True
                try:
                    dic["message"] = dic.get("message", "") + text.decode("932")
                except:
                    print(text)
                    raise RuntimeError
                dic["len"] = dic.get("len", 0) + 1

            if not textFlag:
                self.textStart += len(i) + 2


        if dic != {}:
            self.texts.append(dic)

        if not textFlag:
            print(self.data.decode("932", errors = "ignore"))
            print(self.path)
            self.isText = False

    def trans(self, transBytesList, namedict):
        transedDatas = []
        for i in self.datas:
            transed = i
            if self.NamePatten.search(i):
                def _(match):
                    oriName = match.group("name").decode("932")
                    transName = namedict[oriName].encode("932")
                    transNameLen = to_bytes(len(transName) + 1, 2)
                    return transNameLen + transName
                transed = self.NamePatten.sub(_, i)

            elif self.selectionPatten.search(i):
                def _(match):
                    transMsg = transBytesList.pop(0)
                    transMsgLen = to_bytes(len(transMsg) + 1, 2)
                    return transMsgLen + transMsg
                transed = self.selectionTextPatten.sub(_, i)

                def __(match):
                    newLen = len(transed) - 5
                    return to_bytes(newLen, 4)
                transed = self.selectionPatten.sub(__, transed)

            unknownPatten = re.compile(rb"\x08\x00\x00\x00\x00\x00\x00\x00\x00\x0C\x00\x00\x00\x02\xFF\x00\x76\xAD\x01\x00\x00")

            if unknownPatten.match(i):
                commandLen = 16
            else:
                commandLen = from_bytes(i[5:9])
            text = i[5 + commandLen : ]
            if text and text[0] != 0x5b and b"\x00" not in text: 
                transed = i[ : 5 + commandLen] + transBytesList.pop(0)
            transedDatas.append(transed)
        self.datas = transedDatas
        if len(transBytesList)!=0:
            print(transBytesList)

    def __bytes__(self) -> bytes:
        return b"\x5b\x20".join(self.datas)
    
    def __len__(self) -> int:
        return len(self.__bytes__())

class TOBFile():
    def __init__(self, data = None, path = None) -> None:
        self.path = path
        if data:
            self.readFromBytes(data)
        elif path:
            self.readFromPath(path)
    
    def readFromPath(self, path):
        data = open_file_b(path)
        self.readFromBytes(data)
        self.path = path
    
    def readFromBytes(self, data : bytes):
        self.magic = data[:4]
        data = data[4:]

        self.selectionPartLen = from_bytes(data[:4])
        self.selectionPart = data[:self.selectionPartLen]# 注释性内容，里面的文本应该不影响？里面疑似有选项标识，不过与偏移好像无关的样子。
        data = data[self.selectionPartLen:]

        self.offsetPartLen = from_bytes(data[0:4])
        self.offsetPart = TOBOffsets(data[:self.offsetPartLen])
        self.texts = data[self.offsetPartLen:]
        self.textsOriLen = len(self.texts)
        self._findJump()
        self._readTexts()
        self.end = self.texts[self.offsetPart.offsetsList[-1]:]

    def _findJump(self):
        jumpPatten = re.compile(rb"(?<=\x00\x02\xFF\x00)[\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff]")
        jumps = jumpPatten.findall(self.texts)
        self.jumpOffsets = {}
        for i in jumps:
            jumpOffset = from_bytes(i)
            self.jumpOffsets[jumpOffset] = jumpOffset

    def _readTexts(self):
        self.textsList : list[TOBText] = []
        for i in range(self.offsetPart.count):
            start = self.offsetPart.offsetsList[i]
            end = self.offsetPart.offsetsList[i + 1]
            self.textsList.append(TOBText(self.texts[start:end], start, end, self.path))
        
    def dump(self, outJsonPath) -> dict:
        outJson = []
        namedict = {}
        for t in self.textsList:
            outJson = outJson + t.texts
            for dic in t.texts:
                if "name" in dic:
                    namedict[dic["name"]] = dic["name"]
        save_json(outJsonPath, outJson)
        return namedict
    
    def trans(self, transJson, oriJson, namedict, h : HanziReplacer):
        def _processTrans(trans) -> bytes:
            trans = h.hanzitihuan(trans)
            trans = replace_halfwidth_with_fullwidth(trans)
            return trans
        
        def _splitTransText(TransText:str, hangshu: int) -> list:
            lineMaxTextCount = 30
            if hangshu * lineMaxTextCount < len(TransText):
                #TransText = TransText[:hangshu * lineMaxTextCount]
                lineMaxTextCount = math.ceil(len(TransText)/hangshu)
                print(TransText)
            res = []
            for i in range(hangshu):
                line = TransText[i * lineMaxTextCount : (i + 1) * lineMaxTextCount]
                if line == "":
                    line = "\u3000"
                res.append(line)
            res = [i.encode("932") for i in res]
            return res
        
        i = 0
        totalLen = 0
        while i < len(self.textsList):
            try:
                while self.textsList[i].isText == False:
                    totalLenOri = totalLen
                    totalLen += len(self.textsList[i])
                    self.offsetPart.offsetsList[i + 1] = totalLen
                    for j in self.jumpOffsets:
                        if j >= self.textsList[i].oriStart and j < self.textsList[i].oriEnd:
                            o = j - self.textsList[i].oriStart
                            if o <= self.textsList[i].textStart:
                                self.jumpOffsets[j] = totalLenOri + o
                            else:
                                self.jumpOffsets[j] = totalLen - (self.textsList[i].oriEnd - j)
                    i += 1
            except IndexError:
                break
            oriDict = oriJson.pop(0)
            transDict = transJson.pop(0)
            hangshu = oriDict["len"]
            trans = transDict["message"]
            trans = _processTrans(trans)

            if type(hangshu) == type(1):
                transBytesList = _splitTransText(trans, hangshu)
                self.textsList[i].trans(transBytesList, namedict)
            else:
                transBytesList = [trans.encode("932")]
                while True:
                    oriDict = oriJson.pop(0)
                    transDict = transJson.pop(0)
                    hangshu = oriDict["len"]
                    trans = transDict["message"]
                    trans = _processTrans(trans)
                    transBytesList.append(trans.encode("932"))

                    if hangshu == "selectionend":
                        break

                self.textsList[i].trans(transBytesList, namedict)

            totalLenOri = totalLen
            totalLen += len(self.textsList[i])
            self.offsetPart.offsetsList[i + 1] = totalLen

            for j in self.jumpOffsets:
                if j >= self.textsList[i].oriStart and j < self.textsList[i].oriEnd:
                    o = j - self.textsList[i].oriStart
                    if o <= self.textsList[i].textStart:
                        self.jumpOffsets[j] = totalLenOri + o
                    else:
                        self.jumpOffsets[j] = totalLen - (self.textsList[i].oriEnd - j)
            i += 1

        i -= 1
        for j in self.jumpOffsets:
            if j >= self.textsList[i].oriEnd:
                o = j - self.textsList[i].oriEnd
                self.jumpOffsets[j] = totalLenOri + o
        
    
    def save(self, outPath):
        out = b""
        out += self.magic
        out += self.selectionPart
        out += bytes(self.offsetPart)

        texts = b""
        for i in self.textsList:
            texts += bytes(i)
        
        jumpPatten = re.compile(rb"(?<=\x00\x02\xFF\x00)[\x00-\xff][\x00-\xff][\x00-\xff][\x00-\xff]")
        texts = jumpPatten.sub(lambda x : to_bytes(self.jumpOffsets[from_bytes(x.group())], 4), texts)
        out += texts

        deltaLen = len(texts + self.end) - self.textsOriLen
        jumpPatten2 = re.compile(rb"(?<=\x5B\x20\x00\x00\x00\x00\x02\x4b\x01\x00\x00\x00\x00\x00\x00\x0B\x00\x00\x00\x01\x01\x00)([\x00-\xff]{4})")
        newEnd = jumpPatten2.sub(lambda x : to_bytes(from_bytes(x.group()) + deltaLen, 4), self.end)
        out += newEnd
        save_file_b(outPath, out)

