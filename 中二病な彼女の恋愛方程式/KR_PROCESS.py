from Lib import *

def remove_nested_brackets(text):
    oriText = text
    while "[" in text and "]" in text:
        text = re.sub(r"\[[^\[\]]*\]", "", text)
    return text

def print_content(match):
    if match.group(0) != "[r]":
        print(match.group(0))
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

def changeTextOutBrackets(ori:str, transtext:str):
    if "[" not in ori:
        return transtext
    
    # oritext = re.sub(r"\[r\]", "", ori)
    # oritext = re.sub(r'\[ruby text=".*?"\]', "", oritext)
    # oritext = re.sub(r'\[font.*?\]', "", ori)
    # oritext = re.sub(r'\[resetfont.*?\]', "", ori)
    transtext = list(transtext)
    out = ""
    bracketsBuffer = []
    lastIdx = 0
    for i in ori:
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