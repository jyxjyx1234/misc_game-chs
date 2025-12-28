from pathlib import Path
exe_angou_original_element = bytes([
    0x36, 0x59, 0xc9, 0x73, 0x2e, 0xb5, 0x09, 0xba,
    0xe4, 0x4c, 0xf2, 0x6a, 0xa2, 0x34, 0xec, 0x7c,
])
def make_angou_element(angou_bytes: bytes) -> bytes:
    ret = bytearray(exe_angou_original_element)
    n = len(ret)
    if len(angou_bytes) == 0:
        return bytes(ret)
    cnt = n if len(angou_bytes) < n else len(angou_bytes)
    aaa = 0
    bbb = 0
    angou_len = len(angou_bytes)
    for _ in range(cnt):
        ret[bbb] ^= angou_bytes[aaa]
        aaa += 1
        if aaa == angou_len:
            aaa = 0
        bbb += 1
        if bbb == n:
            bbb = 0
    return bytes(ret)
def read_input_file(path: Path, strip_crlf: bool = True) -> bytes:
    data = path.read_bytes()
    if strip_crlf:
        while data.endswith(b"\r") or data.endswith(b"\n"):
            data = data[:-1]
    return data
def gen_key(file) -> None:
    path = Path(file)
    if not path.exists():
        print("未找到密钥文件：", path)
        return None
    data = read_input_file(path, strip_crlf=True)
    res = make_angou_element(data)
    return res
if __name__ == "__main__":
    res = gen_key("暗号.dat")
    print(res.hex())