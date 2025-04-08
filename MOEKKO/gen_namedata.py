from Lib import *

namedict = open_json("namedict.json")

textstart = 0x00480690

res = b""
offsets = []

for name in namedict:
    offsets.append(to_bytes(len(res) + textstart, 4))
    res += name.encode("932") + b"\x00"

print(b"".join(offsets).hex())
print(res.hex())
