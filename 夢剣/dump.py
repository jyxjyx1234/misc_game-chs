from Lib import *

oriPath = "nscript.dat"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

def xor(data, key):
    return bytes([b ^ key for i, b in enumerate(data)])

info = StatusInfo()

# isForceName = True
# if isForceName:
#     namedict = open_json("namedict.json")

def isBracketsBalanced(s: str) -> bool:
    # 字典映射右括号到对应的左括号
    bracket_map = {'」': '「', '』': '『', '）': '（'}
    # 栈来存储左括号
    stack = []
    s = s.replace("(", "（")
    
    # 遍历字符串中的每一个字符
    for char in s:
        if char in bracket_map.values():
            # 如果字符是左括号，推入栈
            stack.append(char)
        elif char in bracket_map.keys():
            # 如果字符是右括号，检查栈是否为空或栈顶是否匹配
            if stack == [] or bracket_map[char] != stack.pop():
                return False
    return len(stack) == 0

def replace_halfwidth_with_fullwidth(string):
    # 将半角符号替换为全角符号
    halfwidth_chars = ",?!~0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM _:()-―+%*"
    fullwidth_chars = "，？！～０１２３４５６７８９ｑｗｅｒｔｙｕｉｏｐａｓｄｆｇｈｊｋｌｚｘｃｖｂｎｍＱＷＥＲＴＹＵＩＯＰＡＳＤＦＧＨＪＫＬＺＸＣＶＢＮＭ\u3000＿：（）——＋％＊"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

lines = open(oriPath, "r", encoding="utf8").readlines()
selfile = open("selfile.txt", "w", encoding="utf8")
out = OriJsonOutput()
lastfilename = ""
for i, line in enumerate(lines):
    if line.startswith("*"):
        out.append_dict()
        out.save_json(outPath + "/" + lastfilename + ".json")
        lastfilename = line.strip("\n").strip("\r")[1:]
        info.update(out)
        out = OriJsonOutput()
    if line.startswith("csel "):
        selfile.write(line)
    if re.match(r"[\\!?_;a-zA-Z0-9@\\#*]", line.strip()):
        out.append_dict()
        continue
    if not line.strip():
        out.append_dict()
        continue
    text = line.strip("\n").strip("\r").strip("\t")
    text = re.sub(r"![0-9a-zA-Z]+", "", text)
    if text.endswith("\\"):
        out.dic["endflag"] = "\\"
        out.add_text(text[:-1], i)
        out.append_dict()
        continue
    if text.endswith("@/"):
        out.dic["endflag"] = "@/"
        text = text[:-2]
        out.add_text(text, i)
        out.append_dict()
        continue
    elif text.endswith("@"):
        text = text[:-1]
    out.add_text(text, i)
    if isBracketsBalanced(out.dic["message"]):
        out.append_dict()

out.append_dict()
out.save_json(outPath + "/" + lastfilename + ".json")
lastfilename = line.strip("\n").strip("\r")[1:]
info.update(out)

info.output()
