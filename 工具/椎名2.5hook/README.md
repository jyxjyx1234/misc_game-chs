# 椎名里绪2.50 HOOK工具

本工具仅适配椎名里绪2.50，并且只测试过2个游戏，不一定全部有效。

## 依赖

python 3.x (建议>=3.10)

## 使用方法

### 译文文件生成

将galtransl生成的 `transl_cache`文件夹放入目录。运行 `gen_transdata.py`。

运行一次后，文件夹下会出现 `namedict.json`文件。如果需要更改人名，在冒号右侧修改翻译后的人名，然后将该文件重命名为 `namedict_trans.json`，然后重新运行 `gen_transdata.py`。

### 修改配置

译文文件保存在 `release`文件夹中。（`data1.bin `和 `data2.bin`）

release文件夹中，`dll_loader.exe`和 `hook.dll `可以随意重命名。游戏需要从 `dll_loader.exe`启动。

`hook.ini `中需要进行一些修改，`[LOADER]`中 `target`为游戏原本的exe名，`DLL`为修改后的 `hook.dll`的文件名。`[FONT]`中 `FONTNAME`处可以自定义字体，但不支持中文字体名，如果没有特殊需求建议保持不变。其余设置如果不理解请不要更改。

注意，`hook.ini`必须为 `UTF8`编码，某些编辑器会自动改变文件编码（比如改为 `UTF8-BOM`），请小心。

本工具由vs2022生成，如果缺少必要的运行库可能无法运行。补丁说明中请加上以下内容：

> 如果无法正常启动，请尝试安装https://aka.ms/vs/17/release/vc_redist.x86.exe后重启。
