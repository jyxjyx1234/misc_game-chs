from Lib import *
from io import StringIO
from ksDumper_config import *


class KsReader(StringIO):
    def read_char(self):
        char = self.read(1)
        return char
    
    def read_until(self, stop_char):
        result = []
        while True:
            char = self.read_char()
            if not char or char == stop_char:
                break
            result.append(char)
        return ''.join(result)
    
    def skip_until_chars(self, stop_chars):
        p = self.tell()
        while True:
            if isinstance(stop_chars, str):
                l = len(stop_chars)
                t = self.read(l)
                if t == stop_chars:
                    return
                p += 1
                self.seek(p)
            elif isinstance(stop_chars, list):
                for stop_char in stop_chars:
                    l = len(stop_char)
                    t = self.read(l)
                    if t == stop_char:
                        return
                p += 1
                self.seek(p)
    
    def read_until_newline(self):
        return self.read_until('\n')
    
    def read_until_bracket(self):
        return self.read_until('[')
    
    def read_until_bracketend(self, current_bracket):
        _ = current_bracket.copy()
        result = []
        while current_bracket != []:
            char = self.read_char()
            if char == "]":
                current_bracket.pop()
            elif char == "[":
                current_bracket.append("[")
            result.append(char)
        return ''.join(_ + result)
    
class KsFile:
    def __init__(self, path):
        text = open(path, 'r', encoding='utf-16').read()
        self.content = KsReader(text)
        init_config(self)

    def dump(self) -> OriJsonOutput:
        out = OriJsonOutput()
        length = len(self.content.getvalue())
        self.tempbuffer = []
        self.temp_start = 0

        def add_char_to_buffer(char, posbuffer):
            if len(self.tempbuffer) == 0:
                self.temp_start = posbuffer
            self.tempbuffer.append(char)
        
        while self.content.tell() < length:
            posbuffer = self.content.tell()
            char = self.content.read_char()
            if char in self.skiplineChar:
                self.content.read_until_newline()
                continue
            elif char in self.skipChar:
                continue
            elif char == "[" or char == "@":
                if char == "[":
                    macro = self.content.read_until_bracketend(["["])[1:-1]
                    special_len = 2
                else:
                    macro = self.content.read_until_newline()
                    special_len = 2
                # print(macro)
                flag = False
                for pattern1, pattern2 in self.inlineCode:
                    if re.match(pattern1 + "$", macro):
                        self.content.skip_until_chars([f"[{pattern2}]", f"@{pattern2}"])
                        flag = True
                        continue
                if flag:
                    continue
                for pattern in self.nextPageMacro:
                    if re.match(pattern + "$", macro):
                        out.dic["start"] = self.temp_start
                        out.dic["end"] = self.content.tell() - len(macro) - special_len
                        # out.dic["macro"] = macro
                        out.add_text("".join(self.tempbuffer))
                        self.tempbuffer = []
                        out.append_dict()
                        flag = True
                        continue
                if flag:
                    continue
                for pattern in self.nextLineMacro:
                    if re.match(pattern + "$", macro):
                        add_char_to_buffer("", posbuffer)
                        flag = True
                        continue
                if flag:
                    continue
                if re.match(self.nameMacro, macro):
                    m = re.match(self.nameMacro + "$", macro)
                    name = m.group(2)
                    out.dic["name"] = name
                    out.dic["name_start"] = self.content.tell() - len(macro) + 1 - special_len + len(m.group(1))
                    out.dic["name_end"] = out.dic["name_start"] + len(name)
                    continue
                for pattern, replacement in self.regexMacro.items():
                    if re.match(pattern + "$", macro):
                        endflag = False
                        if type(replacement) is dict:
                            replacement = replacement["replace"]
                            endflag = True
                        if endflag:
                            replacementchar = re.sub(pattern + "$", replacement, macro)
                            out.add_text(replacementchar)
                            out.dic["start"] = posbuffer
                            out.dic["end"] = self.content.tell()
                            out.dic["ismacrotext"] = True
                            out.append_dict()
                        else:
                            replacementchar = re.sub(pattern + "$", replacement, macro)
                            add_char_to_buffer(replacementchar, posbuffer)
                        flag = True
                        continue
                if flag:
                    continue
                
                if self.tempbuffer != []:
                    print(f"当前文本: {''.join(self.tempbuffer)}")
                    out.dic["start"] = self.temp_start
                    out.dic["end"] = self.content.tell() - len(macro) - special_len
                    out.add_text("".join(self.tempbuffer))
                    self.tempbuffer = []
                    out.append_dict()
                    print(f"未知的结束宏: {macro}。如果不想让这个宏结束文本，请在配置中添加这个宏的处理。")
                    continue
            else:
                if char == "]":
                    print("遇到结束括号，但没有开始括号。")
                add_char_to_buffer(char, posbuffer)
        return out