from LIB.PCK_FILE import *
import time
import sys

ori_scenepck_path = "Scene.pck"#原始的scene.pck文件
new_scene_data_path = "rebuild_scene"#翻译后的scene文件夹
output_scenepck_path = "release/scene.chs"#输出的新的scene.pck文件
remove_source_code = True#是否删除pck中的源代码文件

ismakeCN_JP = False
fake_lzss = False

try:
    if "makeCN_JP" in sys.argv[1]:
        print("Making CN_JP version...")
        ismakeCN_JP = True
    if "fake" in sys.argv[1]:
        print("Using fake LZSS compression...")
        fake_lzss = True
except:
    pass

if ismakeCN_JP:
    new_scene_data_path += "_cnjp"
    output_scenepck_path = output_scenepck_path.replace(".chs", ".chj")
    data = open_file_b("release\\SiglusEngine_chs.exe")
    data = data.replace("Scene.chs".encode("utf-16-le"), "Scene.chj".encode("utf-16-le"))
    save_file_b("release\\SiglusEngine_chj.exe", data)

# 由于python很杂鱼，压缩需要一定的时间，请耐心等待。

time0 = time.time()
pck = PCK_File(ori_scenepck_path)
if pck.header.ExtraKeyUse == 1:
    pck.undec(gen_key("暗号.dat"))

for name in pck.scenes:
    data = pck.scenes[name]
    data.extra_dec()
    data.decompress()

for name in os.listdir(new_scene_data_path):
    if name.endswith(".ss") == False:
        continue
    name = name[:-3]
    data = open_file_b(os.path.join(new_scene_data_path, name + ".ss"))
    ss = PCK_Scene_Data(data)
    pck.scenes[name] = ss
pck.compress_and_enc_all_scenes(fake_lzss)
pck.rebuild(output_scenepck_path, remove_source_code=remove_source_code)
time1 = time.time()
print(f"Done! Time used: {time1 - time0} seconds.")