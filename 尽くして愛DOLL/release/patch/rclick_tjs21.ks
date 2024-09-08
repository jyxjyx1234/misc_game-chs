@if exp="typeof(global.rclickconfig_object) == 'undefined'"
@iscript
// 右クリックでの設定画面を TJS2 で実現するサンプル
// 2002/6/14 版 改造 :
//   システムメニュー実装
//         ＋画像表示
//         ＋セーブデータ削除
//         ＋トランジション対応バージョン

// 栞は 40 個利用可能

// Config.tjs の設定を以下のようにする必要あり
//  freeSaveDataMode = false
//  saveThumbnail = true
//  numBookMarks = 40→50

class RButtonLayer extends ButtonLayer
	// parent に onClick イベントを送るようにしたボタンレイヤ
{
	var tag;

	function RButtonLayer(window, parent)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onClick()
	{
		// トランジション中ならスキップ
		if(kag.transCount != 0)
		{
			kag.stopAllTransitions();
			return;
		}

		super.onClick(...);
		if(enabled)
			parent.onButtonClick(this);
	}
}

class RCheckBoxLayer extends CheckBoxLayer
	// parent にイベントを送るようにしたチェックボックス
{
	function RCheckBoxLayer(window, parent)
	{
		super.CheckBoxLayer(window, parent);
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onMouseDown()
	{
		// マウスでクリックされた
		super.onMouseDown(...);
		if(enabled)
			parent.onCheckBoxClick(this);
	}

	function onKeyDown(key, shift, process)
	{
		// キーが押された
		if(process)
		{
			// スペースキーまたはエンターキー
			if(key == VK_RETURN || key == VK_SPACE)
			{
				super.onKeyDown(...);
				if(enabled)
					parent.onCheckBoxClick(this);
			}
			else
			{
				super.onKeyDown(...);
			}
		}
		else
		{
			// process が false の場合は処理は行わない
			super.onKeyDown(...);
		}
	}
}

class SaveDataItemLayer extends KAGLayer
{	//５０にするならここのサイズを変えて調節
	// 栞一個一個に対応するレイヤ
	var num; // 栞番号
	var bgColor = 0xa5b2a4ff; // 背景色 ( 0xAARRGGBB )
	var focusedColor = 0xffffffff;

	function SaveDataItemLayer(window, parent, num)
	{
		super.KAGLayer(window, parent);

		this.num = num;

		setImageSize(400, 112); // サイズ 500 112
		face = dfBoth;
		fillRect(0, 0, imageWidth, imageHeight, bgColor);
		setSizeToImageSize();

		hitType = htMask;
		hitThreshold = 0; // 全域不透過

		cursor = kag.cursorPointed;

		focusable = true; // フォーカスは受け取れる

		// 番号を表示
		var str = string (num + 1);
		font.height = 20;
		var ty = font.getTextHeight(str);
		drawText(6, ( imageHeight - ty ) \ 2, str, 0);

		// サムネイル画像を読み込む
		var tmplayer = new global.Layer(window, parent);

 		var tnname = kag.getBookMarkFileNameAtNum(num);

		if(Storages.isExistentStorage(tnname) && kag.bookMarkDates[num] != '')
		{
			tmplayer.loadImages(tnname);
		}
		else
		{
			// サムネイル画像が手動で削除されたときの対処
			if(kag.bookMarkDates[num] != '')
			{
				kag.bookMarkNames[num] = ''; // 栞名
				kag.bookMarkDates[num] = ''; // 保存年月日
				if(kag.scflags.bookMarkComments !== void)
					kag.scflags.bookMarkComments[num] = ''; // コメント
				kag.setBookMarkMenuCaptions();
			}

			tmplayer.loadImages("sam_no");  // No Data
		}

		copyRect(32, 6, tmplayer, 0, 0, tmplayer.imageWidth, tmplayer.imageHeight);

		invalidate tmplayer;

		// 栞の保存名を表示
		font.height = 14;

		var str = kag.bookMarkNames[num];
		if(str == '') str = 'データなし';
		drawText(180, 15, str, 0x000000);

		// 日付を表示
		if(kag.bookMarkDates[num] == '')
			str = "日付 : ----/--/-- --:--";
		else
			str = "日付 : " + kag.bookMarkDates[num];

		drawText(180, 35, str, 0x000000);
	}

	function finalize()
	{
		super.finalize(...);
	}

	function saveToSystemVariable()
	{
		// 状態をシステム変数に記録する
		if(kag.scflags.bookMarkComments === void)
			kag.scflags.bookMarkComments = [];
	}

	function onPaint()
	{
		super.onPaint(...);

		// update() が呼ばれた後、描画の直前に呼ばれる
		face = dfBoth;
		if(focused)
		{
			fillRect(0, 0, imageWidth, 2, focusedColor);
			fillRect(0, 2, 2, imageHeight - 2, focusedColor);
			fillRect(imageWidth - 2, 2, 2, imageHeight - 2, focusedColor);
			fillRect(2, imageHeight - 2, imageWidth - 4, 2, focusedColor);
		}
		else
		{
			fillRect(0, 0, imageWidth, 2, bgColor);
			fillRect(0, 2, 2, imageHeight - 2, bgColor);
			fillRect(imageWidth - 2, 2, 2, imageHeight - 2, bgColor);
			fillRect(2, imageHeight - 2, imageWidth - 4, 2, bgColor);
		}
	}

	function onFocus()
	{
		// フォーカスを得た
		super.onFocus(...);
		update();
	}

	function onBlur()
	{
		// フォーカスを失った
		super.onBlur(...);
		update();
	}

	function onHitTest(x, y, process)
	{
		if(process)
		{
			// 右ボタンが押されていたときにイベントを透過
			if(System.getKeyState(VK_RBUTTON))
				super.onHitTest(x, y, false);
			else
				super.onHitTest(x, y, true);
		}
	}

	function onKeyDown(key, shift, process)
	{
		// トランジション中ならスキップ
		if(kag.transCount != 0)
		{
			kag.stopAllTransitions();
			return;
		}

		// キーが押された
		if(process && key == VK_RETURN || key == VK_SPACE)
		{
			// スペースキーまたはエンターキー
			super.onKeyDown(key, shift, false);
			saveToSystemVariable();
			parent.onLoadOrSave(num);
		}
		else
		{
			// process が false の場合は処理は行わない
			super.onKeyDown(...);
		}
	}

	function onMouseDown(x, y, button, shift)
	{
		// トランジション中ならスキップ
		if(kag.transCount != 0)
		{
			kag.stopAllTransitions();
			return;
		}

		super.onMouseDown(...);
		if(button == mbLeft)
		{
			focus();
			saveToSystemVariable();
			parent.onLoadOrSave(num);
		}
	}
}

class RClickConfigLayer extends Layer // 設定画面レイヤ
{
	var closeButton; 						// 閉じる ボタン
	var saveButton; 						// セーブ ボタン
	var loadButton; 						// ロード ボタン
	var saveButton2; 						// セーブ ボタン
	var loadButton2; 						// ロード ボタン
	var hideMessageButton; 						// メッセージを消す ボタン
	var exitButton; 						// 終了 ボタン
	var goToStartButton; 						// 最初に戻る ボタン
	var svEnabled = kag.canStore(); 				// セーブ ボタンの有効・無効
	var ldEnabled = kag.canRestore(); 				// ロード ボタンの有効・無効
	var hbEnabled = kag.historyEnabled; 				// 履歴表示 ボタンの有効・無効
	var sbEnabled = kag.startAnchorEnabled; 			//  最初に戻る ボタンの有効・無効
	var autoModeButtons; 						// 自動的に読み進むウェイト ボタン
	var amcBtn = 9; 						// 現在選択されているボタン
	var chSpeedButtons; 						// 文字表示速度（通常） ボタン
	var cscBtn = 9; 						// 現在選択されているボタン
	var chCheckBox; 						// ページ末まで用チェックボックス
	var ch2ndSpeedButtons; 						// 文字表示速度（既読） ボタン
	var c2scBtn = 9; 						// 現在選択されているボタン
	var ch2ndCheckBox; 						// ページ末まで用チェックボックス
	var displayButtons; 						// 画面 ボタン
	var dcBtn = 9; 							// 現在選択されているボタン
	var saveDataItems;
	var state = -1; 						// 0 = メインメニュー  1 = ロード画面  2 = セーブ画面
	var owner; 							// RClickConfigPlugin オブジェクトへの参照
	var currentPage = 0; 						// セーブデータ選択中に表示中のページ
	var returnButton; 						// もどる ボタン
	var pageButtons; 						// セーブデータのページボタン

	function RClickConfigLayer(win, par, owner)
	{
		super.Layer(win, par);
		this.owner = owner;

		// レイヤの状態を初期化
		setImageSize(800, 600);
		clearBase();
		setSizeToImageSize();
		setPos(0, 0);
		hitType = htMask;
		hitThreshold = 0; // 全域不透過
	}

	function finalize()
	{
		clear();
		invalidate closeButton if closeButton !== void;
		invalidate saveButton if saveButton !== void;
		invalidate loadButton if loadButton !== void;
		invalidate hideMessageButton if hideMessageButton !== void;
		invalidate exitButton if exitButton !== void;
		invalidate goToStartButton if goToStartButton !== void;
		invalidate returnButton if returnButton !== void;
		invalidate saveButton2 if saveButton2 !== void;
		invalidate loadButton2 if loadButton2 !== void;
		super.finalize(...);
	}


//ここに背景を読み込ませる指定があるので画像名はwall_名前にすればいいと思う
	function clearBase()
	{
		// 背景画像の読み込み
		var file;
		     if(state ==  1) file = "load";   // ロード画面
		else if(state ==  2) file = "save";   // セーブ画面
		else                 file = "menu";   // メニュー画面
		loadImages("wall_" + file);
	}

	function makeMainMenu()
	{
		// メインメニューの表示
		if(state != 0)
		{
			/*
				ここで指定するボタンは普通のボタン画像
				( ３つの状態が横に並んでいる画像 ) ではなくて、
				４つの状態 ( 通常、押された時、マウスが上にあるとき、
				フォーカスがある時 ) が横に並んだ画像である必要が
				あります。とくに最後の「フォーカスがあるとき」の
				状態は、キーボードで操作をする人のために必要です
				( showFocusImage=true にすると４つを横にならべた
				  画像を使用するようになります;推奨 ) 
			*/

			state = 0;
			clear();
			// 「閉じる」ボタンを作成
			if(closeButton === void)
			{
				closeButton = new RButtonLayer(window, this);
				closeButton.showFocusImage = false;
				closeButton.loadImages("btn_close");		//ここに画像名指定
				closeButton.left = 655;
				closeButton.top = 509;
				closeButton.focusable = false;
			}
			closeButton.visible = true;

			// 「セーブ」ボタンを作成
			if(saveButton === void)
			{
				saveButton = new RButtonLayer(window, this);
				saveButton.showFocusImage = false;
				saveButton.loadImages("btn_save" + svEnabled);	//ここに画像名指定
				saveButton.left = 201;
				saveButton.top = 21;
				saveButton.enabled = svEnabled;
				saveButton.focusable = false;
			}
			if(svEnabled != kag.canStore())
			{
				// ボタンの有効・無効で画像を変える
				svEnabled = saveButton.enabled = kag.canStore();
				saveButton.loadImages("btn_save" + svEnabled);	//ここに画像名指定
			}
			saveButton.visible = true;

			// 「ロード」ボタンを作成
			if(loadButton === void)
			{
				loadButton = new RButtonLayer(window, this);
				loadButton.showFocusImage = false;
				loadButton.loadImages("btn_load" + ldEnabled);	//ここに画像名指定
				loadButton.left = 305;
				loadButton.top = 21;
				loadButton.enabled = ldEnabled;
				loadButton.focusable = false;
			}
			if(ldEnabled != kag.canRestore())
			{
				// ボタンの有効・無効で画像を変える
				ldEnabled = loadButton.enabled = kag.canRestore();
				loadButton.loadImages("btn_load" + ldEnabled);	//ここに画像名指定
			}
			loadButton.visible = true;

			// 「メッセージを消す」ボタンを作成
			if(hideMessageButton === void)
			{
				hideMessageButton = new RButtonLayer(window, this);
				hideMessageButton.showFocusImage = false;
				hideMessageButton.loadImages("btn_hmes");	//ここに画像名指定
				hideMessageButton.left = 1000;
				hideMessageButton.top = 600;
				hideMessageButton.focusable = false;
			}
			hideMessageButton.visible = true;

			// 「最初に戻る」ボタンを作成
			if(goToStartButton === void)
			{
				goToStartButton = new RButtonLayer(window, this);
				goToStartButton.showFocusImage = false;
				goToStartButton.loadImages("btn_start" + sbEnabled);	//ここに画像名指定
				goToStartButton.left = 369;
				goToStartButton.top = 509;
				goToStartButton.enabled = sbEnabled;
				goToStartButton.focusable = false;
			}

			if(sbEnabled != kag.startAnchorEnabled)
			{
				// ボタンの有効・無効で画像を変える
				sbEnabled = goToStartButton.enabled = kag.startAnchorEnabled;
				goToStartButton.loadImages("btn_start" + sbEnabled);	//ここに画像名指定
			}
			goToStartButton.visible = true;

			// 「自動的に読み進むウェイト」ボタンを作成
			if(autoModeButtons === void)
			{
				var autoModes = [
					kag.autoModePageWaits.fast,   // 短い
					kag.autoModePageWaits.faster, // やや短い
					kag.autoModePageWaits.medium, // 普通
					kag.autoModePageWaits.slower, // やや長い
					kag.autoModePageWaits.slow,   // 長い
				];

				autoModeButtons = [];
				for(var i = 0; i < 5; i++)
				{
					var obj = new RButtonLayer(window, this);
					autoModeButtons[i] = obj;
					obj.showFocusImage = false;
					// 現在選択されているボタンは画像を変える
					var select = kag.autoModePageWait == autoModes[i];
					obj.loadImages("btn_spd" + i + select);		
					//ここに画像名指定
					//(おそらくここの画像はbtn_spd0～4んで
					//kag.autoModePageWaits.slowとかになると思う)
					obj.left = 30 * i + 579;
					obj.top = 261;
					obj.focusable = false;
					// 現在選択されているボタンはクリック不可に
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'auto';
					obj.auto = i;
					if(select) amcBtn = i;
				}
			}

			// 「文字表示速度（通常）」ボタンを作成
			if(chSpeedButtons === void)
			{
				var chSpeeds = [
					0, // ノーウェイト
					kag.chSpeeds.fast,   // 高速
					kag.chSpeeds.normal, // 普通
					kag.chSpeeds.slow,   // 遅い
				];

				chSpeedButtons = [];
				for(var i = 0; i < 4; i++)
				{
					var obj = new RButtonLayer(window, this);
					chSpeedButtons[i] = obj;
					obj.showFocusImage = false;
					// 現在選択されているボタンは画像を変える
					var select = kag.userChSpeed == chSpeeds[i];
					obj.loadImages("btn_spd" + i + select);		//複数あるボタンの場合は上に書いたように画像を用意する
					obj.left = 30 * i + 579;
					obj.top = 332;
					obj.focusable = false;
					// 現在選択されているボタンはクリック不可に
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'cspd';
					obj.cspd = i;
					if(select) cscBtn = i;
				}
				// 「ページ末まで」用チェックボックスを作成
				chCheckBox = new RCheckBoxLayer(window, this);
				chCheckBox.width = 16;
				chCheckBox.height = 16;
				chCheckBox.color = 0xffffff;
				chCheckBox.opacity = 164;
				chCheckBox.textColor = 0xab0000;
				chCheckBox.setPos(584, 361);
				chCheckBox.visible = true;
				chCheckBox.checked = kag.chNonStopToPageBreak;
			}

			// 「文字表示速度（既読）」ボタンを作成
			if(ch2ndSpeedButtons === void)
			{
				var chSpeeds = [
					0, // ノーウェイト
					kag.chSpeeds.fast,   // 高速
					kag.chSpeeds.normal, // 普通
					-1, // 変えない
				];

				ch2ndSpeedButtons = [];
				for(var i = 0; i < 4; i++)
				{
					var obj = new RButtonLayer(window, this);
					ch2ndSpeedButtons[i] = obj;
					obj.showFocusImage = false;
					// 現在選択されているボタンは画像を変える
					var select = kag.userCh2ndSpeed == chSpeeds[i];
					// i==3 のときは「変えない」のボタン
					var file = "btn_spd" + (i == 3 ? 5 : i) + select;	//ここで画像の読み込み
					obj.loadImages(file);
					if(i==3){
						obj.left =583;
						obj.top = 450;
					}else{
						obj.left = 30 * i + 579;
						obj.top = 384;
					}
					obj.focusable = false;
					// 現在選択されているボタンはクリック不可に
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'c2spd';
					obj.c2spd = i;
					if(select) c2scBtn = i;
				}
				// 「ページ末まで」用チェックボックスを作成
				ch2ndCheckBox = new RCheckBoxLayer(window, this);
				ch2ndCheckBox.width = 16;
				ch2ndCheckBox.height = 16;
				ch2ndCheckBox.color = 0xffffff;
				ch2ndCheckBox.opacity = 164;
				ch2ndCheckBox.textColor = 0xab0000;
				ch2ndCheckBox.setPos(583, 420);
				ch2ndCheckBox.visible = true;
				ch2ndCheckBox.checked = kag.ch2ndNonStopToPageBreak;
			}
			// 「画面」ボタンを作成
			if(displayButtons === void)
			{
				var displays = [
					false, // ウィンドウ
					true,  // フルスクリーン
				];

				displayButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var obj = new RButtonLayer(window, this);
					displayButtons[i] = obj;
					obj.showFocusImage = false;
					// 現在選択されているボタンは画像を変える
					var select = kag.fullScreened == displays[i];
					obj.loadImages("btn_disp" + i + select);	//ここで画像指定
					obj.left = 427 + ( i * 177 );
					obj.top = 163;
					obj.focusable = false;
					// 現在選択されているボタンはクリック不可に
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'disp';
					obj.disp = i;
					if(select) dcBtn = i;
				}
			}

			// 「終了」ボタンを作成
			if(exitButton === void)
			{
				exitButton = new RButtonLayer(window, this);
				exitButton.showFocusImage = false;
				exitButton.loadImages("btn_end");	//画像指定
				exitButton.left = 503;
				exitButton.top = 509;
				exitButton.focusable = false;
			}
			exitButton.visible = true;
		}
	}

	function clearAutoModeButtons()
	{
		// 「自動的に読み進むウェイト」ボタンのクリア
		if(autoModeButtons !== void)
		{
			for(var i = 0; i < autoModeButtons.count; i++)
			{
				invalidate autoModeButtons[i];
			}
			autoModeButtons = void;
		}
	}

	function changeAutoModeButton(newbtn)
	{
		// 「自動的に読み進むウェイト」ボタンを変更するとき
		if(autoModeButtons !== void)
		{
			// 選択ボタンの切替
			autoModeButtons[amcBtn].loadImages("btn_spd" + amcBtn + "0");
			autoModeButtons[amcBtn].enabled = true;
			autoModeButtons[newbtn].loadImages("btn_spd" + newbtn + "1");
			autoModeButtons[newbtn].enabled = false;
			amcBtn = newbtn;
			// モード選択の実行
			if(newbtn == 0) kag.autoModeFastMenuItem.click();
			else if(newbtn == 1) kag.autoModeFasterMenuItem.click();
			else if(newbtn == 2) kag.autoModeMediumMenuItem.click();
			else if(newbtn == 3) kag.autoModeSlowerMenuItem.click();
			else if(newbtn == 4) kag.autoModeSlowMenuItem.click();
		}
	}

	function clearChSpeedButtons()
	{
		// 「文字表示速度（通常）」ボタンのクリア
		if(chSpeedButtons !== void)
		{
			for(var i = 0; i < chSpeedButtons.count; i++)
			{
				invalidate chSpeedButtons[i];
			}
			invalidate chCheckBox;
			chSpeedButtons = void;
			chCheckBox = void;
		}
	}

	function changeChSpeedButton(newbtn)
	{
		// 「文字表示速度（通常）」ボタンを変更するとき
		if(chSpeedButtons !== void)
		{
			// 選択ボタンの切替
			chSpeedButtons[cscBtn].loadImages("btn_spd" + cscBtn + "0");
			chSpeedButtons[cscBtn].enabled = true;
			chSpeedButtons[newbtn].loadImages("btn_spd" + newbtn + "1");
			chSpeedButtons[newbtn].enabled = false;
			cscBtn = newbtn;
			// モード選択の実行
			if(newbtn == 0) kag.chNoWaitMenuItem.click();
			else if(newbtn == 1) kag.chFastMenuItem.click();
			else if(newbtn == 2) kag.chNormalMenuItem.click();
			else if(newbtn == 3) kag.chSlowMenuItem.click();
		}
	}

	function clearCh2ndSpeedButtons()
	{
		// 「文字表示速度（既読）」ボタンのクリア
		if(ch2ndSpeedButtons !== void)
		{
			for(var i = 0; i < ch2ndSpeedButtons.count; i++)
			{
				invalidate ch2ndSpeedButtons[i];
			}
			invalidate ch2ndCheckBox;
			ch2ndSpeedButtons = void;
			ch2ndCheckBox = void;
		}
	}

	function changeCh2ndSpeedButton(newbtn)
	{
		// 「文字表示速度（既読）」ボタンを変更するとき
		if(ch2ndSpeedButtons !== void)
		{
			// 選択ボタンの切替
			var file1 = c2scBtn == 3 ? 5 : c2scBtn;
			var file2 =  newbtn == 3 ? 5 :  newbtn;
			ch2ndSpeedButtons[c2scBtn].loadImages("btn_spd" + file1 + "0");
			ch2ndSpeedButtons[c2scBtn].enabled = true;
			ch2ndSpeedButtons[newbtn].loadImages("btn_spd" + file2 + "1");
			ch2ndSpeedButtons[newbtn].enabled = false;
			c2scBtn = newbtn;
			// モード選択の実行
			if(newbtn == 0) kag.ch2ndNoWaitMenuItem.click();
			else if(newbtn == 1) kag.ch2ndFastMenuItem.click();
			else if(newbtn == 2) kag.ch2ndNormalMenuItem.click();
			else if(newbtn == 3) kag.ch2ndNoChangeMenuItem.click();
		}
	}

	function clearDisplayButtons()
	{
		// 「画面」ボタンのクリア
		if(displayButtons !== void)
		{
			for(var i = 0; i < displayButtons.count; i++)
			{
				invalidate displayButtons[i];
			}
			displayButtons = void;
		}
	}

	function changeDisplayButton(newbtn)
	{
		// 「画面」ボタンを変更するとき
		if(displayButtons !== void)
		{
			// 選択ボタンの切替
			displayButtons[dcBtn].loadImages("btn_disp" + dcBtn + "0");
			displayButtons[dcBtn].enabled = true;
			displayButtons[newbtn].loadImages("btn_disp" + newbtn + "1");
			displayButtons[newbtn].enabled = false;
			dcBtn = newbtn;
			// モード選択の実行
			if(newbtn) kag.fullScreenMenuItem.click();
			else kag.windowedMenuItem.click();
		}
	}

	function clearSaveDataItems()
	{
		// セーブデータ表示のクリア
		if(saveDataItems !== void)
		{
			for(var i = 0; i < saveDataItems.count; i++)
			{
				saveDataItems[i].saveToSystemVariable();
				invalidate saveDataItems[i];
			}
			saveDataItems = void;
			kag.setBookMarkMenuCaptions();
		}
	}

	function makeSaveDataItems()
	{//ここでセーブの数を決めていると思う
		// セーブデータの表示
		clearSaveDataItems();
		saveDataItems = [];
		for(var i = 0; i < 4; i++)
		{
			var obj = new SaveDataItemLayer(window, this, currentPage * 4 + i);
			saveDataItems[i] = obj;
			//obj.setPos(140 - 4, i * 120 + 4);
			obj.setPos(183, i * 130 + 60);
			obj.visible = true;
		}
	}

	function getButtonMode()
	{
		// 各画面でボタン画像を変えてみる
		     if(state == 1) return "l"; // ロード画面
		else if(state == 2) return "s"; // セーブ画面
	}

	function clearPageButtons()
	{
		// ページボタンのクリア
		if(pageButtons !== void)
		{
			for(var i = 0; i < pageButtons.count; i++)
			{
				invalidate pageButtons[i];
			}
			pageButtons = void;
		}
	}

	function makePageButtons()
	{
		// ページボタンを作成する
		clearPageButtons();
		pageButtons = [];
		for(var i = 0; i < 10; i++)
		{
			var obj = new RButtonLayer(window, this);
			pageButtons[i] = obj;
			obj.showFocusImage = false;
			// 現在選択されているボタンは画像を変える
			//var file = currentPage == i ? "select" : getButtonMode() + i;
			var file = currentPage == i ? "sel"+ currentPage : getButtonMode() + i;
			obj.loadImages("pbtn_" + file);		//ここの画像指定はpbtn0～9でいいと思うもしかしたら数字の前にs　l　dのどれかがはいるのかも
			obj.top = i * 31 + 127;
			obj.left = 11;
			obj.focusable = false;
			// 現在選択されているボタンはクリック不可
			obj.enabled = currentPage != i;
			obj.visible = true;
			obj.tag = 'page';
			obj.page = i;
		}
	}

	function changePage(newpage)
	{
		// ページを変更するとき
		if(pageButtons !== void)
		{
			pageButtons[currentPage].loadImages("pbtn_" + getButtonMode() + currentPage);
			pageButtons[currentPage].enabled = true;
			pageButtons[newpage].loadImages( "pbtn_sel" + newpage );
			pageButtons[newpage].enabled = false;
			currentPage = newpage;

			// 裏画面に変更後の情報をコピー
			owner.backCopyConfig();
			makeSaveDataItems();
		}
	}

	// 「ロード」ボタンを作成
	function makeLoadButton(){	
		if(loadButton2 === void){
			loadButton2 = new RButtonLayer(window, this);
			loadButton2.showFocusImage = false;
			loadButton2.loadImages("btn_load" + ldEnabled);	//ここに画像名指定
			loadButton2.left = 140;
			loadButton2.top = 21;
			loadButton2.enabled = ldEnabled;
			loadButton2.focusable = false;
		}
		if(ldEnabled != kag.canRestore()){
		// ボタンの有効・無効で画像を変える
			ldEnabled = loadButton2.enabled = kag.canRestore();
			loadButton2.loadImages("btn_load" + ldEnabled);	//ここに画像名指定
		}
		loadButton2.visible = true;
	}

	// 「セーブ」ボタンを作成
	function makeSaveButton(){	
		if(saveButton2 === void){
			saveButton2 = new RButtonLayer(window, this);
			saveButton2.showFocusImage = false;
			saveButton2.loadImages("btn_save" + svEnabled);	//ここに画像名指定
			saveButton2.left = 36;
			saveButton2.top = 21;
			saveButton2.enabled = svEnabled;
			saveButton2.focusable = false;
		}
		if(svEnabled != kag.canStore())
		{
			// ボタンの有効・無効で画像を変える
			svEnabled = saveButton2.enabled = kag.canStore();
			saveButton2.loadImages("btn_save" + svEnabled);	//ここに画像名指定
		}
		saveButton2.visible = true;
	}

	function makeReturnButton()
	{
		// 「戻る」ボタンを作成
		if(returnButton === void)
		{
			returnButton = new RButtonLayer(window, this);
			returnButton.showFocusImage = false;
			returnButton.loadImages("btn_return");	//画像指定
			returnButton.left = 705;
			returnButton.top = 21;
			returnButton.focusable = false;
		}
		returnButton.visible = true;
	}

;/////////////////////////////////////////////////////////////////////////////////////////////////////

	function makeLoadMenu()
	{
		// 「ロード」メニュー
		if(state != 1)
		{
			state = 1;
			clear();
			makeSaveDataItems(currentPage);
			makeReturnButton();
			makePageButtons();
			if(f.rclickmode==4 || f.rclickmode==5 || f.rclickmode==2){
				makeSaveButton();	//ロードのボタンを追加
			}
		}
	}

	function makeSaveMenu()
	{
		// 「セーブ」メニュー
		if(state != 2)
		{
			state = 2;
			clear();
			makeSaveDataItems(currentPage);
			makeReturnButton();
			makePageButtons();
			//f.rclickmode==4|| 
			if(f.rclickmode==4 || f.rclickmode==2 || f.rclickmode==5){
				makeLoadButton();	//ロードのボタンを追加
			}
		}
	}

;//////////////////////////////////////////////////////////////////////////////////////////////////

	function clear()
	{
		// 画面上のボタン類をすべて非表示にするか、無効化する
		clearBase();
		closeButton.visible = false if closeButton !== void;
		saveButton.visible = false if saveButton !== void;
		loadButton.visible = false if loadButton !== void;
		hideMessageButton.visible = false if hideMessageButton !== void;
		exitButton.visible = false if exitButton !== void;
		goToStartButton.visible = false if goToStartButton !== void;
		clearAutoModeButtons();
		clearChSpeedButtons();
		clearCh2ndSpeedButtons();
		clearDisplayButtons();
		returnButton.visible = false if returnButton !== void;
		saveButton2.visible = false if saveButton2 !== void;
		loadButton2.visible = false if loadButton2 !== void;
		clearSaveDataItems();
		clearPageButtons();
	}

	function saveToSystemVariable()
	{
		// システム変数にデータを保存する必要があるとき
		if(saveDataItems !== void)
		{
			for(var i = 0; i < saveDataItems.count; i++)
				saveDataItems[i].saveToSystemVariable();
			kag.setBookMarkMenuCaptions();
		}
	}

	function onButtonClick(sender)
	{
		// ボタンが押されたとき
		switch(sender)
		{
		case closeButton: // 閉じる ボタン
			owner.onConfigClose();
			break;
		case saveButton: // セーブ ボタン
			// kag.se[3].play(%[storage:'ON.ogg', loop: false]);
			owner.backCopyConfig();
			owner.backConfig.makeSaveMenu();
			kag.process('', '*rclick_2');
			break;
		case loadButton: // ロード ボタン
			// kag.se[3].play(%[storage:'ON.ogg', loop: false]);
			owner.backCopyConfig();
			owner.backConfig.makeLoadMenu();
			kag.process('', '*rclick_2');
			break;
		case saveButton2: // セーブ ボタン
			// kag.se[3].play(%[storage:'ON.ogg', loop: false]);
			owner.backCopyConfig();
			owner.backConfig.makeSaveMenu();
			kag.process('', '*rclick_2');
			break;
		case loadButton2: // ロード ボタン
			// kag.se[3].play(%[storage:'ON.ogg', loop: false]);
			owner.backCopyConfig();
			owner.backConfig.makeLoadMenu();
			kag.process('', '*rclick_2');
			break;
		
		case hideMessageButton: // メッセージを消すボタン
			owner.hmes = true;
			kag.process('', '*hidemessage');
			break;
		case exitButton: // 終了 ボタン
			kag.exitMenuItem.click();
			break;
		case goToStartButton: // 最初に戻る ボタン
			kag.goToStartMenuItem.click();
			break;
		case returnButton: // 戻る ボタン
			returnMenu();
			break;
		default:
			if(sender.tag == 'page')
			{
				// page ボタン
				changePage(sender.page);
			}
			else if(sender.tag == 'auto')
			{
				// 自動ウェイト ボタン
				// kag.se[3].play(%[storage:'ON2.ogg', loop: false]);
				changeAutoModeButton(sender.auto);
			}
			else if(sender.tag == 'cspd')
			{
				// kag.se[3].play(%[storage:'ON2.ogg', loop: false]);
				// 文字表示速度（通常） ボタン
				changeChSpeedButton(sender.cspd);
			}
			else if(sender.tag == 'c2spd')
			{
				// 文字表示速度（既読） ボタン
				// kag.se[3].play(%[storage:'ON2.ogg', loop: false]);
				changeCh2ndSpeedButton(sender.c2spd);
			}
			else if(sender.tag == 'disp')
			{
				// 画面 ボタン
				changeDisplayButton(sender.disp);
			}
		}
	}

	function onCheckBoxClick(sender)
	{
		// チェックボックスが変更されたとき
		switch(sender)
		{
		case chCheckBox: // ページ末まで（通常）
			kag.chNonStopToPageBreakItem.click();
			break;
		case ch2ndCheckBox: // ページ末まで（既読）
			kag.ch2ndNonStopToPageBreakItem.click();
			break;
		/*case chAntialiasCheckBox: // アンチエイリアス
			kag.chAntialiasMenuItem.click();*/
		}
	}

	function delBookMark(num)
	{
		// 栞の削除確認ダイアログ

		// bookMarkDates が空の場合は栞は存在しない
		if(num < kag.numBookMarks && kag.bookMarkDates[num] == "")
			return false;

		if(kag.bookMarkProtectedStates[num]) return false;

		var prompt = "File ";
		if(num < kag.numBookMarks) prompt += (num + 1);
		prompt += " を削除しますか?";
		var result = askYesNo(prompt);
		if(result) // 「YES」のとき
		{
			kag.bookMarkNames[num] = ""; // 栞名を消去
			kag.bookMarkDates[num] = ""; // 保存年月日を消去
			kag.setBookMarkMenuCaptions();
			return true;
		}
		return false;
	}

	function onLoadOrSave(num)
	{
		// 番号 num をセーブまたはロード
		if(state == 1)
		{
			// ロード
			sf.load=1;
			kag.loadBookMarkWithAsk(num);
		}
		else if(state == 2)
		{
			// セーブ
			if(kag.saveBookMarkWithAsk(num))
			{
				clearSaveDataItems();
				if(kag.scflags.bookMarkComments !== void)
					kag.scflags.bookMarkComments[num] = ''; // コメントをクリア
				makeSaveDataItems(); // 表示を更新

				// 裏画面に変更後の情報をコピー
				owner.backCopyConfig();
			}
		}
	}

	function show()
	{
		// レイヤを表示する
		visible = true;
		setMode();
		focus();
	}

	function hide(opt)
	{
		// レイヤを隠す
		if (opt) removeMode(); // 表画面のモーダルを解除
		visible = false;
		clear();
		state = -1;
	}

	function returnMenu()
	{
		if( state != 0 && f.rclickmode == 4){
			// 直接呼び出されており、セーブ・ロード画面が
			// 表示されている場合はメインメニューへ戻る
			owner.backConfig.makeMainMenu();
			kag.process('', '*rclick_2');
		}

		if( state == 0 && f.rclickmode == 4){
			// 直接呼び出されておらず、セーブ・ロード画面が
			// 表示されている場合はメインメニューへ戻る
			
			owner.onConfigClose();
		}

		if(!state || f.rclickmode && f.rclickmode != 4 ){
			// メインメニューが表示されているときか、
			// セーブ・ロード画面を直接呼び出した場合は閉じる
			owner.onConfigClose();
		}
		
		/*else{
			// 直接呼び出されておらず、セーブ・ロード画面が
			// 表示されている場合はメインメニューへ戻る
			owner.backConfig.makeMainMenu();
			kag.process('', '*rclick_2');
		}*/

	}

	function onKeyDown(key)
	{
		// トランジション中
		if(kag.transCount != 0)
		{
			// Enter キーまたはスペースキーが押されたらスキップ
			if(key == VK_RETURN || key == VK_SPACE)
				kag.stopAllTransitions();
			return;
		}

		super.onKeyDown(...);

		// ESC キーが押されたら戻り先判定
		if(key == VK_ESCAPE) returnMenu();
	}

	function onMouseDown(x, y, button, shift)
	{
		// トランジション中
		if(kag.transCount != 0)
		{
			// 左クリックされたらスキップ
			if(button == mbLeft) kag.stopAllTransitions();
			return;
		}

		// 右クリックされたら戻り先判定
		if(button == mbRight) returnMenu();
	}
}

class RClickConfigPlugin extends KAGPlugin // 「右クリック設定」プラグインクラス
{
	var window; // ウィンドウへの参照

	var foreConfig; // 設定レイヤ（表画面）
	var backConfig; // 設定レイヤ（裏画面）

	var hmes = false; // 「メッセージを消す」用フラグ

	function RClickConfigPlugin(window)
	{
		// RClickPlugin コンストラクタ
		super.KAGPlugin(); // スーパークラスのコンストラクタを呼ぶ
		this.window = window; // window への参照を保存する
	}

	function finalize()
	{
		invalidate foreConfig if foreConfig !== void;
		invalidate backConfig if backConfig !== void;
		super.finalize(...);
	}

	function show()
	{
		// 表画面と裏画面に設定レイヤを作成
		if(foreConfig === void)
			foreConfig = new RClickConfigLayer(window, kag.fore.base, this);
		if(backConfig === void)
			backConfig = new RClickConfigLayer(window, kag.back.base, this);

		// 重ね合わせ順序はメッセージ履歴よりも奥
		// ※雪プラグインとか使っている場合は
		// 　重ならないように指定数値を調整したほうが良いかも
		foreConfig.absolute = 2000000-1;
		backConfig.absolute = foreConfig.absolute;

		// まだ非表示にしておく
		foreConfig.visible = false;
		backConfig.visible = false;

		//ここのフラグで呼び出せばいい
		if(f.rclickmode == 1)
		{
			// 直接「ロード」メニューを呼ぶ
			foreConfig.makeLoadMenu();
			backConfig.makeLoadMenu();
		}
		else if(f.rclickmode == 2)
		{
			// 直接「セーブ」メニューを呼ぶ
			foreConfig.makeSaveMenu();
			backConfig.makeSaveMenu();
		}
		else if(f.rclickmode == 3)
		{
			// 直接「コンフィグ」メニューを呼ぶ
			foreConfig.makeMainMenu();
			backConfig.makeMainMenu();
		}
		else if(f.rclickmode == 5)
		{
			// 直接「ロード」メニューを呼ぶ
			foreConfig.makeLoadMenu();
			backConfig.makeLoadMenu();
		}
		else if(f.rclickmode == 4)
		{
			// 直接「コンフィグ」メニューを呼ぶ
			foreConfig.makeMainMenu();
			backConfig.makeMainMenu();
		}else{
			// それ以外はメインメニュー
			foreConfig.makeMainMenu();
			backConfig.makeMainMenu();
		}
	}

	function setConfigTrans(opt)
	{
		// 画面を表示するか非表示にするかの設定
		backConfig.visible = opt;

		foreConfig.removeMode(); // 表画面のモーダルを解除
	}

	function backCopyConfig()
	{
		// 表画面のセーブデータの状態を保存
		foreConfig.saveToSystemVariable();

		// 必要な表画面の情報を裏画面にコピーする
		backConfig.visible = foreConfig.visible;
		backConfig.state = foreConfig.state;
		backConfig.currentPage = foreConfig.currentPage;

		var fc = foreConfig.saveDataItems;
		var bc = backConfig.saveDataItems;

		// 裏画面を更新する
		if(fc !== void)
		{
			     if(backConfig.state == 1) backConfig.makeLoadMenu();
			else if(backConfig.state == 2) backConfig.makeSaveMenu();
			else backConfig.makeDeleteMenu();
		}
		if(fc !== void && bc !== void)
		{
			for(var i = 0; i < fc.count; i++)
			{
				bc[i].num = fc[i].num;
			}
		}
	}

	function foreCopyConfig()
	{
		// 必要な裏画面の情報を表画面にコピーする
		foreConfig.visible = backConfig.visible;
		foreConfig.state = backConfig.state;
		foreConfig.currentPage = backConfig.currentPage;

		var fc = foreConfig.saveDataItems;
		var bc = backConfig.saveDataItems;

		// 表画面を更新する
		if(bc !== void)
		{
			     if(foreConfig.state == 1) foreConfig.makeLoadMenu();
			else if(foreConfig.state == 2) foreConfig.makeSaveMenu();
			else foreConfig.makeDeleteMenu();
		}
		if(bc !== void && fc !== void)
		{
			for(var i = 0; i < bc.count; i++)
			{
				fc[i].num = bc[i].num;
			}
		}
	}

	function onConfigClose()
	{
		// 設定レイヤを閉じる準備
		f.rclickmode = 0; // 念のため呼び出しフラグを初期化
		setConfigTrans(false); // 裏画面を非表示
		window.trigger('config'); // 'config'トリガを発動する
	}

	function closeConfig()
	{
		// 設定レイヤを完全に閉じる
		foreConfig.hide(true)  if foreConfig !== void;
		backConfig.hide(false) if backConfig !== void;
	}

	// 以下、KAGPlugin のメソッドのオーバーライド

	function onStore(f, elm)
	{
	}

	function onRestore(f, clear, elm)
	{
		// 栞を読み出すとき
		closeConfig();
	}

	function onStableStateChanged(stable)
	{
	}

	function onMessageHiddenStateChanged(hidden)
	{
	}

	function onCopyLayer(toback)
	{
		// レイヤの表←→裏の情報のコピー
		// backlay タグやトランジションの終了時に呼ばれる
		if(toback)
			if(foreConfig !== void) backCopyConfig(); // 表→裏
		else
			if(backConfig !== void) foreCopyConfig(); // 裏→表
	}

	function onExchangeForeBack()
	{
		// 裏と表の管理情報を交換
		if (foreConfig !== void)
		{
			var tmp;
			tmp = backConfig;
			backConfig = foreConfig;
			foreConfig = tmp;
		}
	}

	function onSaveSystemVariables()
	{
		// セーブデータの情報を保存
		if(foreConfig !== void) foreConfig.saveToSystemVariable();
	}
}

kag.addPlugin(global.rclickconfig_object = new RClickConfigPlugin(kag));


/* --- 「メッセージを消す」でちらつかせないための処理 --- */

kag.hideMessageLayerByUser2 = kag.hideMessageLayerByUser;
kag.hideMessageLayerByUser = function()
{
	// 通常処理
	hideMessageLayerByUser2();

	// 最後に設定レイヤを消す
	with(.rclickconfig_object) if(.hmes) .closeConfig();
}
incontextof kag;

kag.showMessageLayerByUser2 = kag.showMessageLayerByUser;
kag.showMessageLayerByUser = function()
{
	// 先に設定レイヤを表示する
	with(.rclickconfig_object)
	{
		if(messageLayerHiding && .hmes)
		{
			.show();
			.foreConfig.show();
			.hmes = false;
		}
	}
	// 通常処理
	showMessageLayerByUser2();
}
incontextof kag;

@endscript
@endif
@return


*rclick
; 右クリックで呼ばれるサブルーチン
; 直接「ロード」や「セーブ」の画面を呼び出す場合もここを呼ぶ
@locklink
@locksnapshot
;---
; 設定レイヤを作成
@eval exp="rclickconfig_object.show()"
@backlay
;---
*rclick_2
;---
; トランジションで表示させる
@wt canskip=false
@eval exp="rclickconfig_object.setConfigTrans(true)"
@trans method=crossfade time=500
[mapdisable layer=base]
@wt canskip=false
;---
; 表画面の表示設定
@eval exp="rclickconfig_object.foreConfig.show()"
;---
*rclick_3
;---
; 'config'トリガが発動されるまで待機
@waittrig name="config"
;---
*rclick_4
;---
; トランジションで閉じる
[eval exp="sf.load=0"]
@trans method=crossfade time=500
@wt
;---
; 設定レイヤの中身を消去
@eval exp="rclickconfig_object.closeConfig()"
;---
@unlocksnapshot
@unlocklink
@return

*hidemessage
; メッセージを消すときに呼ばれる
@hidemessage
@jump target=*rclick_3
;---
; ※履歴を閉じたらそのまま元のゲーム画面へ戻したい場合は
;  上の jump タグを消してね
;---
@eval exp="rclickconfig_object.setConfigTrans(false)"
@jump target=*rclick_4


;------------------
; 2005/12/01 Ranka 
;------------------

