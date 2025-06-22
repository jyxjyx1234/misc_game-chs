from Lib import *

data = open_file_b("temp.bin")
mode = "pack"

# matches = re.finditer(rb"[\x00-\xff]*?(?=\x00\x00)", data)
if mode == "dump":
    texts = {}
    i = 0
    buf = b""
    while True:
        if i >= len(data):
            break
        char = data[i:i+2]
        i += 2
        if char == b"\x00\x00":
            if buf:
                text = buf.decode("utf-16-le")
                texts[text] = ""
                print(text)
                buf = b""
        else:
            buf += char
    save_json("texts.json", texts)

elif mode == "pack":
    texts = open_json("texts.json")
    i = 0
    buf = b""
    start = 0
    f = open("temp_.bin", "wb")
    f.write(data)
    while True:
        if i >= len(data):
            break
        char = data[i:i+2]
        i += 2
        if char == b"\x00\x00":
            if buf:
                text = buf.decode("utf-16-le")
                trans = texts.get(text, "")
                # print(f"Translating: {text} -> {trans}")
                transb = trans.encode("utf-16-le")
                if len(transb) > len(buf):
                    print(f"Warning: translation '{text}' is longer than original, truncating.")
                else:
                    f.seek(start)
                    f.write(transb)
                    f.write(b"\x00\x00")
                    buf = b""
        else:
            if buf == b"":
                start = i - 2
            buf += char
    f.close()
