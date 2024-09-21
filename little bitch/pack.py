from Lib import *

ori = open_file_b("data.pac")
transed_textdat = open_file_b("release\\release\data\TEXT.DAT")
SCR_data = open_file_b("release\\release\data\SCRIPT.SRC")

ori = ori[:0x6B904] + transed_textdat + ori[-4:]
ori = ori[:0xa04] + to_bytes(len(transed_textdat),4) +ori[0xa08:]
ori = ori[:0xf266] + SCR_data +ori[0x6b8d6:]

save_file_b("release\\release\data.pac", ori)