//===========================================================================
//!
//!    @file     __lib_particle.ss
//!    @brief    パーティクル制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     __va_effect_ss_cmd_particle.ssを元に調整
//!
//===========================================================================

#inc_start
	
	// 親
	#define		f_child_max				f[0]		// 子オブジェクトの最大数
	#define		f_loop					f[1]		// ループフラグ
	#define		f_duration				f[2]		// 継続時間
	#define		f_duration_free			f[3]		// 継続時間を経過すると解放するか
	#define		f_mode					f[4]		// パーティクルの動き方[0=／1=／2=／]
	#define		f_auto_tr				f[5]		// 自動で不透明度を下げるか
	#define		f_auto_scale			f[6]		// 自動で縮小していくか
	#define		f_auto_rotate			f[7]		// 自動で回転するか
	#replace	<PARENT_F_FLAG_MAX>		  8			// 確保するfフラグ最大数
	
	// 子
	#define		f_lifetime				f[0]		// 消滅するまでの時間
	#define		f_scale_x				f[1]		// 拡大率(x)
	#define		f_scale_y				f[2]		// 拡大率(y)
	#define		f_rotate_begin			f[3]		// 開始時の角度(z)
	#define		f_rotate_end			f[4]		// 終了時の角度(z)
	#define		f_outer_x				f[5]		// 外力(x)
	#define		f_outer_y				f[6]		// 外力(y)
	#define		f_delay_time			f[7]		// ディレイ時間
	// 子 mode = 0(直線)
	#define		f_dir_x					f[8]		// 進行方向(x)
	#define		f_dir_y					f[9]		// 進行方向(y)
	// 子 mode = 1(円状)／2(放射状)／3(円周上)
	#define		f_direction				f[8]		// 向き(1=右回り／-1=左回り)
	#define		f_velocity				f[9]		// 回転の速さ
	#define		f_radius				f[10]		// 半径
	
	#replace	<CHILD_F_FLAG_MAX>		 11			// 確保するfフラグ最大数
	
#inc_end

#z00

//---------------------------------------------------------------------------
// パーティクル(直線)を作成する
//---------------------------------------------------------------------------
command $$create_particle(property $obj : object, property $filename : str, property $child_max, property $adjust_center,
						  property $lifetime_min, property $lifetime_max,
						  property $dir_x_min, property $dir_x_max, property $dir_y_min, property $dir_y_max)
{
	property $i
	
	$$create_particle_core($obj, $filename, 0, $child_max, $adjust_center, $lifetime_min, $lifetime_max)
	
	for( $i = 0, $i < $obj.f_child_max, $i += 1 )
	{
		// 進行方向
		$obj.child[$i].f_dir_x = math.rand($dir_x_min, $dir_x_max)
		$obj.child[$i].f_dir_y = math.rand($dir_y_min, $dir_y_max)
	}
}

//---------------------------------------------------------------------------
// パーティクル(円状)を作成する
//---------------------------------------------------------------------------
command $$create_particle_vortex(property $obj : object, property $filename : str, property $child_max, property $adjust_center,
								 property $lifetime_min, property $lifetime_max,
								 property $direction, property $velocity_min, property $velocity_max, property $radius_min, property $radius_max)
{
	property $i
	
	$$create_particle_core($obj, $filename, 1, $child_max, $adjust_center, $lifetime_min, $lifetime_max)
	
	for( $i = 0, $i < $obj.f_child_max, $i += 1 )
	{
		// 向き
		$obj.child[$i].f_direction = $direction
		// 速さ
		$obj.child[$i].f_velocity = math.rand($velocity_min, $velocity_max)
		// 半径
		$obj.child[$i].f_radius = math.rand($radius_min, $radius_max)
	}
}

//---------------------------------------------------------------------------
// パーティクル(放射状)を作成する
//---------------------------------------------------------------------------
command $$create_particle_radial(property $obj : object, property $filename : str, property $child_max, property $adjust_center,
								 property $lifetime_min, property $lifetime_max,
								 property $velocity_min, property $velocity_max)
{
	property $i
	
	$$create_particle_core($obj, $filename, 2, $child_max, $adjust_center, $lifetime_min, $lifetime_max)
	
	for( $i = 0, $i < $obj.f_child_max, $i += 1 )
	{
		// 速さ
		$obj.child[$i].f_velocity = math.rand($velocity_min, $velocity_max)
	}
}

//---------------------------------------------------------------------------
// パーティクル(円周上)を作成する
//---------------------------------------------------------------------------
command $$create_particle_circle(property $obj : object, property $filename : str, property $child_max, property $adjust_center,
								 property $lifetime_min, property $lifetime_max,
								 property $direction, property $velocity_min, property $velocity_max, property $radius_min, property $radius_max)
{
	property $i
	
	$$create_particle_core($obj, $filename, 3, $child_max, $adjust_center, $lifetime_min, $lifetime_max)
	
	for( $i = 0, $i < $obj.f_child_max, $i += 1 )
	{
		// 向き
		$obj.child[$i].f_direction = $direction
		// 速さ
		$obj.child[$i].f_velocity = math.rand($velocity_min, $velocity_max)
		// 半径
		$obj.child[$i].f_radius = math.rand($radius_min, $radius_max)
	}
}

//---------------------------------------------------------------------------
// パーティクル(共通)を作成する
//---------------------------------------------------------------------------
command $$create_particle_core(property $obj : object, property $filename : str, property $mode, property $child_max, property $adjust_center,
							   property $lifetime_min, property $lifetime_max)
{
	property $i
	property $image_size_x
	property $image_size_y
	
	$obj.init
	
	$obj.f.resize(<PARENT_F_FLAG_MAX>)
	$obj.f_child_max = $child_max
	$obj.f_loop = 1
	$obj.f_duration = -1
	$obj.f_mode = $mode
	$obj.f_auto_tr = 1
	$obj.f_auto_scale = 1
	$obj.f_auto_rotate = 0
	
	$obj.disp = 1
	$obj.child.resize($child_max)
	
	for( $i = 0, $i < $child_max, $i += 1 )
	{
		$obj.child[$i].create($filename, 1)
		$obj.child[$i].x_rep.resize(1)
		$obj.child[$i].y_rep.resize(1)
		
		// 中心補正
		if( $adjust_center )
		{
			// 画像サイズが読み込まれていない場合は設定する
			if( $image_size_x == 0 ) { $image_size_x = $obj.child[$i].get_size_x / 2 }
			if( $image_size_y == 0 ) { $image_size_y = $obj.child[$i].get_size_y / 2 }
			
			// 画像の中心に中心座標を設定する
			$obj.child[$i].center_x = $image_size_x
			$obj.child[$i].center_y = $image_size_y
		}
		
		$obj.child[$i].f.resize(<CHILD_F_FLAG_MAX>)
		
		// 拡大率
		$obj.child[$i].f_scale_x = 1000
		$obj.child[$i].f_scale_y = 1000
		
		// 消滅するまでの時間
		$obj.child[$i].f_lifetime = math.rand($lifetime_min, $lifetime_max)
	}
}

//---------------------------------------------------------------------------
// パーティクルフレームアクションを実行する
//---------------------------------------------------------------------------
command $$fa_particle(property $fa : frameaction, property $obj : object)
{
	property $i
	property $len
	property $time
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		// ディレイ時間
		if( $obj.child[$i].f_delay_time < $fa.counter.get ) {
			$obj.child[$i].disp = 1
		} else {
			$obj.child[$i].disp = 0
			continue
		}
		
		// ループ
		if( $obj.f_loop ) {
			$time = ($fa.counter.get - $obj.child[$i].f_delay_time) % $obj.child[$i].f_lifetime
		} else {
			$time = $fa.counter.get - $obj.child[$i].f_delay_time
		}
		
		switch( $obj.f_mode ) {
		
		// 直線
		case(0)
			$obj.child[$i].x = $obj.child[$i].f_dir_x * $time / 10
			$obj.child[$i].y = $obj.child[$i].f_dir_y * $time / 10
			
		// 円状
		case(1)
			$obj.child[$i].x = math.cos($time * $obj.child[$i].f_velocity / 100 * $obj.child[$i].f_direction, $obj.child[$i].f_radius)
			$obj.child[$i].y = math.sin($time * $obj.child[$i].f_velocity / 100 * $obj.child[$i].f_direction, $obj.child[$i].f_radius)
			
		// 放射状
		case(2)
			$obj.child[$i].f_direction = math.sqrt($obj.child[$i].x_rep[0] * $obj.child[$i].x_rep[0] + $obj.child[$i].y_rep[0] * $obj.child[$i].y_rep[0], 100)
			if( $obj.child[$i].f_direction != 0 ) {
				$obj.child[$i].x = $time * $obj.child[$i].x_rep[0] * $obj.child[$i].f_velocity / $obj.child[$i].f_direction
				$obj.child[$i].y = $time * $obj.child[$i].y_rep[0] * $obj.child[$i].f_velocity / $obj.child[$i].f_direction
			}
		// 円周上
		case(3)
			$obj.child[$i].x = math.cos($time * $obj.child[$i].f_velocity / 100 * $obj.child[$i].f_direction, $obj.child[$i].f_radius) - $obj.child[$i].x_rep[0]
			$obj.child[$i].y = math.sin($time * $obj.child[$i].f_velocity / 100 * $obj.child[$i].f_direction, $obj.child[$i].f_radius) - $obj.child[$i].y_rep[0]
		}
		
		// 外力
		$obj.child[$i].x += $obj.child[$i].f_outer_x * $time * $time / 20000
		$obj.child[$i].y += $obj.child[$i].f_outer_y * $time * $time / 20000
		
		// 座標補正
		$obj.child[$i].x /= 10
		$obj.child[$i].y /= 10
		
		// 自動不透明度
		if( $obj.f_auto_tr ) {
			$obj.child[$i].tr = math.timetable($time, 0, 255, [0, $obj.child[$i].f_lifetime, 0])
		}
		
		// 自動縮小
		if( $obj.f_auto_scale ) {
			$obj.child[$i].scale_x = math.timetable($time, 0, $obj.child[$i].f_scale_x, [0, $obj.child[$i].f_lifetime, 0])
			$obj.child[$i].scale_y = math.timetable($time, 0, $obj.child[$i].f_scale_y, [0, $obj.child[$i].f_lifetime, 0])
		}
		
		// 自動回転
		if( $obj.f_auto_rotate ) {
			$obj.child[$i].rotate_z = math.timetable($time, 0, $obj.child[$i].f_rotate_begin, [0, $obj.child[$i].f_lifetime, $obj.child[$i].f_rotate_end])
		}
	}
	
	// 継続時間
	if( $obj.f_duration != -1 )
	{
		if( $obj.f_duration < $fa.counter.get )
		{
			if( $obj.f_duration_free ) {
				$obj.init
			}
			
			// 継続時間を経過したのでフレームアクションを終了する
			$fa.end
		}
	}
}

//---------------------------------------------------------------------------
// パーティクル発生範囲を点に設定する
//---------------------------------------------------------------------------
command $$set_particle_shape_to_point(property $obj : object, property $pos_x, property $pos_y)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].x_rep[0] = $pos_x
		$obj.child[$i].y_rep[0] = $pos_y
	}
}

//---------------------------------------------------------------------------
// パーティクル発生範囲を矩形に設定する
//---------------------------------------------------------------------------
command $$set_particle_shape_to_box(property $obj : object, property $rect_l, property $rect_r, property $rect_t, property $rect_b)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].x_rep[0] = math.rand($rect_l, $rect_r)
		$obj.child[$i].y_rep[0] = math.rand($rect_t, $rect_b)
	}
}

//---------------------------------------------------------------------------
// パーティクル発生範囲を円に設定する
//---------------------------------------------------------------------------
command $$set_particle_shape_to_circle(property $obj : object, property $radius)
{
	property $i
	property $len
	property $degree
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$degree = math.rand(0, 3600)
		
		$obj.child[$i].x_rep[0] = math.cos($degree, $radius)
		$obj.child[$i].y_rep[0] = math.sin($degree, $radius)
	}
}

//---------------------------------------------------------------------------
// パーティクルをワンショットにする
//---------------------------------------------------------------------------
command $$set_particle_oneshot(property $obj : object)
{
	$obj.f_loop = 0
}

//---------------------------------------------------------------------------
// パーティクルの継続時間を設定する
//---------------------------------------------------------------------------
command $$set_particle_duration(property $obj : object, property $duration, property $free)
{
	$obj.f_duration = $duration
	$obj.f_duration_free = $free
}

//---------------------------------------------------------------------------
// 自動不透明度アニメーションを設定する
//---------------------------------------------------------------------------
command $$set_particle_auto_tr(property $obj : object, property $flag)
{
	$obj.f_auto_tr = $flag
}

//---------------------------------------------------------------------------
// 自動縮小アニメーションを設定する
//---------------------------------------------------------------------------
command $$set_particle_auto_scale(property $obj : object, property $flag)
{
	$obj.f_auto_scale = $flag
}

//---------------------------------------------------------------------------
// パターン番号を設定する
//---------------------------------------------------------------------------
command $$set_particle_patno(property $obj : object, property $pat_min, property $pat_max)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].patno = math.rand($pat_min, $pat_max)
	}
}

//---------------------------------------------------------------------------
// 拡縮率を設定する
//---------------------------------------------------------------------------
command $$set_particle_scale(property $obj : object, property $aspect_ratio, property $scale_x_min, property $scale_x_max, property $scale_y_min, property $scale_y_max)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		if( $aspect_ratio )
		{
			$obj.child[$i].f_scale_x = math.rand($scale_x_min, $scale_x_max)
			$obj.child[$i].f_scale_y = $obj.child[$i].f_scale_x
		}
		else
		{
			$obj.child[$i].f_scale_x = math.rand($scale_x_min, $scale_x_max)
			$obj.child[$i].f_scale_y = math.rand($scale_y_min, $scale_y_max)
		}
		
		// 拡大率
		$obj.child[$i].scale_x = $obj.child[$i].f_scale_x
		$obj.child[$i].scale_y = $obj.child[$i].f_scale_y
	}
}

//---------------------------------------------------------------------------
// 回転角を設定する
//---------------------------------------------------------------------------
command $$set_particle_rotate(property $obj : object, property $fix_angle, property $rotate_begin_min, property $rotate_begin_max, property $rotate_end_min, property $rotate_end_max)
{
	property $i
	property $len
	
	$obj.f_auto_rotate = 1
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		if( $fix_angle )
		{
			$obj.child[$i].f_rotate_begin = math.rand($rotate_begin_min, $rotate_begin_max)
			$obj.child[$i].f_rotate_end = $obj.child[$i].f_rotate_begin
		}
		else
		{
			$obj.child[$i].f_rotate_begin = math.rand($rotate_begin_min, $rotate_begin_max)
			$obj.child[$i].f_rotate_end = math.rand($rotate_end_min, $rotate_end_max)
		}
		
		// 回転角
		$obj.child[$i].rotate_z = $obj.child[$i].f_rotate_begin
	}
}

//---------------------------------------------------------------------------
// ディレイ(開始)時間を設定する
//---------------------------------------------------------------------------
command $$set_particle_delay(property $obj : object, property $delay_time_min, property $delay_time_max)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].f_delay_time = math.rand($delay_time_min, $delay_time_max)
	}
}

//---------------------------------------------------------------------------
// 外力を設定する
//---------------------------------------------------------------------------
command $$set_particle_outside_force(property $obj : object, property $outer_x_min, property $outer_x_max, property $outer_y_min, property $outer_y_max)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].f_outer_x = math.rand($outer_x_min, $outer_x_max)
		$obj.child[$i].f_outer_y = math.rand($outer_y_min, $outer_y_max)
	}
}

//---------------------------------------------------------------------------
// 色を設定する
//---------------------------------------------------------------------------
command $$set_particle_color(property $obj : object, property $color_code_min : str, property $color_code_max : str, property $color_rate)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].color_r = math.rand($$color_code_to_r($color_code_min), $$color_code_to_r($color_code_max))
		$obj.child[$i].color_g = math.rand($$color_code_to_g($color_code_min), $$color_code_to_g($color_code_max))
		$obj.child[$i].color_b = math.rand($$color_code_to_b($color_code_min), $$color_code_to_b($color_code_max))
		$obj.child[$i].color_rate = $color_rate
	}
}

//---------------------------------------------------------------------------
// 色味を設定する
//---------------------------------------------------------------------------
command $$set_particle_color_add(property $obj : object, property $color_code_min : str, property $color_code_max : str)
{
	property $i
	property $len
	
	$len = $obj.f_child_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.child[$i].color_add_r = math.rand($$color_code_to_r($color_code_min), $$color_code_to_r($color_code_max))
		$obj.child[$i].color_add_g = math.rand($$color_code_to_g($color_code_min), $$color_code_to_g($color_code_max))
		$obj.child[$i].color_add_b = math.rand($$color_code_to_b($color_code_min), $$color_code_to_b($color_code_max))
	}
}
