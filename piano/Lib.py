import json
import subprocess

def open_file_b(path)->bytes:
    return open(path,'rb').read()

def from_bytes(b:bytes)->int:
    return int.from_bytes(b, byteorder='little', signed=False)

def save_file_b(path,data)->None:
    with open(path,'wb') as f:
        f.write(data)

def save_json(path:str,data)->None:
    with open(path,'w',encoding='utf8') as f:
        json.dump(data,f,ensure_ascii=False,indent=4)

def open_json(path:str):
    f = open(path,'r',encoding='utf8')
    return json.load(f)

def to_bytes(num:int,length:int)->bytes:
    return num.to_bytes(length,byteorder='little')

def replace_symbol_for_gbk(text):
    text = text.replace("〜","～")
    text = text.replace("♪", "")
    text = text.replace("♡", "")
    text = text.replace("・", "·").replace("･･･", "…")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    return text

def replace_halfwidth_with_fullwidth(string):
    # 将半角符号替换为全角符号
    halfwidth_chars = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ "
    fullwidth_chars = "！＂＃＄％＆＇（）＊＋，－．／：；＜＝＞？＠［＼］＾＿｀｛｜｝～０１２３４５６７８９ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ\u3000"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

def copyfontinfo(ori_font,info_provider,outpath):
    ori = subprocess.check_output(('otfccdump.exe', '-n', '0', '--hex-cmap', '--no-bom', ori_font)).decode('utf8',errors='ignore')
    ori = json.loads(ori)
    infoprov = subprocess.check_output(('otfccdump.exe', '-n', '0', '--hex-cmap', '--no-bom', info_provider)).decode('utf8',errors='ignore')
    infoprov = json.loads(infoprov)

    ori['name'] = infoprov['name']
    for i in ori['OS_2']:
        if type(ori['OS_2'][i]) !=type(1):
            ori['OS_2'][i] = infoprov['OS_2'][i]

    subprocess.run(['otfccbuild.exe', '-O3', '-o', outpath], input=json.dumps(ori), encoding='utf-8')
    
class OriJsonOutput():
    def __init__(self) -> None:
        self.savefilter = lambda x: True
        self.textcount = 0
        self.messageset = set()
        self.outlist = []
        self.dic = {}
    
    def save_json(self, path, split = 0):
        if not split:
            save_json(path, self.outlist)
        else:
            l = len(self.outlist) // split
            for i in range(split):
                outlist = self.outlist[i*l : i*l + l] if i+1 != split else self.outlist[i*l : ]
                save_json(f'{i+1}_{path}', outlist)
    
    def append_dict(self, quchong = True):
        if quchong:
            if self.dic['message'] in self.messageset:
                self.dic = {}
                return
        if self.savefilter(self.dic):
            if self.dic['name'] == "":
                del self.dic['name']
            self.outlist.append(self.dic)
            self.textcount += len(self.dic['message'])
            self.messageset.add(self.dic['message'])
            self.dic = {}

from fontTools.ttLib import TTFont
from fontTools.pens.t2CharStringPen import T2CharStringPen
import os

def replace_glyphs(font_a_path, font_b_path, mapping_dict, output_path):
    # 加载字体 A 和 B
    font_a = TTFont(font_a_path)
    font_b = TTFont(font_b_path)

    # 获取字体 A 和 B 的字形表
    glyf_a = font_a['glyf']
    glyf_b = font_b['glyf']

    # 获取字体 A 和 B 的字符映射表
    cmap_a = font_a.getBestCmap()
    cmap_b = font_b.getBestCmap()

    # 遍历字体 A 中的所有字符
    for unicode_value, glyph_name in cmap_a.items():
        char = chr(unicode_value)

        if char in mapping_dict:
            # 如果字符在映射字典中，使用映射后的字符在字体 B 中查找
            mapped_char = mapping_dict[char]
            mapped_unicode = ord(mapped_char)
            if mapped_unicode in cmap_b:
                mapped_glyph_name = cmap_b[mapped_unicode]
                glyf_a[glyph_name] = glyf_b[mapped_glyph_name]
        #elif unicode_value in cmap_b:
        #    # 如果字符不在映射字典中，但在字体 B 中存在，直接替换
        #    glyph_name_b = cmap_b[unicode_value]
        #    glyf_a[glyph_name] = glyf_b[glyph_name_b]

    # 保存修改后的字体 A
    font_a.save(output_path)