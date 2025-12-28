//===========================================================================
//!
//!    @file     __lib_action_object.ss
//!    @brief    アクションオブジェクト制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// アクションコマンドが使えるオブジェクトに設定する
//---------------------------------------------------------------------------
command $$set_action_object(property $obj : object)
{
	// 各補正座標を確保する
	$obj.x_rep.resize(<ACTION_REP_INDEX_MAX>)
	$obj.y_rep.resize(<ACTION_REP_INDEX_MAX>)
	$obj.x_rep_eve.resize(<ACTION_REP_INDEX_MAX>)
	$obj.y_rep_eve.resize(<ACTION_REP_INDEX_MAX>)
	$obj.tr_rep_eve.resize(<ACTION_REP_INDEX_MAX>)
}

//---------------------------------------------------------------------------
// 文字列にアクションコマンドが含まれているか
//---------------------------------------------------------------------------
command $$exists_action_command(property $str : str) : int
{
	if( $str.search(<ACTION_COMMAND>) == -1 )
	{
		return (0)
	}
	
	return (1)
}

//---------------------------------------------------------------------------
// 文字列に含まれているアクションコマンドを取得する
//---------------------------------------------------------------------------
command $$get_action_command(property $str : str) : str
{
	property $command : str
	property $index
	
	$index = $str.search(<ACTION_COMMAND>)
	
	if( $index != -1 )
	{
		$command = $str.mid($index)
	}
	
	return ($command)
}

//---------------------------------------------------------------------------
// 文字列からアクションコマンドを削除する
//---------------------------------------------------------------------------
command $$chop_action_command(property $str : str) : str
{
	property $index

	$index = $str.search(<ACTION_COMMAND>)

	if( $index != -1 )
	{
		$str = $str.left($index)
	}

	return ($str)
}

//---------------------------------------------------------------------------
// アクションコマンドからアクションを実行する
//---------------------------------------------------------------------------
command $$execute_action_command(property $obj : object, property $command : str)
{
	property $i
	property $commands : strlist
	property $split_index
	
	// 指定されているアクションコマンドの数を計算する
	$split_index = $command.search_last(<ACTION_COMMAND>)
	
	// コマンドが一つも指定されていないので終了
	if( $split_index == -1 ) {
		return
	}
	
	while( $split_index != 0 )
	{
		$commands.resize($commands.get_size + 1)
		$commands[$commands.get_size - 1] = $command.left($split_index)
		$command = $command.mid($split_index, $command.cnt - 1)
		$split_index = $command.search_last(<ACTION_COMMAND>)
	}
	$commands.resize($commands.get_size + 1)
	$commands[$commands.get_size - 1] = $command
	
	// 実行中のフレームアクションを停止する
	for( $i = 0, $i < $obj.frame_action_ch.get_size, $i += 1 )
	{
		$obj.frame_action_ch[$i].end
	}
	
	// 指定されているコマンドの数だけフレームアクションを確保する
	$obj.frame_action_ch.resize($commands.get_size)
	
	// それぞれのアクションを実行する
	for( $i = 0, $i < $commands.get_size, $i += 1 )
	{
		switch( $commands[$i] ) {
		case(@0a)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0a")
		case(@0b)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0b")
		case(@0c)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0c")
		case(@0d)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0d")
		case(@0e)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0e")
		case(@0f)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0f")
		case(@0g)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0g")
		case(@0h)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0h")
		case(@0i)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0i")
		case(@0j)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0j")
		case(@0k)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0k")
		case(@0l)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0l")
		case(@0m)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0m")
		case(@0n)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0n")
		case(@0o)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0o")
		case(@0p)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0p")
		case(@0q)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0q")
		case(@0r)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0r")
		case(@0s)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0s")
		case(@0t)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0t")
		case(@0u)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0u")
		case(@0v)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0v")
		case(@0w)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0w")
		case(@0x)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0x")
		case(@0y)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0y")
		case(@0z)		$obj.frame_action_ch[$i].start(-1, "$$action_command_0z")
			
		case(@l1)		$obj.frame_action_ch[$i].start(-1, "$$action_command_l1")
		case(@l2)		$obj.frame_action_ch[$i].start(-1, "$$action_command_l2")
		case(@l3)		$obj.frame_action_ch[$i].start(-1, "$$action_command_l3")
		case(@r1)		$obj.frame_action_ch[$i].start(-1, "$$action_command_r1")
		case(@r2)		$obj.frame_action_ch[$i].start(-1, "$$action_command_r2")
		case(@r3)		$obj.frame_action_ch[$i].start(-1, "$$action_command_r3")
		case(@u1)		$obj.frame_action_ch[$i].start(-1, "$$action_command_u1")
		case(@u2)		$obj.frame_action_ch[$i].start(-1, "$$action_command_u2")
		case(@u3)		$obj.frame_action_ch[$i].start(-1, "$$action_command_u3")
		case(@d1)		$obj.frame_action_ch[$i].start(-1, "$$action_command_d1")
		case(@d2)		$obj.frame_action_ch[$i].start(-1, "$$action_command_d2")
		case(@d3)		$obj.frame_action_ch[$i].start(-1, "$$action_command_d3")
			
		default
			// 上記以外のアクションコマンドの場合はアプリケーションで設定するアクションコマンドを実行する
			$$set_action_command_default($obj, $command, $i)
		}
	}
}

// "0a" うんと小さく頷く
command $$action_command_0a(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 200, 30, 2], [200, 400, 0, 0])
}

// "0b" うんうんと頷く（２回）
command $$action_command_0b(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 150, 30, 2], [150, 300, 0, 0], [300, 450, 30, 2], [450, 600, 0, 0])
}

// "0c" お辞儀をする
command $$action_command_0c(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 400, 50, 2], [400, 800, 0, 0])
}

// "0d" えっと短くジャンプ
command $$action_command_0d(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 150, -40, 2], [150, 300, 0, 0])
}

// "0e" やったーっと短くジャンプ（２回）
command $$action_command_0e(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 100, -20, 2], [100, 200, 0, 0], [200, 300, -20, 2], [300, 400, 0, 0])
}

// "0f" いやと首を振る
command $$action_command_0f(property $fa : frameaction, property $obj : object)
{
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 200, 20, 2], [200, 400, 0, 0], [400, 600, -20, 2], [600, 800, 0, 0])
}

// "0g" いやいやと首を早く振る
command $$action_command_0g(property $fa : frameaction, property $obj : object)
{
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 50, 15, 2], [50, 100, 0, 0], [100, 150, -15, 2], [150, 200, 0, 0], [200, 250, 15, 2], [250, 300, 0, 0], [300, 350, -15, 2], [350, 400, 0, 0])
}

// "0h" びくっと動揺する
command $$action_command_0h(property $fa : frameaction, property $obj : object)
{
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 30,  10, 0], [30, 60, 5, 0], [60, 90, -10, 0], [90, 120,  -5, 0], [120, 150,  0, 0], [150, 180, 0, 0])
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 30, -10, 0], [30, 60, 0, 0], [60, 90,  10, 0], [90, 120, -10, 0], [120, 150, 10, 0], [150, 180, 0, 0])
}

// "0i" ぶるるっと悪寒がする
command $$action_command_0i(property $fa : frameaction, property $obj : object)
{
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 30, -15, 1], [30, 60, 0, 2], [60, 90, 15, 1], [90, 120, 0, 2], [120, 150, -5, 1], [150, 180, 0, 2], [180, 210, 5, 1], [210, 240, 0, 2])
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 0, [0, 120, -20, 2], [120, 240, 0, 2])
}

// "0j" がくぶると動揺する（ループ）
command $$action_command_0j(property $fa : frameaction, property $obj : object)
{
	L[0] = $fa.counter.get % 180
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable(L[0], 0, 0, [0, 30,  4, 0], [30, 60, 2, 0], [60, 90, -4, 0], [90, 120, -2, 0], [120, 150, 0, 0], [150, 180, 0, 0])
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable(L[0], 0, 0, [0, 30, -4, 0], [30, 60, 0, 0], [60, 90,  4, 0], [90, 120, -4, 0], [120, 150, 4, 0], [150, 180, 0, 0])
}

// "0k" 疲れ果ててふらふらする（ループ）
command $$action_command_0k(property $fa : frameaction, property $obj : object)
{
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get % 3100, 0, 0, [0, 750, 30, 2], [800, 1550, 0, 1], [1550, 2300, -30, 2], [2350, 3100, 0, 1])
}

// "0l" はーはーと息を切らす（ループ）
command $$action_command_0l(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get % 2300, 0, 0, [0, 750, 15, 2], [800, 1800, 0, 2])
}

// "0m" うーんとつま先立ちするように（ループ）
command $$action_command_0m(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get % 3300, 0, 0, [0, 900, -15, 2], [1800, 2800, 0, 2])
}

// "0n" 空中で浮いているように（ループ）
command $$action_command_0n(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get % 4000, 0, 0, [0, 1000, 10, 2], [1000, 2000, 0, 1], [2000, 3000, -10, 2], [3000, 4000, 0, 1])
}

// "0o" ぴょんぴょんと飛び跳ねる（ループ）
command $$action_command_0o(property $fa : frameaction, property $obj : object)
{
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get % 500, 0, 0, [0, 250, -30, 2], [250, 500, 0, 1])
}

// "0p" ふらふらと崩れ落ちる
command $$action_command_0p(property $fa : frameaction, property $obj : object)
{
	$obj.x_rep[<ACTION_REP_INDEX_ACTION>]  = math.timetable($fa.counter.get, 0, 0, [0, 400, 30, 2], [400, 800, 0, 1], [800, 1200, -30, 2], [1200, 1600, 0, 1])
	$obj.y_rep[<ACTION_REP_INDEX_ACTION>]  = math.timetable($fa.counter.get, 0, 0, [0, 1600, 200, 0])
	$obj.tr_rep[<ACTION_REP_INDEX_ACTION>] = math.timetable($fa.counter.get, 0, 255, [0, 1600, 0, 1])
}

// "0q" 確保のみ ※未実装
command $$action_command_0q(property $fa : frameaction, property $obj : object)
{
}

// "0r" 確保のみ ※未実装
command $$action_command_0r(property $fa : frameaction, property $obj : object)
{
}

// "0s" 確保のみ ※未実装
command $$action_command_0s(property $fa : frameaction, property $obj : object)
{
}

// "0t" 確保のみ ※未実装
command $$action_command_0t(property $fa : frameaction, property $obj : object)
{
}

// "0u" 確保のみ ※未実装
command $$action_command_0u(property $fa : frameaction, property $obj : object)
{
}

// "0v" 確保のみ ※未実装
command $$action_command_0v(property $fa : frameaction, property $obj : object)
{
}

// "0w" 確保のみ ※未実装
command $$action_command_0w(property $fa : frameaction, property $obj : object)
{
}

// "0x" 確保のみ ※未実装
command $$action_command_0x(property $fa : frameaction, property $obj : object)
{
}

// "0y" 確保のみ ※未実装
command $$action_command_0y(property $fa : frameaction, property $obj : object)
{
}

// "0z" アクション停止
command $$action_command_0z(property $fa : frameaction, property $obj : object)
{
	property $i
	property $len
	
	$len = $obj.frame_action_ch.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.frame_action_ch[$i].end
	}
}

// "l1" スライドイン／アウト左（低速）
command $$action_command_l1(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, -100, 0, 1000, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, -100, 1000, 0, 2)
	}
	
	$fa.end
}

// "l2" スライドイン／アウト左（中速）
command $$action_command_l2(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, -200, 0, 800, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, -200, 800, 0, 2)
	}
	
	$fa.end
}

// "l3" スライドイン／アウト左（高速）
command $$action_command_l3(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, -700, 0, 500, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, -700, 500, 0, 2)
	}
	
	$fa.end
}

// "r1" スライドイン／アウト右（低速）
command $$action_command_r1(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 100, 0, 1000, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, 100, 1000, 0, 2)
	}
	
	$fa.end
}

// "r2" スライドイン／アウト右（中速）
command $$action_command_r2(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 200, 0, 800, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, 200, 800, 0, 2)
	}
	
	$fa.end
}

// "r3" スライドイン／アウト右（高速）
command $$action_command_r3(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 700, 0, 500, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_x_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, 700, 500, 0, 2)
	}
	
	$fa.end
}

// "u1" スライドイン／アウト上（低速）
command $$action_command_u1(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, -100, 0, 1000, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, -100, 1000, 0, 2)
	}
	
	$fa.end
}

// "u2" スライドイン／アウト上（中速）
command $$action_command_u2(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, -200, 0, 800, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, -200, 800, 0, 2)
	}
	
	$fa.end
}

// "u3" スライドイン／アウト上（高速）
command $$action_command_u3(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, -700, 0, 500, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, -700, 500, 0, 2)
	}
	
	$fa.end
}

// "d1" スライドイン／アウト下（低速）
command $$action_command_d1(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 100, 0, 1000, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, 100, 1000, 0, 2)
	}
	
	$fa.end
}

// "d2" スライドイン／アウト下（中速）
command $$action_command_d2(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 200, 0, 800, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, 200, 800, 0, 2)
	}
	
	$fa.end
}

// "d3" スライドイン／アウト下（高速）
command $$action_command_d3(property $fa : frameaction, property $obj : object)
{
	if( $obj.wipe_copy )
	{
		// スライドイン
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 700, 0, 500, 0, 2)
	}
	else
	{
		// スライドアウト
		$$set_pos_y_rep_eve($obj, <ACTION_REP_INDEX_SLIDE>, 0, 700, 500, 0, 2)
	}
	
	$fa.end
}
