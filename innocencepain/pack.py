from Lib import *

folder = "event_d_c\\"
outp = "release\\GROUP\\event.grp"
os.makedirs("release\\GROUP", exist_ok=True)

length = 0x138
entry = []
out = []
for i in range(76):
    entry.append(to_bytes(length, 4))
    data = open_file_b(folder + f"Event#00{i:02}")
    if len(data) % 4 != 0:
        data += b"\x00" * (4 - len(data) % 4)
    length += len(data)
    out.append(data)
entry.append(to_bytes(length, 4))
entry.append(to_bytes(0, 4))

res = b"".join(entry) + b"".join(out)
save_file_b(outp, res)
