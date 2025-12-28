from Lib import *
import time, shutil

gamename = "DeepOne-領界侵犯-"
modelname = "Claude-3.7-sonnet"

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
    "comment": "- 20250729 添加了字体自定义修改（详见readme.md） 添加了回想界面剧本名的翻译。 \n- 20250729 之前传错版本了，字体修改没生效，现在修改了。",
    "idx": idx,
    "times": time.strftime("%Y-%#m-%#d %H:%M:%S", time.localtime())
}

for f in os.listdir("release"):
    if f.endswith(".rar"):
        os.rename(os.path.join("release", f), os.path.join("release", f"{gamename} {modelname}.rar"))
        shutil.copy(os.path.join("release", f"{gamename} {modelname}.rar"), os.path.join(res_path, f"{gamename} {modelname}.rar"))

save_json(os.path.join(path, filename), dat)