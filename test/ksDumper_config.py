from Lib import *

def init_config(f):
    # 读取到这些字符时，直接跳过该行
    f.skiplineChar = ["*", ";"]
    # 这些字符不会被读取到文本中
    f.skipChar = ["\n", "\t"]
    # 以下是对于宏的处理。均使用正则表达式的形式，均不包含前后的括号。其余的宏将直接跳过。
    # 内嵌代码标识，内部的内容直接忽略
    f.inlineCode = [
        (r"iscript", r"endscript"),
        (r"macro.*?", r"endmacro"),
        ]
    # 换页符
    f.nextPageMacro = [r"tp"]
    # 换行符
    f.nextLineMacro = [r"r", r"l"]
    # 人名符，分为三组，第二组为人名，第三组可以没有
    f.nameMacro = r"(name text=\")(.*?)(\")"
    # 需要正则处理的宏, 左侧为宏的正则，右侧为替换，可以为字符串，或者以match为变量的函数.如果确定宏中的单独成句，右侧请使用一个dict{"replace": "替换内容", "single": True}
    f.regexMacro = {
        r"ch text=\"(.*)\"": process1
    }

def process1(match):
    return match.group(1)