from Lib import *
from PIL import Image, ImageDraw, ImageFont
from io import BytesIO

'''
替換字體
00401DE6                                        | E8 55970000                         | call onsen.40B540                                                                                 | 替换字体
00401DEB                                        | 8B15 D08E4C00                       | mov edx,dword ptr ds:[4C8ED0]                                                                     |
'''


font = ImageFont.truetype("simsun.ttc", 28)
def draw_char(char):
    img = Image.new("LA", (30, 30), (0, 0))
    draw = ImageDraw.Draw(img)
    draw.text((1, 1), char, font=font, fill=(255, 255), stroke_fill=(0, 255), stroke_width=1)
    res = []
    imgdata = list(img.getdata())
    for i in range(15 * 30):
        A1, L1 = imgdata[2 * i]
        A2, L2 = imgdata[2 * i + 1]
        d = ((A1 // 64) << 6) | ((L1 // 64) << 4) | ((A2 // 64) << 2) | (L2 // 64)
        res.append(d)
    return bytes(res)

def get_char_offset(char):
    char = char.encode("932")
    if len(char) != 2:
        return 0
    char1 = char[0]
    char2 = char[1]
    if char1 < 0xa0:
        offset = (char1 * 192 + char2 - 0x6100) * 450
    else:
        offset = (char1 * 192 + char2 - 0x9100) * 450
    return offset

def redraw_char(char, replace, outfont:BytesIO):
    offset = get_char_offset(char)
    if offset == 0:
        return
    res = draw_char(replace.get(char, char))
    if offset > 0x3df680:
        print(char)
        print(char.encode("932").hex())
        return
    outfont.seek(offset)
    outfont.write(res)

# try:
#     replace = open_json("replace.json")
# except:
#     replace = {}

def main(replace):
    orifont = open_file_b("GR#01471")
    outfont = open("release/script/GR#01471", "wb")
    outfont.write(orifont)
    for char1 in range(0x81, 0xa0):
        for char2 in range(0x40, 0xfd): 
            if char2 == 0x7f:  
                continue
            try:
                char_bytes = bytes([char1, char2])
                char = char_bytes.decode('cp932')
                redraw_char(char, replace, outfont)
            except UnicodeDecodeError:
                continue

    for char1 in range(0xe0, 0xf0): 
        for char2 in range(0x40, 0xfd):
            if char2 == 0x7f:
                continue
            try:
                char_bytes = bytes([char1, char2])
                char = char_bytes.decode('cp932')
                redraw_char(char, replace, outfont)
            except UnicodeDecodeError:
                continue
    outfont.close()

if __name__ == "__main__":
    offset = get_char_offset("あ")
    orifont = open_file_b("GR#01471")
    imgdata = orifont[offset:offset + 450]
    img = Image.new("LA", (30, 30), (0, 0))
    for i in range(450):
        L1 = ((imgdata[i] & 0b11000000) >> 6) * 64
        A1 = ((imgdata[i] & 0b00110000) >> 4) * 64
        L2 = ((imgdata[i] & 0b00001100) >> 2) * 64
        A2 = (imgdata[i] & 0b00000011) * 64
        img.putpixel((2 * (i % 15), i // 15), (A1, L1))
        img.putpixel((2 * (i % 15) + 1, i // 15), (A2, L2))
    img.save("test.png")