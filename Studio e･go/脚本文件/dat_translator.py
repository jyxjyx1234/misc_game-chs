from Lib import *

dat_path = "data"
dat_outpath = "data_trans"
dat_trans_encoding = "932"
dat_outdata_path = "dat_text"
dat_transdata_path = "dat_transtext"

os.makedirs(dat_outpath, exist_ok=True)
os.makedirs(dat_outdata_path, exist_ok=True)
# 提取后将存储在dat_text文件夹下
# 翻译后保存在dat_transtext文件夹下，不需要翻译的文本直接删除（尤其是提取到的乱码必须删除）
# 替换后的dat文件将存储在data_trans

for file in os.listdir(dat_path):
    if file.endswith(".dat"):
        data = open_file_b(os.path.join(dat_path, file))
        havetrans = False
        try:
            transdata = open_json(os.path.join(dat_transdata_path, file + ".json"))
            havetrans = True
        except:
            transdata = {}
        dump = {}
        datas = data.split(b"\x00")
        data_ = []
        for i in datas:
            if i != b'' or data_ == []:
                data_.append(i)
            else:
                data_[-1] += b'\x00'
        for i, d in enumerate(data_):
            d_ = d.split(b"\x00")[0]
            if len(d_) < 2:
                continue
            if re.search(b"[\x00-\x08\xff]", d_):
                continue
            try:
                text = d_.decode("932")
            except:
                continue
            if re.match(r"^[0-9a-zA-Z-%_\n\r\t ]+$", text):
                continue
            dump[text] = text
            if havetrans and text in transdata:
                newtext = transdata[text]
                newtextb = newtext.encode(encoding=dat_trans_encoding)
                if len(newtextb) > len(d - 1):
                    print(f"Warning: Translation for '{text}' is longer than original text, skipping.")
                    continue
                data_[i] = newtextb + b"\x00" * (len(d) - len(newtextb))
        if havetrans:
            save_file_b(os.path.join(dat_outpath, file), b"\x00".join(data_))
        if len(dump) > 0:
            save_json(os.path.join(dat_outdata_path, file + ".json"), dump)
                    
