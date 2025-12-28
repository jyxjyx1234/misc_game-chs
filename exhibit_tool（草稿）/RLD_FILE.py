import struct, re
from io import BytesIO

class ExBytesIO(BytesIO):
    def readstr(self):
        res = b''
        while True:
            c = self.read(1)
            if c == b'\0':
                break
            res += c
        return res

    def readu32(self):
        return struct.unpack('<I', self.read(4))[0]

def parse_cmd(cmd: ExBytesIO):
    op = cmd & 0xffff
    int_cnt = (cmd & 0xff0000) >> 16
    str_cnt = (cmd >> 24) & 0xf
    unk = cmd >> 28
    return (op, int_cnt, str_cnt, unk)

def parse_rld_header(stm: ExBytesIO):
  magic, unk1, unk2, inst_cnt, unk3 = struct.unpack('IIIII', stm.read(20))
  tag = stm.readstr()
  stm.seek(0x114)
  return (magic, unk1, unk2, inst_cnt, unk3, tag)

def parse_rld(stm: ExBytesIO):
    res = []
    magic, h_unk1, h_unk2, inst_cnt, h_unk3, h_tag = parse_rld_header(stm)
    res.append([magic, h_unk1, h_unk2, inst_cnt, h_unk3, h_tag])

    for i in range(inst_cnt):
        info = stm.readu32()
        if info == 0:
            continue
        op, int_cnt, str_cnt, unk = parse_cmd(info)
        line = 'int:'
        ints = []
        for i in range(int_cnt):
            val = stm.readu32()
            ints.append(val)
        strs = []
        for i in range(str_cnt):
            strs.append(stm.readstr())
        # if op == 0x5f:
        content = {}
        content["op"] = op
        content["unk"] = unk
        content["ints"] = ints
        content["strs"] = strs
        res.append(content)
    return res

def custom_encode(text, encoding):
    if encoding == "936":
        text = text.replace("・", "·").replace("♪", "")
    if "[" not in text:
        return text.encode(encoding)
    else:
        if encoding == "932":
            res = []
            buf = ""
            for char in text:
                if char not in "[]":
                    buf += char
                elif char == "[":
                    res.append(buf.encode(encoding))
                    buf = ""
                elif char == "]":
                    try:
                        b = bytes.fromhex(buf)
                        if len(b) != 1:
                            raise RuntimeError
                        res.append(b"\xf0" + b)
                    except:
                        res.append(("[" + buf + "]").encode(encoding))
            return b"".join(res)
        elif encoding == "936":
            res = []
            buf = ""
            for char in text:
                if char not in "[]":
                    buf += char
                elif char == "[":
                    res.append(buf.encode(encoding))
                    buf = ""
                elif char == "]":
                    try:
                        b = bytes.fromhex(buf)
                        if len(b) != 1:
                            raise RuntimeError
                        b = int.from_bytes(b)
                        b += 0x61 #目前的猜测是，f040在936编码中是aaa1
                        b = int.to_bytes(b, 1)
                        if len(b) != 1:
                            raise RuntimeError
                        res.append(b"\xaa" + b)
                    except:
                        res.append(("[" + buf + "]").encode(encoding))
            return b"".join(res)
        else:
            return text.encode(encoding)

def custom_decode(data, encoding):
    if encoding == "932":
        res = []
        i = 0
        while i < len(data):
            if data[i] <= 0x80 or (data[i] >= 0xa1 and data[i] <= 0xdf):
                res.append(data[i:i+1].decode(encoding))
                i += 1
            elif data[i] == 0xf0:
                i += 1
                res.append(f"[{data[i]:02x}]")
                i += 1
            else:
                res.append(data[i:i+2].decode(encoding))
                i += 2
        return "".join(res)
    else:
        return data.decode(encoding)
            
def encode_str(rld_content, encoding):
    for item in rld_content:
        if isinstance(item, list):
            item[5] = custom_encode(item[5], encoding)
        if isinstance(item, dict):
            item["strs"] = [custom_encode(s, encoding) for s in item["strs"]]
    return rld_content

def decode_str(rld_content, encoding):
    for item in rld_content:
        if isinstance(item, list):
            item[5] = custom_decode(item[5], encoding)
        if isinstance(item, dict):
            item["strs"] = [custom_decode(s, encoding) for s in item["strs"]]
    return rld_content
            

def repack_rld(rld_content):
    new_rld = []
    magic, h_unk1, h_unk2, inst_cnt, h_unk3, h_tag = rld_content[0]
    inst_cnt = len(rld_content) - 1
    new_rld.append(struct.pack('IIIII', magic, h_unk1, h_unk2, inst_cnt, h_unk3))
    new_rld.append(h_tag + b'\0' * (0x100 - len(h_tag)))
    for item in rld_content[1:]:
        unk = item["unk"]
        ints = item["ints"]
        strs = item["strs"]
        op = item["op"]
        int_cnt = len(ints)
        str_cnt = len(strs)
        cmd = (op & 0xffff) | ((int_cnt & 0xff) << 16) | ((str_cnt & 0xf) << 24) | (unk << 28)
        new_rld.append(struct.pack('<I', cmd))
        for val in ints:
            new_rld.append(struct.pack('<I', val))
        for s in strs:
            new_rld.append(s + b'\x00')
    return b''.join(new_rld)
