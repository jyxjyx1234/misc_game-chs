from Lib import *
import zlib
from PIL import Image, ImageDraw, ImageFont

def encode_LA_to_4bit(image):
    img_data = bytearray()
    pixels = image.getdata()
    for i in range(0, len(pixels), 2):
        l1, a1 = pixels[i]
        l2, a2 = pixels[i+1]
        l1_4bit = l1 >> 6
        a1_4bit = a1 >> 6
        l2_4bit = l2 >> 6
        a2_4bit = a2 >> 6
        b = (a2_4bit << 6) | (l2_4bit << 4) | (a1_4bit << 2) | l1_4bit
        img_data.append(b)
    return bytes(img_data)

fonts = [0] + [ImageFont.truetype("攸望POP3体W12（简繁）.ttf", i) for i in range(1, 50)]

not_found = []

class FT_CHAR:
    def __init__(self, char, data: bytes, height):
        self.char = char
        self.data:bytes = data
        self.height = height
    
    def re_draw(self, new_char):
        size = self.height
        img = Image.new("LA", (size, size), 0)
        draw = ImageDraw.Draw(img)
        font = fonts[size]
        bbox = draw.textbbox((0, 0), new_char, font=font, stroke_width=0.3)
        draw_width = int(bbox[2] - bbox[0])
        draw_height = int(bbox[3] - bbox[1])
        if len(self.char) == 1:
            draw.text((size//4 - draw_width//2, 0), new_char, font=font, fill=(255, 255), stroke_width=0.3, stroke_fill=(255, 255))
        else:
            draw.text((size//2 - draw_width//2, 0), new_char, font=font, fill=(255, 255), stroke_width=0.3, stroke_fill=(255, 255))
        if img.tobytes().strip(b"\x00") == b"":
            return
        img_data = encode_LA_to_4bit(img)
        self.data = img_data

class FT_FILE:
    def __init__(self, data : bytes):
        self.data = data
        data = BytesReader(data)
        self.header = data.read(8)
        self.charWidth = from_bytes(data.read(2))
        self.charHeight = from_bytes(data.read(2))
        self.unk1 = data.readU32()
        self.unk2 = data.readU32()
        self.charCount = data.readU32()
        self.unk3 = data.readU32()
        self.entriesLen = data.readU32()
        self.dataLen = data.readU32()
        self.chars = []
        for i in range(self.charCount):
            char = data.read(2)
            char = list(char)
            char.reverse()
            char[0] ^= 0xff
            char[1] ^= 0xff
            self.chars.append(bytes(char))
        self.chardatas = []
        for char in self.chars:
            self.chardatas.append(FT_CHAR(char, data.read(self.charWidth // 2 * self.charHeight), self.charHeight))
    
    def show(self, char):
        charb = char.encode("932")
        if len(charb) == 1:
            charb = b"\x00" + charb
        idx = self.chars.index(charb)
        img = Image.new("L", (self.charWidth // 2, self.charHeight), 0)
        img.frombytes(self.chardatas[idx].data)
        # img = img.resize((self.charWidth, self.charHeight), Image.LANCZOS)
        img.show()
        img.save("img.bmp")
    
    def rebuild(self, replace_dict):
        i = 0
        b_replace_dict = {}
        for key in replace_dict:
            b_replace_dict[key.encode("932")] = replace_dict[key]
        for char in self.chardatas:
            print(f"{i}/{self.charCount}", end="\r")
            if char.char in b_replace_dict:
                char.re_draw(b_replace_dict[char.char])
            else:
                try:
                    char.re_draw((char.char).strip(b"\x00").decode("932"))
                except UnicodeDecodeError:
                    pass
            i += 1
        
    def to_bytes(self):
        output = []
        output.append(self.data[:0x24 + self.entriesLen])
        for char in self.chardatas:
            output.append(char.data)
        return b"".join(output)
      
def main():   
    os.makedirs("release", exist_ok=True)
    replace_dict = open_json("replace.json")
    add_replace = {
        "歴": "歷",
        "羽": "羽",
        "益": "益",
    }
    replace_dict.update(add_replace)
    for file in os.listdir("font"):
        data = open_file_b(f"font\\{file}")
        ft = FT_FILE(data)
        ft.rebuild(replace_dict)
        save_file_b(f"release\\{file}", ft.to_bytes())
    save_json("not_found.json", not_found)

if __name__ == "__main__":
    main()