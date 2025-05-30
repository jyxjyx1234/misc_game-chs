1、创建一个scr文件夹，将解包后的BCS文件放入。
2、运行BcsDec.exe。
3、运行bcs2csv.py，会生成一个scr_csv文件夹，观察。
4、打开bcs2csv.py，在dump方法中按照观察的csv的格式，参考注释的说明进行修改。
5、运行dump.py，文本提取到gt_input中。人名表在namedict.json中。
6、翻译完成后译文放入gt_output文件夹中，在namedict.json中修改人名，运行inject.py。release文件夹中会生成替换后的csv文件，还会生成一个cage_font.ttf，使用字体注入工具让游戏调用。
7、还需要重新绘制游戏内置字体。将解包的ft文件放入font文件夹，根据版本的不同运行FT_FILE或者FT_FILE_2.py。新生成的字体在release文件夹中。