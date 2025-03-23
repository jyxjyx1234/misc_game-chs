; 二重読み込みを防止
[return cond="typeof(.RenameKAGTag_obj) != 'undefined'"]

; KAGのデフォルトタグを置換するマクロを提供するプラグイン。
; 2010/03/03	0.11	Replace → Rename に変更
;			エラー時はポップアップメッセージを表示するように変更
;			セーブロードを完全無視するように変更。rename() 後に
;			kag.tagHandlers[from]を書き換えたのがクリアされるのを
;			防ぐため。…KAGPluginである意味ないじゃん。

[iscript]
// KAG Tag 置換し、それを保存するクラス
class RenameKAGTag extends KAGPlugin
{
	var window;		// KAGWindow
	var renametags;	// 置換されたタグの保存配列

	// コンストラクタ
	function RenameKAGTag(w)
	{
		super.KAGPlugin();
		window = w;
		renametags = %[];
	}

	// デストラクタ
	function finalize()
	{
		rename_clear();
		super.finalize(...);
	}

	// from から to に置換する
	function rename(from, to, errorpopup=true)
	{
		if (renametags[to] !== void && renametags[to] == from)
			return;	// 既に同じものが登録済みならエラーにせず終了

		var handler = window.tagHandlers;
		if (handler[from] === void) {
			if (errorpopup)
				throw new Exception("RenameKAGTag.renameで"+
						"存在しない "+from+" を"+
						"置換しようとしました。");
			return;
		}
		if (handler[to] !== void) {
			if (errorpopup)
				throw new Exception("RenameKAGTag.renameで"+
						"存在する "+to+" を "+
						from+ " で"+
						"置換しようとしました。");
		}
		handler[to] = handler[from];
		delete handler[from];
		renametags[to] = from;
	}

	// 置換を解除する
	function rename_back(from, to, errorpopup=false)
	{
		var handler = window.tagHandlers;
		if (handler[to] === void || renametags[to] != from) {
			if (errorpopup)
				throw new Exception("RenameKAGTag.rename_back で"+
						"存在しない "+to+" を "+from+
						" に戻そうとしました。");
			return;
		}
		if (handler[from] !== void) {
			if (errorpopup)
				throw new Exception("RenameKAGTag.rename_back で"+
						"存在する "+from+" に "+to+
						" を戻そうとしました。");
			// でもこのまま実行しちゃう
		}
		handler[from] = handler[to];
		delete handler[to];
		delete renametags[to];
	}

	// 全置換を解除する
	function rename_clear(errorpopup=false)
	{
		var ary = [];
		ary.assign(renametags);
		for (var i = ary.count-2; i >= 0; i--)
			rename_back(ary[i+1], ary[i], errorpopup);
	}

// セーブロードすると、rename() 後に kag.tagHandlers[from] に新しい関数を
// 追加した場合に、ロード時にこれがクリアされてしまうので、セーブロードしない
	// セーブする時
//	function onStore(f, elm)
//	{
//		var dic = f.renamekagtag = %[];
//		(Dictionary.assign incontextof dic)(renametags);
//	}

	// ロードする時
//	function onRestore(f, clear, elm)
//	{
//		rename_clear();
//		var dic = f.renamekagtag;
//		if (dic === void)
//			dic = %[];
//		var ary = [];
//		ary.assign(dic);
//		for (var i = ary.count-2; i >= 0; i -= 2)
//			rename(ary[i+1], ary[i]);
//	}
}


kag.addPlugin(.RenameKAGTag_obj = new RenameKAGTag(kag));

[endscript]


; tagをリネームする。from=xxx to=xxxに。
[macro name=renametag]
[if exp="kag.tagHandlers[mp.from] !== void"]
	[eval exp=".RenameKAGTag_obj.rename(mp.from, mp.to)"]
[else]
	[renamemacro *]
[endif]
[endmacro]

; リネーム済みのtagを元に戻す to=xxx を from=xxx に。
; 現時点では多重リネームされたものは考慮していないので、極力使わないで欲しい
[macro name=renametag_back]
[eval exp=".RenameKAGTag_obj.rename_back(mp.from, mp.to)"]
[endmacro]

; 全タグを元に戻す
; 現時点では多重リネームされたものは考慮していないので、極力使わないで欲しい
[macro name=renametag_clear]
[eval exp=".RenameKAGTag_obj.rename_clear()"]
[endmacro]


; マクロをリネームするrenamemacro
[macro name=renamemacro]
[eval exp="mp.tmp = kag.conductor.macros[mp.from]"]
[eval exp="kag.conductor.macros[mp.from] = kag.conductor.macros[mp.to]"]
[eval exp="kag.conductor.macros[mp.to] = mp.tmp"]
[endmacro]

[return]
