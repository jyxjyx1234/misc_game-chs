from Lib import *

text = "一人で帰るか"

out = b""
for char in text:
    out += b"\x07\x00\x00\x00\x00\x00\x00\x00" + char.encode("932") + b"\x00" * 2
print(out)

print(text.encode("932"))