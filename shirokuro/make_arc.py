from Lib import *

files = os.listdir("assets_t")
head = b"\x40\x41\x52\x43\x48\x30\x30\x30\x0E\x32\x30\x32\x34\x31\x31\x32\x32\x30\x39\x35\x32\x30\x39"
outf = open("release/Archives/base_div0_archive.arc", "wb")
outf.write(head)
i = 0
for file in files:
    print(f"{i}/{len(files)}", end="\r")
    i += 1
    data = open_file_b("assets_t/" + file)
    outf.write(data)