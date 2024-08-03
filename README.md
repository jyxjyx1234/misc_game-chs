https://github.com/jyxjyx1234/misc_game-chs/

收录本人制作的一些小拔作的汉化补丁

仅供交流ai翻译使用，请在购买了游戏本体的基础上使用这些补丁。

使用说明：如无特殊说明，在release中下载后解压至安装目录即可，无需手动转区。（注意备份原文件）

### 目录

- お姉ちゃんは串刺し公
- なつくもゆるる＿Ｈシーン追加ディスク＿紫穂
- なつくもゆるる＿Ｈシーン追加ディスク＿姬佳
- Rain memory
- LOVELAB
- こいなか及FD
- 露出人形～恥ずかしさに震える少女～
- One☆らばー!!～ミクちゃんの恋人
- 愛玩隷嬢 ～Doll～
- 麗佳牝犬調教
- 魔法の守護姫アルテミナ1-3
- ふたなりカノンち
- 少女狩り
- 借金姐妹1\2
- 犠妹 ～背徳の契り
- S.I.S.T.A.R.S:KISS OF TRINITY
- Color of White
- 華開 ～あの娘はAV嬢～

### 说明

#### お姉ちゃんは串刺し公

~~未知原因无法识别patch.xp3，只能整包。~~

感谢 k幻世星晨 大佬的指点，现在已经能直接使用补丁。将补丁中的文件放在游戏安装目录下即可。

（这游戏的补丁包的名字是VLAD_patch而不是patch，很怪）

未经过校对、选项和人名未翻译。

点击原exe进行启动即可，无需手动转区。

使用了Garbro进行解、封包，sextractor进行文本提取和导入，galtransl进行批量翻译，UniversalInjectorFramework和Locale-Emulator进行转区。

#### なつくもゆるる＿Ｈシーン追加ディスク＿紫穂

这是游戏なつくもゆるる的softmap特典：Ｈシーン追加ディスク＿紫穂的AI翻译补丁。

将本补丁中的所有文件（在 `补丁`文件夹中）复制到特典安装目录即可，首次启动时会要求验证游戏本体（なつくもゆるる）安装目录。

配置了自动转区，无需手动转区。

#### Rain memory

将本补丁中所有文件复制到游戏本体安装目录即可。会覆盖 `script.xp3`这个文件，建议先备份。

安装提供的字体可以得到更好的游戏体验（不确定这个字体其他电脑上有没有所以附带上了）。

配置了自动转区，无需手动转区。

##### 杂记

这个游戏使用了签名验证防止篡改，直接打patch会因为没有签名导致游戏无法启动。

从 `script.xp3`中的 `release.ks`文件中找到了以下代码：

```

function noSignConfirm()
{
	System.inform('署名が確認できませんでした。\nゲームを終了します。','ごめんなさい');
	kag.stopCheckSignatureAll();
	kag.shutdown();
//	System.exit();
}

kag.isCheckOk = function()
{
	for (var i = 0; i < fnStatus.count; i++) {
		dm('check end['+i+'] : '+fnStatus[i]);
		if (fnStatus[i] == "OK") continue;
		if (fnStatus[i] == "NOT EXIST") continue;
			noSignConfirm();
	}
} incontextof kag;

//イベント処理
kag.onCheckSignatureProgress = function(handler, info, percent)
{
	//何もしない
} incontextof kag;

kag.onCheckSignatureDone = function (handler, info, result, error)
{
	switch (result) {
		case -2 :
			fnStatus[handler] = "NG-2:"+error;
			break;
		case -1 :
			fnStatus[handler] = "BREAK";
			break;
		case 0 :
			fnStatus[handler] = "NG-0:"+error;
			break;
		case 1 :
			fnStatus[handler] = "OK";
			break;
	}
} incontextof kag;
```

这一段是用于进行签名校验的。把最后一个函数进行修改，全部返回"OK"即可在签名校验不成功时继续运行游戏。

```
kag.onCheckSignatureDone = function (handler, info, result, error)
{
	switch (result) {
		case -2 :
			fnStatus[handler] = "OK";
			break;
		case -1 :
			fnStatus[handler] = "OK";
			break;
		case 0 :
			fnStatus[handler] = "OK";
			break;
		case 1 :
			fnStatus[handler] = "OK";
			break;
	}
} incontextof kag;
```
