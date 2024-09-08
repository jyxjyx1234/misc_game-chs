@if exp="typeof(global.clearhistory_object) == 'undefined'"
@iscript

// ロード時にメッセージ履歴をクリアするためだけのプラグイン(^^;

class ClearHistoryPlugin extends KAGPlugin
{
	function ClearHistoryPlugin()
	{
		super.KAGPlugin();
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onRestore(f, clear, elm)
	{
		// tempload 以外で栞を読み出すときにメッセージ履歴をクリア
		if(clear) kag.historyLayer.clear();
	}
}

kag.addPlugin(global.clearhistory_object = new ClearHistoryPlugin(kag));
	// プラグインオブジェクトを作成し、登録する

@endscript
@endif
@return


;------------------
; 2006/12/12 Ranka 
;------------------
