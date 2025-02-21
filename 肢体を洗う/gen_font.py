from PIL import Image, ImageDraw, ImageFont
from HanziReplacer import *
import random


def draw_character(char, type, font_path='WenQuanYi.ttf', size = 24):
    # 创建一个透明的图像
    img = Image.new('LA', (size, size), (0, 0))
    draw = ImageDraw.Draw(img)

    # 加载字体
    font = ImageFont.truetype(font_path, size-3)

    # 获取字符的尺寸
    w = font.getlength(char)

    # 计算居中位置
    x = (size - w) // 2
    y = -1

    # 绘制白色字符
    draw.text((x, y), char, font=font, fill=(255, 255), stroke_width=2, stroke_fill=(0, 255))
    L = []
    A = []
    for j in range(size):
        for i in range(size):
            L.append(img.getpixel((i, j))[0])
            A.append(255 - img.getpixel((i, j))[1])
    L = bytes(L)
    A = bytes(A)
    return L, A

# def draw_character(char, type, font_path='WenQuanYi.ttf', size = 24):
#     img1 = Image.new('A', (size, size), (0, 0))
#     img2 = Image.new('A', (size, size), (0, 0))
#     draw1 = ImageDraw.Draw(img1)
#     draw2 = ImageDraw.Draw(img2)
#     # 加载字体
#     font = ImageFont.truetype(font_path, size-3)
#     # 获取字符的尺寸
#     w = font.getlength(char)
#     # 计算居中位置
#     x = (size - w) // 2
#     y = -1

#     # 绘制白色字符
#     draw1.text((x, y), char, font=font, fill=(255), stroke_width=2, stroke_fill=(0))
#     draw2.text((x, y), char, font=font, fill=(0), stroke_width=2, stroke_fill=(255))
#     return L, A

class BFD_FONT:
    def __init__(self):
        self.head = b"\x42\x46\x44\x32\x34\x2D\x30\x30\x18\x00\x18\x00"
        self.chars : str
        self.charsCount : int
    
    def get_chars(self, allTexts):
        h = HanziReplacer()
        h.ReadTransAndGetHanzidict([allTexts])
        textDict = {}
        for text in allTexts:
            text = h.hanzitihuan(text)
            for char in text:
                textDict[char] = 1
        self.chars = "".join(textDict.keys())
        with open("chars.txt", "w", encoding="sjis") as f:
            f.write(self.chars)
        self.charsCount = len(self.chars)
        return h
    
    def rebuild(self, path, h: HanziReplacer, testMode = False):
        Ls = []
        As = []
        replace_dict = {}
        for k in h.hanzidict:
            replace_dict[h.hanzidict[k]] = k
        for char in self.chars:
            if testMode:
                L, A = draw_character("花咲夜"[random.randint(0, 2)], 2)
            else:
                L, A = draw_character(replace_dict.get(char, char), 1)
            Ls.append(L)
            As.append(A)
        res = self.head + self.charsCount.to_bytes(4, byteorder='little') + self.chars.encode("932") + b"".join(Ls) + b"".join(As)
        save_file_b(path, res)