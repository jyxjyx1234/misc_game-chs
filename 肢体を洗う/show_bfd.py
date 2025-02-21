from PIL import Image
from Lib import *
BFDdata = BytesReader(open("font.bfd_new", "rb").read())
BFDdata.seek(0x0C)
textCount = BFDdata.readU32()
textList = BFDdata.read(textCount * 2).decode("932")
fontData = BFDdata.read()

texts = "当副院緞用身体猛撞韈来的刹那"
im = Image.new("LA", (24 * len(texts), 24))
charidx = 0
for text in texts:
    idx = textList.find(text)
    offset1 = idx * 24 * 24
    offset2 = textCount * 24 * 24 + idx * 24 * 24

    imgdata1 = fontData[offset1:offset1+24*24]
    imgdata2 = fontData[offset2:offset2+24*24]

    for y in range(24):
        for x in range(24):
            i = y * 24 + x
            gray = imgdata1[i]
            alpha = 0xff - imgdata2[i]
            im.putpixel((x + 24 * charidx, y), (gray, alpha))
    charidx += 1

im.show()
im.save("font.png")