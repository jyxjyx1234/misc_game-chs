from Lib import *
from MED_FILE import *

while True:
    print("MED引擎工具包 by ALyCE/jyxjyx1234")
    print("1.解包")
    print("2.提取文本")
    print("3.替换文本（需要对文本事先处理，文本中仅能含有sjis编码字符。可以事先用我的字体替换工具处理）")
    print("4.打包")
    print("5.退出") 

    choice=input("请选择操作：(1/2/3/4/5)")

    if choice=="1":
        input("请将md_scr.med放入目录！按回车继续...")
        f = MEDFile("md_scr.med")
        print("解包中...")
        print("文件保存在md_scr文件夹中！")
        input("按回车继续...")
        print("\n\n\n\n")

    elif choice=="2":
        input("请将md_scr.med解包后的内容（md_scr文件夹）放入目录！按回车继续...")
        print("文本提取中...")
        import dump_text
        print("文本保存在gt_input文件夹中！")
        print("人名表保存在namedict.json中！")
        print("请勿修改文本json中的hangshu字段！")
        input("按回车继续...")
        print("\n\n\n\n")

    elif choice=="3":
        print("注意！需要对文本事先处理，文本中仅能含有sjis编码字符。可以事先用我的字体替换工具处理。")
        print("请将翻译后的namedict.json放入目录！")
        print("请将翻译后的文本json放入gt_output文件夹！")
        input("按回车继续...")
        print("文本替换中...")
        import import_text
        print("替换后的脚本保存在md_scr_trans中！")
        input("按回车继续...")
        print("\n\n\n\n")
    
    elif choice=="4": 
        print("请将要打包的所有文件放入md_scr_trans中！")
        print("请将原本的md_scr.med放入目录！")
        input("按回车继续...")
        print("打包中...")
        f=MEDFile("md_scr.med")
        os.makedirs("release\\", exist_ok=True)
        f.repack("md_scr_trans\\", "release\\md_scr.med")
        print("打包完成！保存在release文件夹中！")
    
    elif choice=="5":
        break

    else:
        print("输入错误！请重新输入！")
        input("按回车继续...")
