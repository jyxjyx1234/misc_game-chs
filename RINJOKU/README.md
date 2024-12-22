# YURIS_TOOLS

yuris引擎的处理工具，可以处理新版本（4.xx、5.xx）的一部分yuris引擎的汉化。如果有BUG或者问题欢迎提Issues。

本工具中有部分编译自[ZQF-ReVN/RxYuris at f3d87c05e621789275e82cf73dfc24b9351d5380 (github.com)](https://github.com/ZQF-ReVN/RxYuris/tree/f3d87c05e621789275e82cf73dfc24b9351d5380)

## 使用说明

### 拆包

使用garbro拆包，拆包时选择“尝试猜测”。将拆包得到的 `ybn`文件放入 `ysbin`文件夹。ysc\yscfg\yse\ysl\yst_list\yst\ysv件需要删除，否则后面可能出问题。这些文件里没有文本。

### 文件筛选

我只分析了文本相关的ysn文件，其他ysn文件可能会在后面的代码运行中导致bug，所以需要筛选文件。通过 `YSTB_GuessXorKey.exe`可以还原文件的原本路径和名称（本工具来自[ZQF-ReVN/RxYuris at f3d87c05e621789275e82cf73dfc24b9351d5380 (github.com)](https://github.com/ZQF-ReVN/RxYuris/tree/f3d87c05e621789275e82cf73dfc24b9351d5380)），可以筛选出游戏文本相关的文件，放入 `scr`文件夹中。

```
YSTL_Parse.exe -make
```

在当前文件夹下，在cmd中运行以上代码可以生成一个script文件夹，里面还原了文件名。文本相关文件通常在 `userscript`文件夹中。删除其他所有不需要的文件。在当前文件夹下，在cmd中运行以下代码：

```
YSTL_Parse.exe -back
```

在 `ysbin_new`文件夹中可以找到筛选出的文件。

### 寻找密钥

使用了异或加密。使用 `YSTB_GuessXorKey.exe` 进行猜密钥（本工具来自[ZQF-ReVN/RxYuris at f3d87c05e621789275e82cf73dfc24b9351d5380 (github.com)](https://github.com/ZQF-ReVN/RxYuris/tree/f3d87c05e621789275e82cf73dfc24b9351d5380)），选择一个ybn文件，在cmd中，在当前目录下运行以下命令：

```
YSTB_GuessXorKey.exe ysbin_new/xxxxxx.ybn
```

这里可以选个大一点的ybn文件。这会生成一个 `key.txt`文件，其中是密钥。

### 提取文本1

使用 ` read_YSTB_FILE.py`可以将文本提取到 `triline_text_ori`文件夹中。文本格式为三行文本，从上到下分别为原文、预翻译、最终翻译。其中[]里的数字为偏移标识，请勿改动。

如果文件有加密，会自动从 `Key.txt`读取密钥。

### 提取文本2

使用 ` triline2json.py`可以进一步的把三行文本提取为适用于GalTransl使用的json以进行机翻。这里的代码并没有考虑文本拼接的问题，如果需要拼接需要自行修改代码。

这里的代码中，文本格式为：【人名】文本，如果格式有变化需要修改。

json文件在 `json_ori`文件夹中。

### 导入文本1

如果使用了GalTransl进行机翻，使用 `json2triline.py`可以将Galtransl中 `trans_cache`里的文件重新生成翻译后的三行文本。将 `trans_cache`中的文件放入 `json_trans`文件夹中，运行代码。

同样，这里的代码中，文本格式为：【人名】文本，如果格式有变化需要修改。

新的三行文本在 `triline_text_trans`中。

如果没有使用机翻，人工翻译后的三行文本也放入这个文件夹。

### 导入文本2

使用 `import_YSTB_FILE.py`可以将三行文本中的译文导入到ybn文件中。

如果发现有gbk编码不支持的符号，可以在 `YSTB_FILE.py`的 `append_trans`方法中进行替换或者删除。对于注音标识、特殊符号标识等，也可以设置进行替换为原本的编码以正确识别。

同样，如果文件有加密，会自动从 `Key.txt`读取密钥。

### 人名显示处理

Yuris引擎中有文件定义了人名，如果不修改的话，对话中人名将无法正常显示。

现在的效果：

![1722575060988](image/README/1722575060988.png)

正常效果：

![1722575074786](image/README/1722575074786.png)

按照“文件筛选”中同样的步骤找到这个文件。通常名为 `キャラ名定義.txt`或类似的名字，在 `userdefine`文件夹中。找到这个文件并按上面的操作还原文件名，创建一个名为 `name_define`的文件夹并放入该文件。

使用 `change_name_define.py`可以转化该文件，自动放入 `scr_trans`和 `Release`文件夹中。

### 封包

没有研究。祈祷游戏支持免封包吧。关于免封包的研究可以参考[Dir-A_Essays_MD/Reverse/[YU-RIS] 免封包处理/[YU-RIS] 免封包处理.md at d76a81f734d8e26ac9cbf226f2c20f3d921e68fd · Dir-A/Dir-A_Essays_MD (github.com)](https://github.com/Dir-A/Dir-A_Essays_MD/blob/d76a81f734d8e26ac9cbf226f2c20f3d921e68fd/Reverse/%5BYU-RIS%5D%20%E5%85%8D%E5%B0%81%E5%8C%85%E5%A4%84%E7%90%86/%5BYU-RIS%5D%20%E5%85%8D%E5%B0%81%E5%8C%85%E5%A4%84%E7%90%86.md)

### 引擎中文化

使用 `GBK.py`可以实现引擎的中文化。需要将游戏启动的exe文件放入和代码同一个文件夹中，在代码中手动填入exe名称。如果报错，说明游戏可能不支持。其中所用的setdll.exe来自[microsoft/Detours: Detours is a software package for monitoring and instrumenting API calls on Windows. It is distributed in source code form. (github.com)](https://github.com/microsoft/Detours)

生成的 `_chs.exe`即为支持gbk编码的程序，需要连同 `MyDll.dll`一同发布，在游戏运行时需要放在游戏目录下。

补丁所需要的文件会自动复制到 `Release`文件夹中。
