from LIB.PCK_FILE import *

ori_scenepck_path = "Scene.pck"# 需要解包的pck文件路径
outpath = "unpacked_scene"# 解包输出路径

os.makedirs(outpath, exist_ok=True)

pck = PCK_File(ori_scenepck_path)
if pck.header.ExtraKeyUse == 1:
    pck.undec(gen_key("暗号.dat"))

# pck.save_header_infos("cmds.json")

for name in pck.scenes:
    data = pck.scenes[name]
    data.extra_dec()
    data.decompress()
    save_file_b(f"{outpath}/{name}.ss", data.data)