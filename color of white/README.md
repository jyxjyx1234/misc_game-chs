# YURIS_TOOLS

这是yuris引擎的处理工具，可以处理新版本（4.xx、5.xx）的一部分yuris引擎的汉化。

本工具中有部分编译自[ZQF-ReVN/RxYuris at f3d87c05e621789275e82cf73dfc24b9351d5380 (github.com)](https://github.com/ZQF-ReVN/RxYuris/tree/f3d87c05e621789275e82cf73dfc24b9351d5380)

## 使用说明

### 拆包

使用garbro拆包，拆包时选择“尝试猜测”。将拆包得到的 `ybn`文件放入 `ysbin`文件夹。ysc\yscfg\yse\ysl\yst_list\yst\ysv件需要删除，否则后面可能出问题。这些文件里没有文本。

## 文件筛选

我只分析了文本相关的ysn文件，其他ysn文件可能会在后面的代码运行中导致bug，所以需要筛选文件。通过 `YSTB_GuessXorKey.exe`可以还原文件的原本路径和名称（本工具来自[ZQF-ReVN/RxYuris at f3d87c05e621789275e82cf73dfc24b9351d5380 (github.com)](https://github.com/ZQF-ReVN/RxYuris/tree/f3d87c05e621789275e82cf73dfc24b9351d5380)），可以筛选出游戏文本相关的文件，放入 `scr`文件夹中。

```
YSTL_Parse.exe -make
```

在当前文件夹下，在cmd中运行以上代码可以生成一个script文件夹，里面还原了文件名。文本相关文件通常在 `userscript`文件夹中。删除其他所有不需要的文件。在当前文件夹下，在cmd中运行以下代码：

```
YSTL_Parse.exe -back
```

在 `ysbin_new`文件夹中可以找到筛选出的文件。

## 寻找密钥

使用了异或加密。使用 `YSTB_GuessXorKey.exe` 进行猜密钥（本工具来自[ZQF-ReVN/RxYuris at f3d87c05e621789275e82cf73dfc24b9351d5380 (github.com)](https://github.com/ZQF-ReVN/RxYuris/tree/f3d87c05e621789275e82cf73dfc24b9351d5380)），选择一个ybn文件，在cmd中，在当前目录下运行以下命令：

```
YSTB_GuessXorKey.exe ysbin_new/xxxxxx.ybn
```

这里可以选个大一点的ybn文件。这会生成一个 `key.txt`文件，其中是密钥。

## 提取文本1

使用 ` read_YSTB_FILE.py`可以将文本提取到 `triline_text_ori`文件夹中。文本格式为三行文本，从上到下分别为原文、预翻译、最终翻译。其中[]里的数字为偏移标识，请勿改动。

如果文件有加密，需要在代码开头的encrypt处更改密钥。

## 提取文本2

使用 ` triline2json.py`可以进一步的把三行文本提取为适用于GalTransl使用的json以进行机翻。这里的代码并没有考虑文本拼接的问题，如果需要拼接需要自行修改代码。

这里的代码中，文本格式为：【人名】文本，如果格式有变化需要修改。

json文件在 `json_ori`文件夹中。

## 导入文本1

如果使用了GalTransl进行机翻，使用 `json2triline.py`可以将Galtransl中 `trans_cache`里的文件重新生成翻译后的三行文本。将 `trans_cache`中的文件放入 `json_trans`文件夹中，运行代码。

同样，这里的代码中，文本格式为：【人名】文本，如果格式有变化需要修改。

新的三行文本在 `triline_text_trans`中。

如果没有使用机翻，人工翻译后的三行文本也放入这个文件夹。

## 导入文本2

使用 `import_YSTB_FILE.py`可以将三行文本中的译文导入到ybn文件中。

同样，如果文件有加密，需要在代码开头的encrypt处更改密钥。

## 封包

没有研究。祈祷游戏支持免封包吧。

## 引擎中文化

使用 `change_range.py`可以实现引擎的中文化。需要将exe放入和代码同一个文件夹中，需要手动填exe名称。如果报错，说明游戏可能不支持。

生成的 `_chs.exe`即为支持gbk编码的程序，需要连同 `MyDll.dll`一同发布，在游戏运行时需要放在游戏目录下。
