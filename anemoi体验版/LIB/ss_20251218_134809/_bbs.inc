//===========================================================================
//!
//!    @file     _bbs.inc
//!    @brief    掲示板定義
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     掲示板システムの制御
//!
//===========================================================================

// 時間帯
#replace	@午前				1
#replace	@午後				2

// 依頼にかける時間
#replace	@依頼時間_半日		0			// 午前に実行しても午後に行動可能
#replace	@依頼時間_一日		1			// 午前に実行すると午後の行動はできなくなる

// 依頼者
#replace	@依頼者_スピカ		1
#replace	@依頼者_愛乃		2
#replace	@依頼者_陽彩		3
#replace	@依頼者_小詠		4
#replace	@依頼者_六花		5
#replace	@依頼者_文弥		6
#replace	@依頼者_塁			7
#replace	@依頼者_つづら		8
#replace	@依頼者_千春		9
#replace	@依頼者_健			10
#replace	@依頼者_玖琉未		11

// 依頼書の設定
#macro	@依頼書表示(@thumbnail, @info_image, @pos, @character, @time, @request_file, @request_label, @board_file(""), @board_label(0))
	$$set_bbs_request_data(@thumbnail, @info_image, @pos, @character, @time, @request_file, @request_label, @board_file, @board_label)

// 掲示板データ初期化
#macro	@掲示板初期化
	@依頼にかける時間 = @依頼時間_半日
	$$init_bbs_data

// 掲示板表示
#macro	@掲示板表示		farcall(_bbs)

#command $$init_bbs_data														// 掲示板データ初期化
#command $$set_bbs_request_data(str, str, int, int, int, str, int, str, int)	// 掲示板の依頼書データを設定する
