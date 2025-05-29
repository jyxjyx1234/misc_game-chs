// *************************************************************
// エンドロール
// =============================================================
// 可変長であるスタッフロール
// 曲の長さ、移動速度、項目の縦幅により、項目間の幅を変える
// 
#INC_START

	#define		@pos_x		232		// 配置位置(x軸):232が中央？


	#define		@item_length	$item_length//1972	// _staffrollオブジェクトの長さ(px)
	#property	$item_length	
	#define		@item_number	19		// スタッフロールの項目数
	#define		@item_space		-100		// 前後の間隔（ウィンドウサイズ追加基準）
	#define		@window_size	600		// ウィンドウの縦

//180->168 158->147：上段はロゴを止める時間、下段は曲の残り時間
	#define		@time_ed1		168000	// ＥＤ１（トゥルー
	#define		@time_ed1_rev	 12000 	// 曲時間の不足分
	#define		@time_ed2		168000	// ＥＤ２（グッド
	#define		@time_ed2_rev	 12000 	// 曲時間の不足分
	#define		@time_ed3		147500	// ＥＤ３（バッド
	#define		@time_ed3_rev	 10500	// 曲時間の不足分

	#define		@time_begin		300	// スクロールの開始時間（曲基準）
	// 仕様の変更により、0以外にしないこと
	#define		@time_close		0	// スクロールの終了時間（曲基準）

	#define		@time_before	1000	// エンディングが始まるまでの時間
	#define		@time_after		000	// エンディングが終わった後の時間

	#property	$music_name : str

	#property	$px_time			// 移動速度
	#property	$time_music			// 音楽時間
	#property	$time_music_rev		// 余韻
	#property	$scroll_time		// スクロールの時間
	#property	$scroll_length		// スクロール全体の長さ
	#property	$matter_start		// 項目の開始時間
	#property	$matter_time		// 項目の移動時間
	#property	$matter_length		// 項目の長さ(余分なものなし)

	#property	$space_time			// 
	#property	$space_time_rev		// 補正値

	#property	$last_time_rev		// 最後の補正値

	#property	$matter_last		// 最後の項目のサイズ




#INC_END

#z00

// =========================================================
// 下準備
// ---------------------------------------------------------


// 諸々の終了。
close
pcm.stop
bgm.stop(500)
$clear(001)
	script.set_mouse_disp_off	// カーソルを非表示
// 諸々の操作の禁止
	// システムコマンドメニューの呼び出しを禁止します。
	syscom.set_syscom_menu_disable
	syscom.set_save_exist_flag(0)
	syscom.set_load_exist_flag(0)

	// 一部のショートカットキーを無効にする
	script.set_key_disable(83)	// セーブ画面
	script.set_key_disable(82)	// 前の選択肢に戻る
	script.set_key_disable(81)	// クイックセーブ

	script.set_key_disable(76)	// ロード画面
	script.set_key_disable(49)	// クイックロード

if(@クリア済み == 0){
	// コントロールキーによる早送りを禁止します。
	script.set_ctrl_skip_disable
}

	// メッセージバックを禁止します。
	script.set_msg_back_disable

	// スペースキーでウィンドウを消す機能を禁止します。
	syscom.set_hide_mwnd_enable_flag(0)

// 先にオブジェクトを読み込んでおく
g00buf[0].load(_staffroll)
disp

for(l[10] = 0, l[10] < @item_number, l[10] += 1){
	front.object[l[10]].create(_staffroll, 0)
	$item_length += front.object[l[10]].get_size_y(l[10])
}


// 曲の時間を判別する
if(l[0] == 1){
	$time_music = @time_ed1
	$time_music_rev = @time_ed1_rev
	$music_name = "ＥＤ１"
}
elseif(l[0] == 2){
	$time_music = @time_ed2
	$time_music_rev = @time_ed2_rev
	$music_name = "ＥＤ２"
}
elseif(l[0] == 3){
	$time_music = @time_ed3
	$time_music_rev = @time_ed3_rev
	$music_name = "ＥＤ３"
}
else{ //ざっばーん
	returnmenu
}

// 最終項目の大きさを求める
front.object[0].create(_staffroll, 0)
$matter_last = front.object[0].get_size_y(@item_number - 1)


// スクロール全体の長さを求める（ただし最終項目分は、中央に止まる：半分）
$scroll_length = @item_length + @item_number * @window_size + (@item_number - 1) * @item_space - ($matter_last + @window_size) / 2

// 曲の長さ、前後の空白から、スクロールの時間を求める
$scroll_time = $time_music - @time_begin - @time_close

// 1pxの移動に必要な時間を求める
$px_time = $scroll_time / $scroll_length

// 移動速度に対する、実際の誤差を求める
$space_time_rev = $scroll_time % $scroll_length
$space_time_rev /= (@item_number -1)

// 次のスクロールが開始する時差
$space_time = @item_space * $px_time

// 最後の補正値
$last_time_rev = $scroll_time % $scroll_length - $space_time_rev * (@item_number - 1)

// フィルター
front.object[@item_number].create(_endroll_f, 1)


// 全体の長さ
l[30] = @time_before + $time_music + $time_music_rev + @time_after



// =========================================================
// スタッフロール
// ---------------------------------------------------------




// カウントスタート
counter[0].start_real

// エンディングの開始猶予
counter[0].wait(@time_before)

// 曲の開始
bgm.play_oneshot($music_name)

// カウントリセット
counter[0].set(0)

// 最初の開始時間
$matter_start = @time_begin

for(l[10] = 0, l[10] < @item_number, l[10] += 1){

// 誤差を減らすために、$px_timeを使わず、($matter_length * $scroll_time / $scroll_length)

	front.object[l[10]].create(_staffroll, 1, @pos_x, @window_size, l[10])

	// 当項目の長さを求める
	$matter_length = front.object[l[10]].get_size_y(l[10])

	// 当項目の移動時間を求める
	$matter_time = ($matter_length + @window_size) * $px_time

	counter[0].wait($matter_start)

	if(l[10] < @item_number - 1){
		front.object[l[10]].y_eve.set_real( - $matter_length, $matter_time, 0, 0)
	}
	else{
//		counter[0].wait($matter_start + $last_time_rev)
		front.object[l[10]].y_eve.set_real( (@window_size - $matter_length) / 2, $matter_time / 2, 0, 0)
	l[21] = $matter_start
	l[22] = $matter_start + $matter_time / 2
	}

	// 次項の開始時間を求める
	$matter_start += $matter_time + $space_time + $space_time_rev

	if(l[10] == @item_number - 2){
		$matter_start += $last_time_rev
	}

}

// =========================================================
// ちょっとした処理
// ---------------------------------------------------------
if(script.check_skip){
	script.set_ctrl_skip_disable

	counter[0].reset

	for(l[10] = 0, l[10] < @item_number , l[10] += 1){
		front.object[l[10]].init
	}
	front.object[@item_number - 1].create(_staffroll, 1, @pos_x, (@window_size - $matter_last) / 2, @item_number - 1)

	bgm.stop

}
else{

	// スクロールの終了待ち
	counter[0].wait($matter_start - $space_time)

	counter[0].wait_key($matter_start - $space_time + $time_music_rev + @time_after)
	counter[0].reset

	bgm.stop(500)

}

r

g00buf[0].free

$clear(001)

// いろいろと解除
	// スペースキーでウィンドウを消す機能を許可します。
	syscom.set_hide_mwnd_enable_flag(1)

	// メッセージバックを許可します。
	script.set_msg_back_enable

	// コントロールキーによる早送りを許可します。
	script.set_ctrl_skip_enable

	// システムコマンドを有効にします。
	syscom.set_syscom_menu_enable
	syscom.set_save_exist_flag(1)
	syscom.set_load_exist_flag(1)

	// 禁止にしたショートカットを有効にする
	script.set_key_enable(83)
	script.set_key_enable(82)
	script.set_key_enable(81)

	script.set_key_enable(76)	// ロード画面
	script.set_key_enable(49)	// クイックロード

	// カーソルの非表示を解除
	script.set_mouse_disp_on



return



