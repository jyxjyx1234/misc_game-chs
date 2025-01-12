from Lib import *

def to_plain_text(data):
    text = data.decode("utf16")
    #return text
    text = re.sub("\u0007\u0006", "[n]", text)#标识下一句文本(停顿)
    text = re.sub("\u0007\u0004", "[r]", text)#标识换行
    text = re.sub("\u0007\u0002\u0001", "[center]", text)#居中
    text = re.sub("\u0006\u0001", "[汗]", text)#特殊符号
    text = re.sub("\u0006\u0000", "[爱]", text)#特殊符号
    text = re.sub("\u0007\u0001(.*?)\u000a(.*?)\u0000", lambda x: f"[{x.group(2)}/{x.group(1)}]", text)#ruby
    text = re.sub("\u0007\u0008(.*?)\u0000(.*?)\u0007\u0009", lambda x: f"[voice:{x.group(1)}]{x.group(2)}[/voice]", text)#voice
    text = re.sub("\u0006\u0002", "[无语]", text)#
    text = re.sub("\u0006\u0003", "[哭]", text)#
    text = re.sub("\u0006\u0004", "[生气]", text)#
    text = re.sub("\u0006\u0005", "[烦]", text)#
    text = re.sub("\u0006\u0006", "[晕]", text)#
    text = re.sub("\u0006\u0007", "[unk2]", text)
    text = re.sub("\u0003\u001e", "[unk4]", text)
    text = re.sub("\u0007\u0002\u0002", "[unk3]", text)
    text = re.sub("\u0007\u0008(.*?)\u0000", lambda x: f"[voice:{x.group(1)}]", text)#voice
    text = re.sub("\u0007\u0009", lambda x: f"[/voice]", text)#voice
    #颜色：01 R G B XXX 02 
    text = re.sub("\u0003([\u0000-\u00ff])(.*?)\u0004", lambda x: f"[big:{x.group(1).encode('latin1').hex()}]{x.group(2)}[/big]", text)
    text = re.sub("\u0001([\u0000-\u00ff]{3})(.*?)\u0002", lambda x: f"[color:{x.group(1).encode('latin1').hex()}]{x.group(2)}[/color]", text)
    return text

def compile_text(text):
    text = re.sub("\[n\]", "\u0007\u0006", text)#标识下一句文本(停顿)
    text = re.sub("\[r\]", "\u0007\u0004", text)#标识换行
    text = re.sub("\[center\]", "\u0007\u0002\u0001", text)#居中
    text = re.sub("\[爱\]", "\u0006\u0000", text)#特殊符号
    text = re.sub("\[汗\]", "\u0006\u0001", text)#特殊符号
    text = re.sub("\[无语\]", "\u0006\u0002", text)#特殊符号
    text = re.sub("\[哭\]", "\u0006\u0003", text)#特殊符号
    text = re.sub("\[生气\]", "\u0006\u0004", text)#特殊符号
    text = re.sub("\[烦\]", "\u0006\u0005", text)#特殊符号
    text = re.sub("\[晕\]", "\u0006\u0006", text)
    text = re.sub("\[unk2\]", "\u0006\u0007", text)
    text = re.sub("\[unk4\]", "\u0003\u001e", text)
    text = re.sub("\[unk3\]", "\u0007\u0002\u0002", text)
    text = re.sub("\[voice:(.*?)\]", lambda x: f"\u0007\u0008{x.group(1)}\u0000", text)#voice
    text = re.sub("\[/voice\]", "\u0007\u0009", text)#voice
    text = re.sub("\[big:(.*?)\]", lambda x: f"\u0003{bytes.fromhex(x.group(1)).decode('latin1')}", text)
    text = re.sub("\[/big\]", "\u0004", text)#voice
    text = re.sub("\[/color\]", "\u0002", text)#voice
    text = re.sub("\[color:(.*?)\]", lambda x: f"\u0001{bytes.fromhex(x.group(1)).decode('latin1')}", text)
    text = re.sub("\[(.*?)/(.*?)\]", lambda x: f"\u0007\u0001{x.group(2)}\u000a{x.group(1)}\u0000", text)#ruby
    return text.encode("utf-16-le")

class EXECFile:
    def __init__(self, data, command_start) -> None:
        self.command_start = command_start
        data = BytesReader(data)
        self.part1 = data.read(command_start)
        command_count = data.readU32()
        self.command_count = command_count
        self.command_list = []
        for i in range(command_count):
            command_offset = data.p
            offset = data.readU32()
            length = data.readU32()
            self.command_list.append((command_offset, offset, length))
        self.textlen = data.readU32()
        self.texts = data.read(self.textlen)
        self.part3 = data.data[data.p:]
    
    def dump_text(self, outpath):
        f = open(outpath, "w", encoding="utf8")
        for command_offset, offset, length in self.command_list:
            text = self.texts[offset:offset+length]
            f.write(f"@@{offset}\n")
            f.write(to_plain_text(text))
            f.write("\n@_end\n")

    def inject_text(self, filepath, outpath):
        with open(filepath, "r", encoding="utf8") as f:
            text = f.read()
        texts = []
        textslength = 0
        commands = b""
        contents = {}
        matches = re.finditer(r"@@([0-9]*?)\n(.*?)\n@_end", text, flags=re.DOTALL)
        for m in matches:
            offset = int(m.group(1))
            content = m.group(2)
            contents[offset] = content
        for command_offset, offset, length in self.command_list:
            content = contents[offset]
            content = compile_text(content)
            texts.append(content + b"\x00\x00")
            l = len(content)
            commands += to_bytes(textslength, 4) + to_bytes(l, 4)
            textslength += l + 2
        out = self.part1 + to_bytes(self.command_count, 4) + commands + to_bytes(textslength, 4) + b"".join(texts) + self.part3
        save_file_b(outpath, out)

    def gen_transdata(self, filepath, outpath):
        with open(filepath, "r", encoding="utf8") as f:
            text = f.read()
        outf = open(outpath, "wb")
        outf.write(b"\xff\xfe")
        contents = re.finditer(r"@@([0-9]*?)\n(.*?)\n@_end", text, flags=re.DOTALL)
        for content in contents:
            offset = content.group(1)
            text = content.group(2)
            text = compile_text(text)
            outf.write(offset.encode("utf16")[2:] + ":::".encode("utf16")[2:] + text[2:] + "|".encode("utf16")[2:])

if __name__ == "__main__":
    data = open_file_b("exec.dat")
    file = EXECFile(data, 0x34EE5E)
    mode = "inject"
    if mode == "dump":
        file.dump_text("out1.txt")
    elif mode == "pack":
        file.gen_transdata("trans1.txt", "release/exec.dat")
    elif mode == "inject":
        file.inject_text("out1.txt", "release/exec.dat")