本补丁由ALyCE\jyxjyx1234制作，使用gpt-4o进行翻译。

本补丁免费发布于2dfan\github。如果从 网赚盘（如飞猫云） or 付费 下载到本补丁，请顺手点个举报。

2dfan主页：[https://2dfan.com/users/290175](https://2dfan.com/users/290175)
github主页：[https://github.com/jyxjyx1234](https://github.com/jyxjyx1234)

# 使用方法

将补丁中的内容覆盖到游戏目录。无需转区。

修正补丁已集成，重新安装修正补丁会替换原exe，导致免dvd补丁失效，并导致游戏无法启动（即使用虚拟光驱也会）。所以请勿安装修正补丁！

如果启动不成功请先尝试安装 https://aka.ms/vs/17/release/vc_redist.x86.exe 后重启。

# 为什么这个补丁这么大？

修正补丁中修正了脚本和一张图片。脚本的修正已经集成到了mg_data2.mbl中。图片的修正使用了一个增量包，但是原exe并不支持读取gra的增量包（所以修正补丁改了exe）。我尝试将mg_gra.mbl重新打包，用增量包中的文件进行替换，实现了与修正补丁一样的效果。但是这就意味着，补丁必须附带高达200 mb的mg_gra.mbl。
