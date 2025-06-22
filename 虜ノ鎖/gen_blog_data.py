from Lib import *
import time, shutil

gamename = "虜ノ鎖～処女たちを穢す淫らな楔～"
modelname = "claude-3.7-sonnet"

path = "D:\\jyxjyx1234.github.io\\datas"
res_path = "D:\\jyxjyx1234.github.io\\resources"
post_path = "D:\\jyxjyx1234.github.io\\_posts"
idx = 0
filename = f"{gamename} {modelname}.json"

for f in os.listdir(path):
    if f == filename:
        print(f"File {filename} already exists, loading...")
        data = open_json(os.path.join(path, f))
        idx = data["idx"]
        break
    data = open_json(os.path.join(path, f))
    print(idx)
    idx = max(idx, data["idx"])
else:
    idx += 1

for f in os.listdir(post_path):
    if f"{gamename} {modelname}" in f:
        os.remove(os.path.join(post_path, f))
        break

print(idx)

dat = {
    "name": f"{gamename} {modelname}",
    "urls": [
        {
            "name": f"{gamename} {modelname}.rar",
            "url": f"resources/{gamename} {modelname}.rar"
        }
    ],
    "comment": "本补丁针对非动态版，需安装两个DLC。请在简体中文系统中运行本补丁。\n- 20250612：修正了このみ线进线分支前的一处闪退问题。\n-  20250612：修正了几处漏译。所有部分已经检查完毕，没有闪退和遗漏。",
    "idx": idx,
    "times": time.strftime("%Y-%#m-%#d %H:%M:%S", time.localtime())
}

for f in os.listdir("release"):
    if f.endswith(".rar"):
        os.rename(os.path.join("release", f), os.path.join("release", f"{gamename} {modelname}.rar"))
        shutil.copy(os.path.join("release", f"{gamename} {modelname}.rar"), os.path.join(res_path, f"{gamename} {modelname}.rar"))

save_json(os.path.join(path, filename), dat)