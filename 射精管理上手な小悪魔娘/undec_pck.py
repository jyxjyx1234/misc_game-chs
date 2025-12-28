#生成未加密的pck文件。未加密的pck文件可以被任意加密的exe读取，所以可以不用替换密钥。
#默认状态下会移除pck文件中附带的源代码，以减小发布的文件体积。如果需要保留，可以将rebuild函数的remove_source_code参数设为False。
from LIB.PCK_FILE import PCK_File
from gen_key import gen_key

ori_pck_path = "Scene.pck"  #原始加密的pck文件路径
out_pck_path = "免认证补丁\\Scene.pck"  #输出未加密的pck文件路径

pck = PCK_File(ori_pck_path)
pck.undec(gen_key("暗号.dat"))
pck.rebuild(out_pck_path, remove_source_code=True)#在这里可以选择是否移除源代码