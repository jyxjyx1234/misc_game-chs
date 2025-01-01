from Lib import *
import codecs

def decode_text(data: bytes) -> str:
    if b"\xf0" not in data:
        return data.decode("932")
    else:
        res = ""
        while len(data) > 0:
            if (data[0] >= 0x81 and data[0] <= 0x9f) or (data[0] >= 0xe0 and data[0] <= 0xef):
                res += data[:2].decode("932")
                data = data[2:]
            elif data[0] == 0xf0:
                res += f"[{data[1]:02x}]"
                data = data[2:]
            else:
                res += data[:1].decode("932")
                data = data[1:]
        return res
    
# 读取乱序全文本
text_all = []
data = open_file_b("text.bin")
data = data.split(b'\x00')
for i in data:
    if len(i) > 0:
        if not re.match(rb'[a-zA-Z\.0-9]', i):
            #i = re.sub(rb'\xf0[\x00-\xff]', b'', i)
            try:
                text_all.append(decode_text(i))
            except Exception as e:
                print(e)
                print(i)
                exit()

# 从output.txt中读取文本
files = ["output.txt", "output2.txt", "output3.txt"]
out = OriJsonOutput()
out.preProcess = lambda x: re.sub("\[.*?\]", "", x)
for f in files:
    data = open_file_b(f)
    data = data.split(b'###')
    for d in data:
        if d.startswith(b"@@@"):#name
            text = decode_text(d[3:])
            text = text.strip("\r\n")
            out.add_name(text)
        else:#text
            text = decode_text(d)
            text = text.strip("\r\n").replace("\r\n", "\n")
            out.add_text(text)
            out.append_dict(quchong=True)
        i = 1
        # while i:
        #     try:
        #         text_all.remove(text)
        #     except:
        #         i = 0
                
for i in text_all:
    out.add_text(i)
    out.append_dict(quchong=True)

out.save_json("gt_input\output", split=10)
#save_json("names.json", out.get_names())
print(out.textcount)