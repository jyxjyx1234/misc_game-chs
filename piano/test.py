'''
测试封包代码用，检验重新生成脚本后是否和原文件md5一致。
'''

from Lib import *
import os
import hashlib

def file_hash(file_path: str, hash_method) -> str:
    if not os.path.isfile(file_path):
        print('文件不存在。')
        return ''
    h = hash_method()
    with open(file_path, 'rb') as f:
        while b := f.read(8192):
            h.update(b)
    return h.hexdigest()

ori_path = "ISF0\\"
out_path = "ISF1\\"
ori_files = os.listdir(ori_path)
for f in ori_files:
    orihash = file_hash(ori_path + f, hashlib.md5)
    outhash = file_hash(out_path + f, hashlib.md5)
    if orihash!=outhash:
        print(f)