#Z00

//--------------------------
//エフェクトつくるところ

//------------------------
//選択肢調整


@BG(BG10_AA)

L[00] = $sentaku_two_choices("miko_sentaku",0,2,"このまま視線を送っててもよいものかどうか…","Ａ：いやいや、瑞月もRがんばっているんだから！","Ｂ：俺には、R見る権利があってもR良いんじゃないか",0,1)


@kwt


//---------------------
//イベントＣＧ動作確認



//@回想モード中 = 1


//--------------------
//スタッフロール


$set_title("テストじゃよjyayo")

@BGM(BGM32)

@BG(_white)

// $m13_staffroll

//@scene_end_last("I can't stop my fingers")



//------------------
//クエイク

@BG(BG20_AA)

@<クエイク：胸ぐら掴む>


//	screen.quake[0].start_wait(1,50,1,10,[30,0])

@kwt

@<クエイク：地響き：永続>

@kwt



@<クエイク：身体を押す>

@kwt

@<クエイク：細かい振動：縦>

@kwt


@<クエイク：細かい振動：横>

@kwt


//@<クエイク：汎用０１>


@kwt

@<クエイク：火山爆発>

@kwt


//------------------
//辞書表示	→ miko_専用アクションマクロ


@BG(BG10_AA)

//	@＜辞書開く＞(100,639,359)


@kwt

//	@＜辞書閉じる＞(100)
	
@kwt



//----------------
//マウスムーブにあわせて動く

//@瑞月_巫女服
//@エマ_巫女服


@all_black
@BG(BG40_AA)
//@chr_old_nowait(dummy,dummy,tcg_mizXA_000)
//@camera_work_chrsize_tcg_ss(20,0)
//@chr_old_BUSTUP2_NOWAIT(31,bst_emaXA_000)
@camera_work_bgsize_n(0)
//@chr_kokyu_off



$multiple_mouse_scroll(0)		//→_★画面全体イベント2023

@all_screen_clear(1000)


@kwt







