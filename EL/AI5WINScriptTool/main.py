from ai5win_mes_gui import AI5WINMesGUI

debug = False

# Strings are encrypted not in rotation manner...
# Seems not a simple XOR with one key either.
# Not a simple module + - either.


def rotate_left(byter, rotator):
    """Rotation. Does not needed, for string encryption is another type."""
    news = bin(byter)[2:]
    news = '0' * (8 - len(news)) + news
    for i in range(rotator):
        news = news[1:] + news[0]
    news = int(news, 2)
    return news


def hack_string(list_bytes, encoding: str = "cp932") -> str:
    """Hack string crypto."""
    import struct
    i = 0
    key = 0
    i = 0

    string = b''
    #list_bytes = bytes.fromhex("E3 F2")
    # E3 -> 82 C8.
    # F2 -> 81 41.
    # -
    # 0F -> 01 84.
    # 15 -> 391.
    while i < len(list_bytes):
        this_byte = list_bytes[i]
        if this_byte < 0x81:
            string += struct.pack('B', this_byte + 0x20)
            i += 1
            string += list_bytes[i:i+1]
            i += 1
        else:
            zlo = (this_byte - 0x7e1b) & 0xffff
            string += struct.pack('>H', zlo)
            #zlo = (this_byte - 0x5000) & 0xffff
            #string += struct.pack('>H', zlo)
            i += 1
    print(list_bytes.hex(' '))
    print(string.hex(' '))
    print(string.decode(encoding='shift-jis', errors='replace'))


def test(mode: str):
    # diss, ass, diss_for_hack, spec_cmp, string_hack...
    from ai5win_mes import AI5WINScript

    base_name = "h01b"
    script_mes = "{}.mes".format(base_name)
    file_txt = "{}.txt".format(base_name)
    hex_string = "6C 92 6D 4E E3 70 6C 6A D4 62 C5 62 A0 62 EA 62 CE F2 76 BE 73 FA 6E A9 75 AA 62 AA 6E 80" \
                 "62 CA E3 62 F1 F6 6E 96 F7 72 4E 62 E0 6D 6C E8 E3 E7"

    if mode == "diss":
        new_script = AI5WINScript(script_mes, file_txt, version=0, verbose=True, debug=False)
        new_script.disassemble()
        del new_script
    elif mode == "ass":
        new_script = AI5WINScript(script_mes, file_txt, version=0, verbose=True, debug=False)
        new_script.assemble()
        del new_script
    elif mode == "diss_for_hack":
        new_script = AI5WINScript(script_mes, file_txt, version=0, verbose=True, debug=True, hackerman_mode=True)
        new_script.disassemble()
        del new_script
    elif mode == "string_hack":
        new_string = bytes.fromhex(hex_string)
        print(hack_string(new_string))


def main():
    gui = AI5WINMesGUI()
    return True


if __name__ == '__main__':
    if debug:
        test("string_hack")
    else:
        main()
