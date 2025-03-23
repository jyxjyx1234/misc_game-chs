[SCENESTART file=trial.ks]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]
[SYSTEMMENU]

*select0

[r]『中二病な彼女の恋愛方程式』体験版Ver.1をプレイして頂き、ありがとうございます。本体験版では、本編の序章をプレイできるほかに、店舗特典を確認することができます。
[np]

;//選択肢
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=体験版をはじめる jump target="*select1"]
	[select_button text=店舗特典を確認する jump target="*select2"]
[select_end]

*select1

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[jump storage="scenario/all/all_00010.ks"]

*select2

[CGHIDE]
[select_start ]
[select_opt bgtop=230 bareaheight=250]
	[select_button text=ソフマップ jump target="*select3"]
	[select_button text=げっちゅ屋 jump target="*select4"]
	[select_button text=次へ jump target="*select5"]
	[select_button text=体験版をはじめる jump target="*select1"]
[select_end]

*select5

[CGHIDE]
[select_start ]
[select_opt bgtop=230 bareaheight=250]
	[select_button text=メディオ jump target="*select6"]
	[select_button text=メロンブックス jump target="*select7"]
	[select_button text=次へ jump target="*select8"]
	[select_button text=体験版をはじめる jump target="*select1"]
	[select_end]

*select8

[CGHIDE]
[select_start ]
[select_opt bgtop=230 bareaheight=250]
	[select_button text=トレーダー jump target="*select9"]
	[select_button text=グッドウィル jump target="*select10"]
	[select_button text=次へ jump target="*select11"]
	[select_button text=体験版をはじめる jump target="*select1"]
	[select_end]

*select11

[CGHIDE]
[select_start ]
[select_opt bgtop=230 bareaheight=250]
	[select_button text=コムロード jump target="*select12"]
	[select_button text=最初に戻る jump target="*select2"]
	[select_button text=体験版をはじめる jump target="*select1"]
[select_end]

*select3

[CG cgno=99 sabunno=01]
[r]ソフマップ様の特典は、蟹屋しく先生＆ゆき恵先生の両原画家によるＡ１タペストリーを筆頭に、豪華三大特典を企画中！
[np]

[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=予約ページヘ jump target="*sofmap"]
	[select_button text=戻る jump target="*select2"]
[select_end]

*sofmap
[iscript]
	var fullpath = System.shellExecute('http://a.sofmap.com/product_detail/exec/_/sku=12600657/-/gid=AT01010000');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select2"]

*select4

[CG cgno=99 sabunno=02]
[r]げっちゅ屋様の特典は、星乃すぴかちゃんのＢ２タペストリー＆オリジナルドラマＣＤ！
[np]

[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=予約ページヘ jump target="*getchu"]
	[select_button text=戻る jump target="*select2"]
[select_end]

*getchu
[iscript]
	var fullpath = System.shellExecute('http://www.getchu.com/soft.phtml?id=840939');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select2"]


*select6

[CG cgno=99 sabunno=03]
[r]メディオ！様の特典には、黒峰澪音ちゃんの裸エプロンテレカをご用意！
[np]

[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=予約ページヘ jump target="*medio"]
	[select_button text=戻る jump target="*select5"]
[select_end]

*medio
[iscript]
	var fullpath = System.shellExecute('http://medio.bz/item.php?cc=5&item=4571173020189');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select5"]

*select7

[CG cgno=99 sabunno=04]
[r]メロンブックス様の特典は、星乃すぴかちゃんのＡ３マイクロファイバータオルに決定！
[np]

[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=予約ページヘ jump target="*melon"]
	[select_button text=戻る jump target="*select5"]
[select_end]

*melon
[iscript]
	var fullpath = System.shellExecute('https://www.melonbooks.co.jp/detail/detail.php?product_id=118815&adult_view=1');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select5"]

*select9

[CG cgno=99 sabunno=06]
[r]トレーダー様の特典は、魔女っ子衣装に包まれた黒峰澪音ちゃんのＢ２タペストリー！
[np]

[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=店舗ページヘ jump target="*trader"]
	[select_button text=戻る jump target="*select8"]
[select_end]

*trader
[iscript]
	var fullpath = System.shellExecute('http://www.messe.gr.jp/pcgame/');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select8"]

*select10

[CG cgno=99 sabunno=05]
[r]グッドウィル様の特典は、花ヶ咲ももちゃんのＢ２タペストリー！　ももの特典はグッドウィル様だけになります！
[np]

[select_start]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=予約ページヘ jump target="*good"]
	[select_button text=戻る jump target="*select8"]
[select_end]

*good
[iscript]
	var fullpath = System.shellExecute('http://www.ampnet.jp/item/item.php?iid=33618&type=detail&act=detail');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select8"]

*select12

[CG cgno=99 sabunno=07]
[r]コムロード様の特典は、唯一の人格者？綾瀬千聖ちゃんの描き下ろしテレカ！！
[np]

[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=予約ページヘ jump target="*com"]
	[select_button text=戻る jump target="*select11"]
[select_end]

*com
[iscript]
	var fullpath = System.shellExecute('https://www.comroad.co.jp/os/138991/3571173020189/PeasSoft-%E4%B8%AD%E4%BA%8C%E7%97%85%E3%81%AA%E5%BD%BC%E5%A5%B3%E3%81%AE%E6%81%8B%E6%84%9B%E6%96%B9%E7%A8%8B%E5%BC%8F%EF%BC%88%E3%83%A9%E3%83%96%E3%82%A4%E3%82%AF%E3%82%A8%E3%82%A4%E3%82%B7%E3%83%A7%E3%83%B3%EF%BC%89--%5B%E7%B6%BE%E7%80%AC%E5%8D%83%E8%81%96-%E6%8F%8F%E3%81%8D%E4%B8%8B%E3%82%8D%E3%81%97%E3%83%86%E3%83%AC%E3%82%AB%5D-2015%E5%B9%B45%E6%9C%8829%E6%97%A5%E7%99%BA%E5%A3%B2/');
	System.shellExecute(fullpath);
[endscript]

[CGHIDE]
[jump target="*select11"]
