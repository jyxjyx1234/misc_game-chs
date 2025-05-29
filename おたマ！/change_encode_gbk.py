from Lib import *

oridir = "release\\patch\\"
outdir = "release\\patch_gbk\\"
os.makedirs(outdir, exist_ok=True)

files = os.listdir(oridir)

for file in files:
    if file.endswith(".txt") or file.endswith(".asd") or file.endswith(".tjs") or file.endswith(".ks") or file.endswith(".csv"):
        data = open_file_b(oridir + file)
        # try:
        data = data.decode('utf-16')
        data = data.encode('936')
        save_file_b(outdir + file, data)
        # except:
        #     print(file)
        #     pass