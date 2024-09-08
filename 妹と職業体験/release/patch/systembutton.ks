[if exp="typeof(global.systembutton_object) == 'undefined'"]
[iscript]

// メッセージウィンドにシステムボタンを表示させるスクリプト。
// 表示させる位置は、各ボタンごとに指定可能。
// LastUpdate since2007.2.28／かおす

class SystemButtonLayer extends ButtonLayer
	// クリックされたときに実行する関数を指定できるボタンレイヤ
{
	var onClickFunction;

	function SystemButtonLayer(window, parent, func)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		visible = true;
		onClickFunction = func;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onMouseEnter()
	{
//		kag.se[1].play(%[storage : 'se_71.ogg']);
		super.onMouseEnter(...);
	}

	function onMouseUp(x, y, button, shift)
	{
		if(enabled && button == mbLeft)
			onClickFunction(this);
		super.onMouseUp(...);
	}
}

class SystemButtonPlugin extends KAGPlugin
{
	// ボタン画像名とX座標、Y座標の設定（変更したいときは、ここを書き換える。前２つの777は弄らない）
	var systemButtonImages = ['system_quickSave','system_quickLoad','system_auto','system_skip','system_save','system_load','system_log','system_config'];
	var xpos = [777,777,1081,1081,1081,1081,1081,1081];
	var ypos = [1777,1777,716,756,794,833,870,910];

	var foreSeen = false; // 表画面のボタンが可視か
	var backSeen = false; // 裏画面のボタンが可視か

	var foreButtons = []; // 表画面のボタンの配列
	var backButtons = []; // 裏画面のボタンの配列

	function SystemButtonPlugin()
	{
		// SystemButtonPlugin コンストラクタ

		createButtons(kag.fore.base, foreButtons); // 表画面のボタンを作成
		createButtons(kag.back.base, backButtons);

		realign(); // 再配置

		setObjProp(foreButtons, 'visible', foreSeen = false);
		setObjProp(backButtons, 'visible', backSeen = false);
			// 非表示に
	}

	function finalize()
	{
		// ボタンを無効化
		for(var i = 0; i < foreButtons.count; i++)
			invalidate foreButtons[i];
		for(var i = 0; i < backButtons.count; i++)
			invalidate backButtons[i];

		super.finalize(...);
	}

	function setObjProp(array, member, value)
	{
		// array の各メンバのプロパティの設定
		for(var i = array.count - 1; i >= 0; i--) array[i][member] = value;
	}

	function createButtons(parent, array)
	{
		// parent を親レイヤとしてボタンを作成し、array に登録する。
		// ボタンは表画面と裏画面の両方に対して作成されるので注意。

		var obj;

		// ボタン 0 (クイックセーブ)
		array.add(obj = new SystemButtonLayer(kag, parent, onQuickSaveButtonClick));
		obj.loadImages(systemButtonImages[0]); // ボタン画像ファイルの指定
		obj.hint='クイックセーブ';

		// ボタン 1 (クイックロード)
		array.add(obj = new SystemButtonLayer(kag, parent, onQuickLoadButtonClick));
		obj.loadImages(systemButtonImages[1]); // ボタン画像ファイルの指定
		obj.hint='クイックロード';

		// ボタン 2 (オート)
		array.add(obj = new SystemButtonLayer(kag, parent, onAutoButtonClick));
		obj.loadImages(systemButtonImages[2]); // ボタン画像ファイルの指定
		obj.hint='オートモード';

		// ボタン 3 (スキップ)
		array.add(obj = new SystemButtonLayer(kag, parent, onSkipButtonClick));
		obj.loadImages(systemButtonImages[3]); // ボタン画像ファイルの指定
		obj.hint='スキップモード';

		// ボタン 4 (セーブ)
		array.add(obj = new SystemButtonLayer(kag, parent, onSaveButtonClick));
		obj.loadImages(systemButtonImages[4]); // ボタン画像ファイルの指定
		obj.hint='セーブ';

		// ボタン 5 (ロード)
		array.add(obj = new SystemButtonLayer(kag, parent, onLoadButtonClick));
		obj.loadImages(systemButtonImages[5]); // ボタン画像ファイルの指定
		obj.hint='ロード';

		// ボタン 6 (履歴)
		array.add(obj = new SystemButtonLayer(kag, parent, onLogButtonClick));
		obj.loadImages(systemButtonImages[6]); // ボタン画像ファイルの指定
		obj.hint='メッセージ履歴';

		// ボタン 7 (コンフィグ)
		array.add(obj = new SystemButtonLayer(kag, parent, onConfigButtonClick));
		obj.loadImages(systemButtonImages[7]); // ボタン画像ファイルの指定
		obj.hint='システム';
	}

	function realign()
	{
		// ボタンの再配置
		// ボタンをそれぞれ指定された位置に配置する
		var count = foreButtons.count;

		for(var i = 0; i < count; i++)
		{
			var obj;

			obj = backButtons[i];
			obj.setPos(xpos[i], ypos[i]);
			obj.absolute = 2000000-3; // 重ね合わせ順序はメッセージ履歴よりも奥

			obj = foreButtons[i];
			obj.setPos(xpos[i], ypos[i]);
			obj.absolute = 2000000-3;
		}
	}

	function onQuickSaveButtonClick()
	{
		// 回想中は使用不可
		if(f.memorialMode == 0)
		{
			// クイックセーブ ボタンが押された
//			kag.se[0].play(%[storage : 'se_70.ogg']);
			kag.saveBookMark(51);
		}
	}

	function onQuickLoadButtonClick()
	{
		// 回想中は使用不可
		if(f.memorialMode == 0)
		{
			// クイックロード ボタンが押された
//			kag.se[0].play(%[storage : 'se_70.ogg']);
			// 保存データの確認
			if(kag.getBookMarkPageName(51) == 'Non Data...')return;
			tf.SetDialog = 'yesno04.bmp';
			var result = askYesNo("クイックロードしますか？");
			if(result) return kag.loadBookMark(51);
			return false;
		}
	}

	function onAutoButtonClick()
	{
		// オート ボタンが押された
//		kag.se[0].play(%[storage : 'se_70.ogg']);
		kag.onAutoModeMenuItemClick();
	}

	function onSkipButtonClick()
	{
//		kag.se[0].play(%[storage : 'se_70.ogg']);
		// スキップ ボタンが押された（未読）
		if(sf.messageSkip == 0)
		{
			kag.onSkipToNextPageMenuItemClick();
		}

		// スキップ ボタンが押された（既読）
		if(sf.messageSkip == 1)
		{
			kag.skipToStop();
		}
		var onImgs = new Dictionary();
		onImgs.imgset = 3;
		onImgs.storage = "system_skip2";
		global.systembutton_object.setOptions(onImgs);
	}

	function onSaveButtonClick()
	{
		// 回想中は使用不可
		if(f.memorialMode == 0)
		{
			// セーブ ボタンが押された
//			kag.se[0].play(%[storage : 'se_70.ogg']);
			kag.callExtraConductor('savemode.ks','*saveMode');
		}
	}

	function onLoadButtonClick()
	{
		// 回想中は使用不可
		if(f.memorialMode == 0)
		{
			// ロード ボタンが押された
//			kag.se[0].play(%[storage : 'se_70.ogg']);
			kag.callExtraConductor('loadmode.ks','*loadMode');
		}
	}

	function onConfigButtonClick()
	{
		// コンフィグ ボタンが押された
//		kag.se[0].play(%[storage : 'se_70.ogg']);
		kag.callExtraConductor('configmode.ks','*configMode');
	}

	function onLogButtonClick()
	{
		// ログ ボタンが押された
//		kag.se[0].play(%[storage : 'se_70.ogg']);
		kag.onShowHistoryMenuItemClick();
	}

	function setOptions(elm)
	{
		// オプションを設定
		setObjProp(foreButtons, 'visible', foreSeen = +elm.forevisible) if elm.forevisible !== void;
		setObjProp(backButtons, 'visible', backSeen = +elm.backvisible) if elm.backvisible !== void;

		// 画像の差し替え
		if(elm.imgset !== void){
			var obj;
			if(elm.imgset == -1)
			{
				// 栞をロードしたとき／一括変更のとき
				for(var i = 0; i < backButtons.count; i++)
				{
					obj = backButtons[i];
					obj.loadImages(systemButtonImages[i]);
				}
				for(var i = 0; i < foreButtons.count; i++)
				{
					obj = foreButtons[i];
					obj.loadImages(systemButtonImages[i]);
				}
			}
			else
			{
				systemButtonImages[elm.imgset] = elm.storage;
				obj = backButtons[elm.imgset];
				obj.loadImages(elm.storage);
				obj = foreButtons[elm.imgset];
				obj.loadImages(elm.storage);
			}
		}
	}

	function onStore(f, elm)
	{
		// 栞を保存するとき
		var dic = f.systemButtons = %[];
			// f.systemButtons に辞書配列を作成
		dic.foreVisible = foreSeen;
		dic.backVisible = backSeen;
			// 各情報を辞書配列に記録
	}

	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		var dic = f.systemButtons;
		if(dic === void)
		{
			// systemButtons の情報が栞に保存されていない
			setObjProp(foreButtons, 'visible', foreSeen = false);
			setObjProp(backButtons, 'visible', backSeen = false);
		}
		else
		{
			// systemButtons の情報が栞に保存されている
			setOptions(%[ forevisible : dic.foreVisible, backvisible : dic.backVisible, imgset : -1]);
				// オプションを設定
		}
	}

	function onStableStateChanged(stable)
	{
		// 「安定」( s l p の各タグで停止中 ) か、
		// 「走行中」( それ以外 ) かの状態が変わったときに呼ばれる

		// 走行中は各ボタンを無効にする
		setObjProp(foreButtons, 'enabled', stable);
		setObjProp(backButtons, 'enabled', stable);
	}

	function onMessageHiddenStateChanged(hidden)
	{
		// メッセージレイヤがユーザの操作によって隠されるとき、現れるときに
		// 呼ばれる。メッセージレイヤとともに表示/非表示を切り替えたいときは
		// ここで設定する。
		if(hidden)
		{
			setObjProp(foreButtons, 'visible', false);
			setObjProp(backButtons, 'visible', false);
		}
		else
		{
			// foreSeen, backSeen は、
			// ボタンが本来表示中であったかどうかを記録している
			setObjProp(foreButtons, 'visible', foreSeen);
			setObjProp(backButtons, 'visible', backSeen);
		}
	}

	function onCopyLayer(toback)
	{
		// レイヤの表←→裏の情報のコピー

		// backlay タグやトランジションの終了時に呼ばれる

		// ここでレイヤに関してコピーすべきなのは
		// 表示/非表示の情報だけ

		if(toback)
		{
			// 表→裏
			setObjProp(backButtons, 'visible', foreButtons[0].visible);
			backSeen = foreSeen;
		}
		else
		{
			// 裏→表
			setObjProp(foreButtons, 'visible', backButtons[0].visible);
			foreSeen = backSeen;
		}
	}

	function onExchangeForeBack()
	{
		// 裏と表の管理情報を交換

		// children = true のトランジションでは、トランジション終了時に
		// 表画面と裏画面のレイヤ構造がそっくり入れ替わるので、
		// それまで 表画面だと思っていたものが裏画面に、裏画面だと思って
		// いたものが表画面になってしまう。ここのタイミングでその情報を
		// 入れ替えれば、矛盾は生じないで済む。

		// ここで表画面、裏画面のレイヤに関して管理すべきなのは
		// foreButtons と backButton 、foreSeen と backSeen の変数だけ
		var tmp;

		tmp = backButtons;
		backButtons = foreButtons;
		foreButtons = tmp;

		tmp = backSeen;
		backSeen = foreSeen;
		foreSeen = tmp;
	}
}

kag.addPlugin(global.systembutton_object = new SystemButtonPlugin(kag));
	// プラグインオブジェクトを作成し、登録する

[endscript]
[endif]
;
; マクロの登録
[macro name="sysbtopt"]
[eval exp="systembutton_object.setOptions(mp)"]
; mp がマクロに渡された属性を示す辞書配列オブジェクト
[endmacro]
[return]

