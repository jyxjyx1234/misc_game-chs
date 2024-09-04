from Lib import *

text_and_opt_patten = re.compile(rb'(?<=\x24\x70\x00\x00)([\x00-\xff]{4})([\x00-\xff]*?)(?=\x00)|(?<=\x73\x65\x6C\x74)([\x00-\xff]{4})([\x00-\xff]*?)(?=\x00)|(\x70\x61\x67\x65)')
jump_patten = re.compile(rb'(?<=\x24\x74\x6F\x00\x04\x00\x00\x00)([\x00-\xff]{4})')

if __name__ == "__main__":
    ori_path = 'scenario/'
    out_path = 'ori_jsons/'
    os.makedirs(out_path, exist_ok=True)
    ori_files = os.listdir(ori_path)
    namedict = {}
    for f in ori_files:
        data = open_file_b(ori_path + f)
        out = OriJsonOutput()
        out.preprocess = lambda x: re.sub('[「　」]', '', x)
        matches = text_and_opt_patten.findall(data)
        for match in matches:
            try:
                if match[4]:
                    out.append_dict(quchong = False)
                    continue

                text = match[1] if match[1] else match[3]
                text = text.decode('cp932')
                if text[0] == "【":
                    out.dic['name'] = text[1:-1]
                else:
                    out.dic['message'] = out.dic.get('message', '') + text
                    out.dic['hangshu'] = out.dic.get('hangshu', 0) + 1
                if match[3]:#选项
                    out.append_dict(quchong = False)
            except:
                print(f)
                print(match)
                exit()
        namedict.update(out.get_names())
        out.save_json(out_path + f + '.json')
    save_json('namedict.json', namedict)