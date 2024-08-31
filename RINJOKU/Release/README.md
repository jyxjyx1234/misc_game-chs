本补丁由ALyCE\jyxjyx1234制作，使用Claude-3-haiku进行翻译。

本补丁免费发布于2dfan\github。如果从 网赚盘（如飞猫云） or 付费 下载到本补丁，请顺手点个举报。

2dfan主页：[https://2dfan.com/users/290175](https://2dfan.com/users/290175)
github主页：[https://github.com/jyxjyx1234](https://github.com/jyxjyx1234)

# 使用方法

请先安装1.02修正补丁。免DVD补丁不确定是基于哪个版本制作的，就没有适配，个人测试仅首次启动需要验证DVD。

将补丁中所有文件放入游戏目录。从 rinjoku_chs_.exe 启动。无需手动转区，但是需要保证全英文\日文路径。

[娱乐用] 做了一个写着玩的小功能，会在游戏目录下生成一个runtime.txt文件，记录游戏的累计用时。

# 额外说明

本补丁使用了dll劫持技术注入游戏程序以实现编码修改，受操作系统环境影响较大，尤其是win11或者wine。目前在dlls中提供了4种dll，如果字符乱码，可以从dlls文件夹自行选择一个可用的dll代替dxgi.dll。如果发现均不生效，请尝试以下操作：

1、依次尝试将dxgi.dll的名称改为以下列表中的一个，放在游戏目录下。

msacm32.dll	ddraw.dll	msvfw32.dll	dinput.dll	atl.dll	dciman32.dll	avifil32.dll
powrprof.dll	comctl32.dll	ole32.dll	advapi32.dll	rpcrt4.dll	sechost.dll
shell32.dll	msvcp_win.dll	bcrypt.dll	combase.dll

2、然后启动游戏，观察是否出现游戏启动的弹窗 和/或 “无法定位程序输入点……”的报错弹窗（不包括License Information的弹窗）。如果有，说明该dll可被劫持，请将dll的名称反馈给我，我会添加新的dll以适配。
