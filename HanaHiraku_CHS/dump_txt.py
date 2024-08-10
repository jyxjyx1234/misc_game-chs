from Lib import *

ori_folder = "scr/"
out_file = "ori_text_xuanxiang.json"
out_file_for_trans = "ori_text_fortrans_xuanxiang.json"

files = os.listdir(ori_folder)

findtext = re.compile(rb'\xf0\x00[\x00-\xff]{4}([\x00-\xff]*?)\x00|\xf0\x42[\x00-\xff]{4}([\x00-\xff]*?)\x00|(\xf0\x4c\x00\x00\x00\x00)|\xf0\x4A[\x00-\xff]{4}([\x01-\x04])([\x00-\xff]*?)\x00([\x00-\xff]*?)\x00([\x00-\xff]*?)\x00([\x00-\xff]*?)\x00')
#0:文本
#1:人名
#2:一句对话结束的标识
#3:选项个数
#4\5\6\7:选项

out = []
dic = {}

quchong = []

for i in files:
    f = open_file_b(ori_folder + i)
    matches = findtext.findall(f)
    for match in matches:
        '''
        if match[0]:
            dic['message'] = dic.get('message','') + match[0].decode(encoding = 'sjis') + '\\n'

        if match[1]:
            if len(match[1])!=1:
                dic['name'] = match[1].decode(encoding = 'sjis')[1:-1]

        if match[2]:
            if "message" in dic:
                out.append(dic)
                dic = {}

        if match[3]:
            if "message" in dic:
                out.append(dic)
                dic = {}

            n = from_bytes(match[3])
            for _ in range(n):
                dic['message'] = match[4 + _].decode(encoding = 'sjis')
                out.append(dic)
                dic = {}
        '''

        if match[3]:
            if "message" in dic:
                if dic["message"] not in quchong:
                    quchong.append(dic["message"])
                    out.append(dic)
                    dic = {}
                else:
                    dic = {}
            n = from_bytes(match[3])
            for _ in range(n):
                dic['message'] = dic.get("message","") + match[4 + _].decode(encoding = 'sjis')+"\n"

save_json(out_file, out)

all_l = 0
for i in range(out.__len__()):
    for k in out[i]:
        out[i][k] = out[i][k].replace("#1","美紀男").replace("\\n","　")
        all_l += len(out[i][k])

save_json(out_file_for_trans, out)
print(all_l)