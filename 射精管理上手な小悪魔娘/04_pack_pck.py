from LIB.PCK_FILE import *

ori_scenepck_path = "Scene.pck"#原始的scene.pck文件
new_scene_data_path = "rebuild_scene"#翻译后的scene文件夹
output_scenepck_path = "release\\sceneZH.pck"#输出的新的scene.pck文件
remove_source_code = True#是否删除pck中的源代码文件

# 由于python很杂鱼，压缩需要一定的时间，请耐心等待。

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
pck.compress_and_enc_all_scenes()
pck.rebuild(output_scenepck_path, remove_source_code=remove_source_code)