from Lib import *
from PIL import Image, ImageDraw, ImageFont

boxcut = "  441 カット\n\n"
with open("BOXCUT.txt", "r", encoding = "932") as f:
    boxcut += f.read()

def get_char(fidx, idx):
    textidx = fidx * 441 + idx
    try:
        textb = to_bytes(textidx, 2)
        res = textb.decode('utf-16-le')
    except:
        res = "\u3000"
    return res

def get_idx(char):
    textb = char.encode('utf-16-le')
    textidx = from_bytes(textb)
    return textidx // 441, textidx % 441

def get_pos(idx):
    x = idx % 21 * 48
    y = idx // 21 * 48
    return x, y


def draw_text(img: Image.Image, draw: ImageDraw, text, pos, font, r, g, b, a):
    if text in ["\u3000"]:
        return
    if text in ["【", "】", "「", "」", "『", "』", "（", "）", "…"]:
        rotated_img = Image.new('RGBA', (48, 48), (0, 0, 0, 0))
        rotated_draw = ImageDraw.Draw(rotated_img)
        rotated_draw.text((0, 0), text, fill=(r, g, b, a), font=font, stroke_width=3, stroke_fill=(255, 255, 255, 255))
        rotated_img = rotated_img.rotate(-90, expand=False)
        if text in ["…"]:
            new_img = Image.new('RGBA', (48, 48), (0, 0, 0, 0))
            new_img.paste(rotated_img, (-14, 0), rotated_img)
            rotated_img = new_img
        img.paste(rotated_img, (pos[0], pos[1]), rotated_img)
        return
    if text in ["、", "，", "。"]:
        pos = (pos[0] + 8, pos[1] - 8)
    draw.text(pos, text, fill=(r, g, b, a), font=font, stroke_width=3, stroke_fill=(255, 255, 255, 255))

def draw_font(fn, outpath, fontname):
    os.makedirs(outpath, exist_ok=True)
    font = ImageFont.truetype(fontname, 34)
    for fidx in range(0, 149):
        print(f"Drawing {fn}{fidx:04d}.png")
        img = Image.new('RGBA', (21 * 48, 21 * 48), (0, 0, 0, 0))
        draw = ImageDraw.Draw(img)
        for idx in range(441):
            char = get_char(fidx, idx)
            x, y = get_pos(idx)
            draw_text(img, draw, char, (x, y), font, 0, 0, 0, 255)

        empty = True
        for pixel in img.getdata():
            if pixel[3] != 0:  # Check alpha channel
                empty = False
                break
        if empty:
            continue
        # Add white pixels at the four corners
        img.putpixel((0, 0), (255, 255, 255, 1))
        img.putpixel((0, 21 * 48 - 1), (255, 255, 255, 1))
        img.putpixel((21 * 48 - 1, 0), (255, 255, 255, 1))
        img.putpixel((21 * 48 - 1, 21 * 48 - 1), (255, 255, 255, 1))
        img.save(os.path.join(outpath, f"{fn}{fidx:04d}.png"))
        with open(os.path.join(outpath, f"{fn}{fidx:04d}.txt"), "w", encoding="sjis") as f:
            f.write(f";;{fn}{fidx:04d}.png" + boxcut)
        
        # os.system(f"magick {outpath}\\{fn}{fidx:04d}.png -insert 0 {outpath}\\{fn}{fidx:04d}.psd")

if __name__ == '__main__':
    white_img = Image.new('RGBA', (21 * 48, 21 * 48), (255, 255, 255, 255))
    white_img.save("white.png")
    draw_font("_moji_AN48_", "g00_redraw_bmp", "simsun.ttc")
    # draw_font("_moji_SE48_", "g00_redraw_bmp", "simsun.ttc")
    print(get_char(134, 21 * 9 - 1))
    print(get_idx("。"))
    print(get_idx("…"))