from Lib import *

def replace_name(text):
    text = text.replace("[名字]", "二阶堂")
    text = text.replace("[名前]", "悠马")
    text = text.replace("[年齢]", "18")
    return text

def replace_name_back(text):
    text = text.replace("二阶堂", "[名字]")
    text = text.replace("悠马", "[名前]")
    text = text.replace("18", "[年齢]")
    text = text.replace("【年齢】", "[年齢]")
    return text

def remove_nested_brackets(text):
    oriText = text
    while "[" in text and "]" in text:
        text = re.sub(r"\[[^\[\]]*\]", "", text)
    return text

def print_content(match):
    # if match.start() != 0 and match.end() != len(match.string):
    # print(match.group(0))
    return ""

def remove_nested_brackets_print(text):
    oriText = text
    while "[" in text and "]" in text:
        text = re.sub(r'\[ruby text=".*?"\]', "", text)
        text = re.sub(r"\[[^\[\]]*\]", print_content, text)
    return text

def split_line(text):
    line_width = 36
    text = text.replace("\n", "").replace("\r", "")
    res = []
    for i in range(0, len(text), line_width):
        res.append(text[i:i+line_width])
    return "\n".join(res)

ruby_replace = {
    "縁": "㈱",
    "牡": "㈲",
    "外": "㈹",
    "穴": "㊤",
    "垢": "㊥",
    "孔": "㊦",
    "臭": "㊧",
    "生": "㊨",
    "打": "㌃",
    "体": "㌍",
    "肉": "㌔",
    "乳": "㌘",
    "糞": "㌢",
    "味": "㌣",
    "無": "㌦",
    "娘": "㌧",
    "牝": "㌫",
    "連": "㌶",
    "娜": "㌻",
    "婀": "㍉",
    "腥": "㍊",
    "躇": "㍍",
    "躊": "㍑",
    "饐": "㍗",
}

def process_ruby(text):
    for i in ruby_replace:
        text = text.replace(ruby_replace[i], i)
    text = text.replace("○学", "小学")
    text = text.replace("○４", "１４")
    text = text.replace("○歳", "１４歳")
    text = text.replace("口まんこ", "おまんこ")
    return text


def changeTextOutBrackets(ori:str, transtext:str):
    if "[" not in ori:
        return transtext
    
    oritext = re.sub(r"\[r\]", "", ori)
    oritext = re.sub(r'\[ruby text=".*?"\]', "", oritext)
    # oritext = re.sub(r'\[font.*?\]', "", ori)
    # oritext = re.sub(r'\[resetfont.*?\]', "", ori)
    transtext = list(transtext)
    out = ""
    bracketsBuffer = []
    lastIdx = 0
    for i in oritext:
        if len(bracketsBuffer) != 0:
            out += i
            if i == "]":
                bracketsBuffer.pop()
            if i == "[":
                bracketsBuffer.append(i)
        else:
            if i == "[":
                out += i
                bracketsBuffer.append(i)
            else:
                if len(transtext) != 0:
                    out += transtext.pop(0)
                    lastIdx = len(out)
    if len(transtext) > 0:
        t = "".join(transtext)
        out = out[:lastIdx] + t + out[lastIdx:]
    # out = out + "[r]"
    return out