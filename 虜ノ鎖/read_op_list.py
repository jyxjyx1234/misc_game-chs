from Lib import *

list1 = BytesReader(open_file_b("oplist1.bin"))
list2 = BytesReader(open_file_b("oplist2.bin"))
oplist = {}

for i in range(0x100):
    offset = list1.readU32()
    if offset == 0:
        continue
    offset -= 0x0057E850
    list2.seek(offset)
    res = ""
    while True:
        match list2.readU8():
            case 0x00:
                res += "c"
            case 0x01:
                res += "w"
            case 0x02:
                res += "w"
            case 0x03:
                res += "i"
            case 0x04:
                res += "I"
            case 0x05:
                res += "f"
            case 0x06:
                res += "T"
            case 0x07:
                res += "7"
            case 0x08:
                res += "8"
            case 0x09:
                res += "t"
            case 0x0A:
                res += "t"
            case 0xFE:
                res += "J"
            case 0xFF:
                oplist[hex(i)[2:]] = res
                break
            case _:
                raise Exception(f"Unknown opcode {list2.tell() - 1:02X} at {offset:08X}")

save_json("oplist_.json", oplist)       
