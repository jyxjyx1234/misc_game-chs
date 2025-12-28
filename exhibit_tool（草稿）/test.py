from Lib import * 
from RLD_FILE import *

os.makedirs('res', exist_ok=True)
os.makedirs('new', exist_ok=True)
for file in os.listdir('bin'):
    data = open_file_b('bin/' + file)
    data = ExBytesIO(data)
    res = parse_rld(data)
    res = decode_str(res, '932')
    save_json("res/" + file + ".json", res)
    res = encode_str(res, '936')
    newrld = repack_rld(res)
    save_file_b("new/" + file, newrld)