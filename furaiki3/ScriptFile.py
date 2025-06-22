from Lib import *
import logging
logging.basicConfig(level=logging.INFO, filename='unpack.log', filemode='w')


class BytesReaderBE(BytesReader):
    def readU16(self):
        return int.from_bytes(self.read(2), 'big', signed=True)

    def readU32(self):
        return int.from_bytes(self.read(4), 'big', signed=True)

    def readU8(self):
        return int.from_bytes(self.read(1), 'big')

opDict = { 
    0x1c: "siiii",# 第一个参数为人名
    0x1d: "siiii",# 第一个参数为文本
    0x1e: "iiiii",# 表示一句文本的结束
    0xb4: "siiii",# 第一个参数为文本
    0xb5: "iiiii",# 表示一句文本的结束
    0xb7: "iiiii",# 表示一句文本的结束
    0xb8: "siiii",# 第一个参数为文本
    0xba: "siiii",# 第一个参数为人名
    0xbc: "siiii",# 第一个参数为文本
    0xbd: "siiii",# 表示一句文本的结束
    0xc0: "isiii",# 第二个参数为文本（选项）
    0xc3: "siiii",# 不需要翻译的文本（标记跳转）
    0xc4: "siiii",# 不需要翻译的文本（标记跳转）
    0xcb: "siiii",# 不需要翻译的文本（标记跳转）
    0xcc: "siiii",# 不需要翻译的文本（标记跳转）
    0xc7: "siiii",# 不需要翻译的文本（加载文件）
    0xd2: "siiii",# 不需要翻译的文本（版本信息？）
    0x4c: "isiii",# 第二个参数为文本（选项）
    0xae: "isiii",# 不需要翻译的文本（加载文件）
}

class ScriptFile:
    def __init__(self, data, stringsBank, filename=None, tags=None):
        self.commandsList = []
        self.opStatus = {}
        self.string_Status = set()
        self.filename = filename
        while data.tell() < data.length:
            op = data.readU32()
            command = {}
            pos = data.tell() - 4
            command['op'] = op
            command["contents"] = []
            command["pos"] = pos
            if tags and pos in tags:
                self.commandsList.append({'op': 'tag', 'content': tags[pos], 'pos': pos})
            contents = opDict.get(op, "iiiii")
            for char in contents:
                if char == 's':
                    stringIdx = data.readU32()
                    string = stringsBank[stringIdx]
                    command["contents"].append({'type': 'string', 'value': string, "stringIdx": stringIdx})
                    self.string_Status.add(stringIdx)
                elif char == 'i':
                    value = data.readU32()
                    command["contents"].append({'type': 'int', 'value': value})
                else:
                    raise ValueError(f"Unknown command character: {char}")
            self.commandsList.append(command)
            self.opStatus[hex(op)] = self.opStatus.get(hex(op), 0) + 1

    def to_Text(self, outPath=None):
        res = []
        for command in self.commandsList:
            if command["op"] == "tag":
                res.append("*【" + ";".join(command["content"]) + "】")
                continue
            c = []
            c.append(f"#{command['op']:02X}")
            for content in command["contents"]:
                if content["type"] == "string":
                    idx = content["stringIdx"]
                    c.append(f"[s_{idx}::{content['value']}]")
                elif content["type"] == "int":
                    c.append(f"[{content['value']}]")
            res.append("|".join(c))
        text = "\n".join(res)
        if outPath:
            try:
                os.makedirs(os.path.dirname(outPath), exist_ok=True)
            except:
                pass
            with open(outPath, 'w', encoding='utf-8') as f:
                f.write(text)
        return text
    
    def to_json(self):
        out = OriJsonOutput()
        for i, command in enumerate(self.commandsList):
            match command["op"]:
                case 0x1c:
                    out.add_name(command["contents"][0]["value"])
                    if "name_pos" in out.dic:
                        raise Warning(f"Duplicate name position at {i} for {command['contents'][0]['value']}")
                    out.dic["name_pos"] = i
                case 0x1d:
                    out.add_text(command["contents"][0]["value"])
                    out.dic["text_pos"] = out.dic.get("text_pos", []) + [i]
                case 0x1e:
                    out.append_dict()
                case 0xb4:
                    out.add_text(command["contents"][0]["value"])
                    out.dic["text_pos"] = out.dic.get("text_pos", []) + [i]
                case 0xb5:
                    out.append_dict()
                case 0xb7:
                    out.append_dict()
                case 0xb8:
                    out.add_text(command["contents"][0]["value"])
                    out.dic["text_pos"] = out.dic.get("text_pos", []) + [i]
                case 0xba:
                    out.add_name(command["contents"][0]["value"])
                    if "name_pos" in out.dic:
                        raise Warning(f"Duplicate name position at {i} for {command['contents'][0]['value']}")
                    out.dic["name_pos"] = i
                case 0xc0:
                    out.add_text(command["contents"][1]["value"])
                    out.dic["text_pos"] = out.dic.get("text_pos", []) + [i]
                    out.append_dict()
                case 0x4c:
                    out.add_text(command["contents"][1]["value"])
                    out.dic["text_pos"] = out.dic.get("text_pos", []) + [i]
                    out.append_dict()
                case 0xbc:
                    if command["contents"][0]["value"].startswith("<"):
                        out.dic["tag"] = out.dic.get("tag", []) + [command["contents"][0]["value"]]
                        out.dic["tag_pos"] = out.dic.get("tag_pos", []) + [i]
                    else:
                        out.add_text(command["contents"][0]["value"])
                        out.dic["text_pos"] = out.dic.get("text_pos", []) + [i]
                case 0xbd:
                    out.append_dict()
        return out
    
class ScriptPackFile:
    def __init__(self, scriptfile, script):
        entrydata = open_file_b(scriptfile)
        entrydata = bytes([i ^ 0xFF for i in entrydata])
        self.entryData = BytesReaderBE(entrydata)
        scriptdata = open_file_b(script)
        scriptdata = bytes([i ^ 0xFF for i in scriptdata])
        self.scriptData = BytesReaderBE(scriptdata)
        self.readEntry()
        self.unPack()

    def readEntry(self):
        self.entries = []
        while self.entryData.tell() < self.entryData.length:
            entry = {}
            namesize = self.entryData.readU32()
            entry["name"] = self.entryData.read(namesize).decode('utf-8')
            entry["unk1"] = self.entryData.readU32()
            entry["offset"] = self.entryData.readU32()
            entry["unk3"] = self.entryData.readU32()
            entry["size"] = self.entryData.readU32()
            self.entries.append(entry)
            logging.info(f"Read entry: {entry['name']} {entry['unk1']} {entry['offset']} {entry['unk3']} {entry['size']}")
    def getTagList(self):
        tags = {}
        for entry in self.entries:
            tags[entry["name"]] = entry["offset"]
        return tags
    
    
    def getReverseTagList(self):
        tags = {}
        for entry in self.entries:
            tags[entry["offset"]] = tags.get(entry["offset"], []) + [entry["name"]]
        return tags
    
    def unPack(self):
        self.scriptFiles = []
        for entry in self.entries:
            if entry["size"] > 0:
                self.scriptData.seek(entry["offset"])
                data = self.scriptData.read(entry["size"])
                file = {'filename': entry["name"], 'data': data}
                self.scriptFiles.append(file)

    def unpackToFolder(self, outPath):
        os.makedirs(outPath, exist_ok=True)
        for file in self.scriptFiles:
            filename = os.path.join(outPath, file["filename"])
            with open(filename, 'wb') as f:
                f.write(file["data"])
            # logging.info(f"Unpacked {file['filename']} to {filename}")

class StringBufferFile:
    def __init__(self, scriptIdx, script):
        entrydata = open_file_b(scriptIdx)
        entrydata = bytes([i ^ 0xFF for i in entrydata])
        self.entryData = BytesReaderBE(entrydata)
        scriptdata = open_file_b(script)
        scriptdata = bytes([i ^ 0xFF for i in scriptdata])
        self.scriptData = BytesReaderBE(scriptdata)

    def get_strings(self):
        strings = []
        while self.entryData.tell() < self.entryData.length:
            offset = self.entryData.readU32()
            self.scriptData.seek(offset)
            string_length = self.scriptData.readU32()
            string_data = self.scriptData.read(string_length)
            strings.append(string_data.decode('932'))
        return strings
    
class ScriptSingleFile:
    def __init__(self, stringBufferIdx, StringBuffer, scriptfile, scriptFileIdx):
        strbuffFile = StringBufferFile(stringBufferIdx, StringBuffer)
        scrpackFile = ScriptPackFile(scriptfile, scriptFileIdx)
        self.tags = scrpackFile.getReverseTagList()
        self.stringBank = strbuffFile.get_strings()
        scriptdata = open_file_b("Script.dat")
        scriptdata = bytes([i ^ 0xFF for i in scriptdata])
        self.scriptFile = ScriptFile(BytesReaderBE(scriptdata), self.stringBank, tags=self.tags)

#封包思路
# 1. 读取源文件
# 2. 从译文json中，修改commandlist的内容。多行文本重新分行，第一行改为一列表，后面的为空列表。
# 3. commandlist重建，将列表中的列表扁平化
# 4. 编译commandlist。更新tag的偏移和长度。其中的文本构建新的stringbank对象（列表）。
# 5. 构建stringBank的文件。

if __name__ == "__main__":
    mode = "single"
    if mode == "single":
        f = ScriptSingleFile("StringIndex.dat", "StringBuffer.dat", "ScriptFile.dat", "Script.dat")
        f.scriptFile.to_Text(outPath="Script.dat.txt")
        out = f.scriptFile.to_json()
        out.save_json("Script.dat.json")
        save_json("namedict.json", out.get_names())