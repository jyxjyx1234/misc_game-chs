//===========================================================================
//!
//!    @file     __lib_effect_weather.ss
//!    @brief    環境エフェクト制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// 子供環境オブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_child_weather_object(property $obj : object, property $filename : str, property $child_num)
{
	property $i
	
	// オブジェクトを初期化する
	$obj.init
	
	// 子供オブジェクトを作成する
	$$set_child_object($obj, $child_num)
	
	// 子供オブジェクトに指定したファイルを読み込む
	for( $i = 0, $i < $child_num, $i += 1 )
	{
		$obj.child[$i].create_weather($filename, 1)
	}
	
	// ワイプコピーフラグをオンにする
	$obj.wipe_copy = 1
}

//---------------------------------------------------------------------------
// 雪エフェクト(平面)を作成する
//---------------------------------------------------------------------------
command $$create_snow_weatherA_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_snow, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_snow, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 20
	case(@量_普通)		$amount = 40
	case(@量_多い)		$amount = 75
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 12000
						$speed_interep = 2
	case(@速度_普通)	$speed = 8000
						$speed_interep = 5
	case(@速度_速い)	$speed = 2000
						$speed_interep = 70
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 100000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_bg.child[0].tr = 224
	$obj_bg.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 5000,
		sin_power_x = 5,
		scale_x = 500,
		scale_y = 500
	)
	$obj_bg.child[1].tr = 196
	$obj_bg.child[1].set_weather_param_type_A(
		cnt = $amount - $amount / 4,
		move_time_x = $direction2,
		move_time_y = $speed - $speed / 6,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 5000,
		sin_power_x = 5,
		scale_x = 350,
		scale_y = 350
	)
	$obj_bg.child[2].tr = 128
	$obj_bg.child[2].set_weather_param_type_A(
		cnt = $amount / 4,
		move_time_x = $direction1 / 4,
		move_time_y = $speed - $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[0].tr = 160
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 850,
		scale_y = 850
	)
	$obj_screen.child[1].tr = 128
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].tr = 128
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction1 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[3].tr = 48
	$obj_screen.child[3].set_weather_param_type_A(
		cnt = $amount / 18,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2500,
		scale_y = 2500
	)
	$obj_screen.child[4].tr = 80
	$obj_screen.child[4].set_weather_param_type_A(
		cnt = $amount / 18,
		move_time_x = $direction2 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2150,
		scale_y = 2150
	)
	$obj_screen.child[5].tr = 96
	$obj_screen.child[5].set_weather_param_type_A(
		cnt = $amount / 18,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 1800,
		scale_y = 1800
	)
}

//---------------------------------------------------------------------------
// 雪エフェクト(見上げる)を作成する
//---------------------------------------------------------------------------
command $$create_snow_weatherB_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed)
{
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_snow, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_snow, 0)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 20
	case(@量_普通)		$amount = 50
	case(@量_多い)		$amount = 80
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 7000
	case(@速度_普通)	$speed = 4500
	case(@速度_速い)	$speed = 2000
	}
	
	$obj_bg.child[0].tr = 224
	$obj_bg.child[0].set_weather_param_type_B(
		cnt = $amount,
		pat_mode = 0,
		pat_no_1 = 0,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 80,
		move_time = $speed,
		sin_time_x = 3000,
		sin_power_x = 5,
		zoom_min = 250,
		zoom_max = 500
		)
	$obj_bg.child[1].set_weather_param_type_B(
		cnt = $amount / 2,
		pat_mode = 0,
		pat_no_1 = 1,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 70,
		move_time = $speed - $speed / 14,
		sin_time_x = 3000,
		sin_power_x = 10,
		zoom_min = 250,
		zoom_max = 1000
		)
	$obj_bg.child[2].tr = 160
	$obj_bg.child[2].set_weather_param_type_B(
		cnt = $amount / 3,
		pat_mode = 0,
		pat_no_1 = 2,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 60,
		move_time = $speed - $speed / 7,
		sin_time_x = 4000,
		sin_power_x = 10,
		center_rotate = 10,
		zoom_min = 350,
		zoom_max = 650
		)
}

//---------------------------------------------------------------------------
// 雪エフェクト(印象的)を作成する
//---------------------------------------------------------------------------
command $$create_snow_weatherC_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_snow, 0)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_snow, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 6
	case(@量_普通)		$amount = 12
	case(@量_多い)		$amount = 18
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 8000
						$speed_interep = 2
	case(@速度_普通)	$speed = 5000
						$speed_interep = 5
	case(@速度_速い)	$speed = 2000
						$speed_interep = 70
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 25000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_screen.child[0].tr_eve.turn(0, 196, 2000, 0, 0)
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[1].tr_eve.turn(0, 128, 2000, 500, 0)
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction2 / 2 * 3,
		move_time_y = $speed - $speed / 8,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].tr_eve.turn(0, 96, 2000, 1000, 0)
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1 - $direction1 / 5,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2500,
		scale_y = 2500
	)
}

//---------------------------------------------------------------------------
// 雨エフェクト(平面)を作成する
//---------------------------------------------------------------------------
command $$create_rain_weatherA_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	property $rotate
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_rain, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_rain, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 20
	case(@量_普通)		$amount = 40
	case(@量_多い)		$amount = 80
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 900
						$speed_interep = 2
						$rotate = 2
	case(@速度_普通)	$speed = 800
						$speed_interep = 5
						$rotate = 5
	case(@速度_速い)	$speed = 650
						$speed_interep = 70
						$rotate = 50
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 100000
							$direction2 = $direction1 * -1
							$rotate = 0
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
							$rotate *= -10
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
							$rotate *= 10
	}
	
	$obj_bg.child[0].rotate_z = $rotate
	$obj_bg.child[1].rotate_z = $rotate
	$obj_bg.child[2].rotate_z = $rotate
	$obj_screen.child[0].rotate_z = $rotate
	$obj_screen.child[1].rotate_z = $rotate
	$obj_screen.child[2].rotate_z = $rotate
	$obj_screen.child[3].rotate_z = $rotate
	$obj_screen.child[4].rotate_z = $rotate
	$obj_screen.child[5].rotate_z = $rotate
	
	$obj_bg.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 500,
		scale_y = 500
	)
	$obj_bg.child[1].set_weather_param_type_A(
		cnt = $amount - $amount / 4,
		move_time_x = $direction2,
		move_time_y = $speed - $speed / 6,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 350,
		scale_y = 350
	)
	$obj_bg.child[2].tr = 196
	$obj_bg.child[2].set_weather_param_type_A(
		cnt = $amount / 2,
		move_time_x = $direction1 / 4,
		move_time_y = $speed - $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount / 3,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 850,
		scale_y = 850
	)
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 3,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount / 3,
		move_time_x = $direction1 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[3].tr = 64
	$obj_screen.child[3].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 2500,
		scale_y = 2500
	)
	$obj_screen.child[4].tr = 96
	$obj_screen.child[4].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction2 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 2150,
		scale_y = 2150
	)
	$obj_screen.child[5].tr = 128
	$obj_screen.child[5].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 1800,
		scale_y = 1800
	)
}

//---------------------------------------------------------------------------
// 雨エフェクト(見上げる)を作成する
//---------------------------------------------------------------------------
command $$create_rain_weatherB_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed)
{
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_rain, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_rain, 0)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 20
	case(@量_普通)		$amount = 50
	case(@量_多い)		$amount = 100
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 900
	case(@速度_普通)	$speed = 800
	case(@速度_速い)	$speed = 700
	}
	
	$obj_bg.child[0].set_weather_param_type_B(
		cnt = $amount,
		pat_mode = 0,
		pat_no_1 = 3,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 40,
		move_time = $speed,
		sin_time_x = 0,
		sin_power_x = 0,
		zoom_min = 250,
		zoom_max = 500
		)
	$obj_bg.child[1].set_weather_param_type_B(
		cnt = $amount / 2,
		pat_mode = 0,
		pat_no_1 = 3,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 30,
		move_time = $speed - $speed / 14,
		sin_time_x = 0,
		sin_power_x = 0,
		zoom_min = 250,
		zoom_max = 1000
		)
	$obj_bg.child[2].tr = 160
	$obj_bg.child[2].set_weather_param_type_B(
		cnt = $amount / 3,
		pat_mode = 0,
		pat_no_1 = 3,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 20,
		move_time = $speed - $speed / 7,
		sin_time_x = 0,
		sin_power_x = 0,
		zoom_min = 350,
		zoom_max = 650
		)
}

//---------------------------------------------------------------------------
// 雨エフェクト(印象的)を作成する
//---------------------------------------------------------------------------
command $$create_rain_weatherC_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	property $rotate
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_rain, 0)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_rain, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 5
	case(@量_普通)		$amount = 10
	case(@量_多い)		$amount = 20
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 700
						$speed_interep = 2
						$rotate = 2
	case(@速度_普通)	$speed = 600
						$speed_interep = 5
						$rotate = 5
	case(@速度_速い)	$speed = 500
						$speed_interep = 70
						$rotate = 50
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 100000
							$direction2 = $direction1 * -1
							$rotate = 0
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
							$rotate *= -10
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
							$rotate *= 10
	}
	
	$obj_screen.child[0].rotate_z = $rotate
	$obj_screen.child[1].rotate_z = $rotate
	$obj_screen.child[2].rotate_z = $rotate
	
	$obj_screen.child[0].tr_eve.turn(64, 96, 2000, 0, 0)
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 1250,
		scale_y = 1250
	)
	$obj_screen.child[1].tr_eve.turn(32, 96, 2000, 500, 0)
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction2 / 2,
		move_time_y = $speed - $speed / 8,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 2500,
		scale_y = 2500
	)
	$obj_screen.child[2].tr_eve.turn(0, 64, 2000, 1000, 0)
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1 / 4,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 0,
		sin_power_x = 0,
		scale_x = 3500,
		scale_y = 3500
	)
}

//---------------------------------------------------------------------------
// 塵エフェクト(平面)を作成する
//---------------------------------------------------------------------------
command $$create_dust_weatherA_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_dust, 4)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_dust, 2)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 15
	case(@量_普通)		$amount = 30
	case(@量_多い)		$amount = 50
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = -9000
						$speed_interep = 5
	case(@速度_普通)	$speed = -8000
						$speed_interep = 5
	case(@速度_速い)	$speed = -7000
						$speed_interep = 10
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 30000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 30000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -30000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_bg.child[0].tr = 128
	$obj_bg.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 4000,
		sin_power_x = 15,
		scale_x = 450,
		scale_y = 450
	)
	$obj_bg.child[1].set_weather_param_type_A(
		cnt = $amount / 2,
		move_time_x = $direction2,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 4000,
		sin_power_x = 5,
		scale_x = 1000,
		scale_y = 1000
	)
	$obj_bg.child[2].tr = 192
	$obj_bg.child[2].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction1 / 2,
		move_time_y = $speed / 4,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 1000,
		sin_power_x = 15,
		scale_x = 1350,
		scale_y = 1350
	)
	$obj_bg.child[3].tr = 192
	$obj_bg.child[3].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction2 / 2,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 1000,
		sin_power_x = 10,
		scale_x = 1250,
		scale_y = 1250
	)
	$obj_screen.child[0].tr = 128
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount / 8,
		move_time_x = $direction1 / 3,
		move_time_y = $speed / 5,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 1500,
		sin_power_x = 8,
		scale_x = 1800,
		scale_y = 1800
	)
	$obj_screen.child[1].tr = 64
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction2 / 3,
		move_time_y = $speed / 6,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 1000,
		sin_power_x = 5,
		scale_x = 5000,
		scale_y = 5000
	)
}

//---------------------------------------------------------------------------
// 塵エフェクト(印象的)を作成する
//---------------------------------------------------------------------------
command $$create_dust_weatherC_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_dust, 0)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_dust, 3)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 5
	case(@量_普通)		$amount = 10
	case(@量_多い)		$amount = 15
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = -8000
						$speed_interep = 5
	case(@速度_普通)	$speed = -7000
						$speed_interep = 5
	case(@速度_速い)	$speed = -6000
						$speed_interep = 10
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 30000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 30000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -30000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction2 / 2 * 3,
		move_time_y = $speed - $speed / 8,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].tr_eve.turn(128, 196, 2000, 1000, 0)
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1 - $direction1 / 5,
		move_time_y = $speed / 4,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 3500,
		scale_y = 3500
	)
}

//---------------------------------------------------------------------------
// 火の粉エフェクト(平面)を作成する
//---------------------------------------------------------------------------
command $$create_fire_spark_weatherA_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_fire_spark, 4)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_fire_spark, 2)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 15
	case(@量_普通)		$amount = 40
	case(@量_多い)		$amount = 80
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = -7000
						$speed_interep = 2
	case(@速度_普通)	$speed = -4000
						$speed_interep = 10
	case(@速度_速い)	$speed = -2000
						$speed_interep = 20
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 30000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 30000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -30000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_bg.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 4000,
		sin_power_x = 15,
		scale_x = 650,
		scale_y = 650
	)
	$obj_bg.child[1].set_weather_param_type_A(
		cnt = $amount / 2,
		move_time_x = $direction2,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 4000,
		sin_power_x = 10,
		scale_x = 1000,
		scale_y = 1000
	)
	$obj_bg.child[2].tr = 192
	$obj_bg.child[2].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 4,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 1000,
		sin_power_x = 30,
		scale_x = 1350,
		scale_y = 1350
	)
	$obj_bg.child[3].tr = 192
	$obj_bg.child[3].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction2 / 5,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 1000,
		sin_power_x = 20,
		scale_x = 1250,
		scale_y = 1250
	)
	$obj_screen.child[0].tr = 128
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount / 8,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 5,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 1500,
		sin_power_x = 8,
		scale_x = 2800,
		scale_y = 2800
	)
	$obj_screen.child[1].tr = 64
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction2 / 5,
		move_time_y = $speed / 6,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 1000,
		sin_power_x = 10,
		scale_x = 5000,
		scale_y = 5000
	)
}

//---------------------------------------------------------------------------
// 火の粉エフェクト(印象的)を作成する
//---------------------------------------------------------------------------
command $$create_fire_spark_weatherC_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_fire_spark, 0)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_fire_spark, 3)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 6
	case(@量_普通)		$amount = 12
	case(@量_多い)		$amount = 18
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = -8000
						$speed_interep = 2
	case(@速度_普通)	$speed = -5000
						$speed_interep = 5
	case(@速度_速い)	$speed = -2000
						$speed_interep = 70
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 25000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_screen.child[0].bright_eve.turn(0, 16, 3000, 0, 0)
	$obj_screen.child[0].tr_eve.turn(96, 196, 2000, 0, 0)
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[1].bright_eve.turn(0, 32, 1500, 0, 0)
	$obj_screen.child[1].tr_eve.turn(64, 160, 2000, 500, 0)
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction2 / 2 * 3,
		move_time_y = $speed - $speed / 8,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].bright_eve.turn(0, 64, 4000, 1000, 0)
	$obj_screen.child[2].tr_eve.turn(32, 128, 2000, 1000, 0)
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1 - $direction1 / 5,
		move_time_y = $speed / 4,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 3500,
		scale_y = 3500
	)
}

//---------------------------------------------------------------------------
// 光の玉エフェクト(平面)を作成する
//---------------------------------------------------------------------------
command $$create_light_ball_weatherA_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_light_ball, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_light_ball, 5)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 10
	case(@量_普通)		$amount = 20
	case(@量_多い)		$amount = 40
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = -15000
						$speed_interep = 2
	case(@速度_普通)	$speed = -12000
						$speed_interep = 5
	case(@速度_速い)	$speed = -9000
						$speed_interep = 70
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 100000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_bg.child[0].bright = 128
	$obj_bg.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 3,
		sin_time_x = 5000,
		sin_power_x = 5,
		scale_x = 50,
		scale_y = 50
	)
	$obj_bg.child[1].bright = 64
	$obj_bg.child[1].set_weather_param_type_A(
		cnt = $amount - $amount / 4,
		move_time_x = $direction2,
		move_time_y = $speed - $speed / 5,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 5000,
		sin_power_x = 5,
		scale_x = 100,
		scale_y = 100
	)
	$obj_bg.child[2].bright_eve.turn(96, 255, 1500, 0, 0)
	$obj_bg.child[2].tr_eve.turn(192, 255, 3000, 0, 0)
	$obj_bg.child[2].set_weather_param_type_A(
		cnt = $amount / 4,
		move_time_x = $direction1 / 4,
		move_time_y = $speed - $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 250,
		scale_y = 250
	)
	$obj_screen.child[0].bright = 160
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 4,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 500,
		scale_y = 500
	)
	$obj_screen.child[1].bright = 192
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction1 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 550,
		scale_y = 550
	)
	$obj_screen.child[2].bright = 192
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount / 10,
		move_time_x = $direction1 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[3].bright = 255
	$obj_screen.child[3].set_weather_param_type_A(
		cnt = $amount / 20,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 3,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 850,
		scale_y = 850
	)
	$obj_screen.child[4].bright = 255
	$obj_screen.child[4].set_weather_param_type_A(
		cnt = $amount / 20,
		move_time_x = $direction2 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 1500,
		scale_y = 1500
	)
}

//---------------------------------------------------------------------------
// 光の玉エフェクト(見上げる)を作成する
//---------------------------------------------------------------------------
command $$create_light_ball_weatherB_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed)
{
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_light_ball, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_light_ball, 0)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 20
	case(@量_普通)		$amount = 50
	case(@量_多い)		$amount = 80
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 7000
	case(@速度_普通)	$speed = 4500
	case(@速度_速い)	$speed = 2000
	}
	
	$obj_bg.child[0].tr = 224
	$obj_bg.child[0].set_weather_param_type_B(
		cnt = $amount,
		pat_mode = 0,
		pat_no_1 = 0,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 80,
		move_time = $speed,
		sin_time_x = 3000,
		sin_power_x = 5,
		zoom_min = 250,
		zoom_max = 500
		)
	$obj_bg.child[1].set_weather_param_type_B(
		cnt = $amount / 2,
		pat_mode = 0,
		pat_no_1 = 1,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 70,
		move_time = $speed - $speed / 14,
		sin_time_x = 3000,
		sin_power_x = 10,
		zoom_min = 250,
		zoom_max = 1000
		)
	$obj_bg.child[2].tr = 160
	$obj_bg.child[2].set_weather_param_type_B(
		cnt = $amount / 3,
		pat_mode = 0,
		pat_no_1 = 2,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 60,
		move_time = $speed - $speed / 7,
		sin_time_x = 4000,
		sin_power_x = 10,
		center_rotate = 10,
		zoom_min = 350,
		zoom_max = 650
		)
}

//---------------------------------------------------------------------------
// 光の玉エフェクト(印象的)を作成する
//---------------------------------------------------------------------------
command $$create_light_ball_weatherC_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_light_ball, 0)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_light_ball, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 5
	case(@量_普通)		$amount = 10
	case(@量_多い)		$amount = 15
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = -15000
						$speed_interep = 2
	case(@速度_普通)	$speed = -12000
						$speed_interep = 5
	case(@速度_速い)	$speed = -9000
						$speed_interep = 70
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 25000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_screen.child[0].bright = 64
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 350,
		scale_y = 350
	)
	$obj_screen.child[1].bright = 128
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 2,
		move_time_x = $direction2 / 2 * 3,
		move_time_y = $speed - $speed / 8,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 700,
		scale_y = 700
	)
	$obj_screen.child[2].bright = 192
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount / 3,
		move_time_x = $direction1 - $direction1 / 5,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 1250,
		scale_y = 1250
	)
}

//---------------------------------------------------------------------------
// 桜エフェクト(平面)を作成する
//---------------------------------------------------------------------------
command $$create_sakura_weatherA_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_sakura, 3)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_sakura, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 20
	case(@量_普通)		$amount = 40
	case(@量_多い)		$amount = 75
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 12000
						$speed_interep = 2
	case(@速度_普通)	$speed = 8000
						$speed_interep = 5
	case(@速度_速い)	$speed = 2000
						$speed_interep = 30
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 100000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_bg.child[0].tr = 224
	$obj_bg.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 5000,
		sin_power_x = 10,
		scale_x = 500,
		scale_y = 500
	)
	$obj_bg.child[1].tr = 224
	$obj_bg.child[1].set_weather_param_type_A(
		cnt = $amount - $amount / 4,
		move_time_x = $direction2,
		move_time_y = $speed - $speed / 6,
		pat_mode = 0,
		pat_no_1 = 3,
		sin_time_x = 5000,
		sin_power_x = 10,
		scale_x = 350,
		scale_y = 350
	)
	$obj_bg.child[2].tr = 192
	$obj_bg.child[2].set_weather_param_type_A(
		cnt = $amount / 4,
		move_time_x = $direction1 / 4,
		move_time_y = $speed - $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 30,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[0].tr = 192
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 3,
		sin_time_x = 3500,
		sin_power_x =15,
		scale_x = 850,
		scale_y = 850
	)
	$obj_screen.child[1].tr = 160
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction2 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 3500,
		sin_power_x = 15,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].tr = 128
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount / 12,
		move_time_x = $direction1 / 3,
		move_time_y = $speed - $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 15,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[3].tr = 160
	$obj_screen.child[3].set_weather_param_type_A(
		cnt = $amount / 18,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2500,
		scale_y = 2500
	)
	$obj_screen.child[4].tr = 128
	$obj_screen.child[4].set_weather_param_type_A(
		cnt = $amount / 18,
		move_time_x = $direction2 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 3,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2150,
		scale_y = 2150
	)
	$obj_screen.child[5].tr = 160
	$obj_screen.child[5].set_weather_param_type_A(
		cnt = $amount / 18,
		move_time_x = $direction1 / 5,
		move_time_y = $speed / 3,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 1800,
		scale_y = 1800
	)
}

//---------------------------------------------------------------------------
// 桜エフェクト(見上げる)を作成する
//---------------------------------------------------------------------------
command $$create_sakura_weatherB_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed)
{
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_sakura, 4)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_sakura, 0)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 15
	case(@量_普通)		$amount = 30
	case(@量_多い)		$amount = 45
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 9000
	case(@速度_普通)	$speed = 7000
	case(@速度_速い)	$speed = 5000
	}
	
	$obj_bg.child[0].tr = 224
	$obj_bg.child[0].set_weather_param_type_B(
		cnt = $amount / 2,
		pat_mode = 0,
		pat_no_1 = 3,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 80,
		move_time = $speed,
		sin_time_x = 3000,
		sin_power_x = 15,
		center_rotate = 600,
		zoom_min = 250,
		zoom_max = 500
		)
	$obj_bg.child[1].set_weather_param_type_B(
		cnt = $amount / 2,
		pat_mode = 0,
		pat_no_1 = 1,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 70,
		move_time = $speed - $speed / 14,
		sin_time_x = 3000,
		sin_power_x = 20,
		center_rotate = 300,
		zoom_min = 250,
		zoom_max = 1250
		)
	$obj_bg.child[2].tr = 160
	$obj_bg.child[2].set_weather_param_type_B(
		cnt = $amount / 3,
		pat_mode = 0,
		pat_no_1 = 2,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 60,
		move_time = $speed - $speed / 7,
		sin_time_x = 4000,
		sin_power_x = 15,
		center_rotate = 400,
		center_rotate = 10,
		zoom_min = 350,
		zoom_max = 1000
		)
	$obj_bg.child[3].set_weather_param_type_B(
		cnt = $amount / 2,
		pat_mode = 0,
		pat_no_1 = 0,
		center_x = <SCREEN_CENTER_X>,
		center_y = <SCREEN_CENTER_Y>,
		appear_range = 70,
		move_time = $speed,
		sin_time_x = 3000,
		sin_power_x = 10,
		center_rotate = 600,
		zoom_min = 350,
		zoom_max = 950
		)
}

//---------------------------------------------------------------------------
// 桜エフェクト(印象的)を作成する
//---------------------------------------------------------------------------
command $$create_sakura_weatherC_object(property $obj_bg : object, property $obj_screen : object, property $amount, property $speed, property $direction)
{
	property $direction1
	property $direction2
	property $speed_interep
	
	// 背景と立ち絵の間に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_bg, ef_sakura, 0)
	$obj_bg.layer = <LAYER_BG_FILTER>
	
	// 立ち絵の上に表示されるオブジェクトを作成する
	$$create_child_weather_object($obj_screen, ef_sakura, 6)
	$obj_screen.layer = <LAYER_ALL_FILTER> - 1
	
	switch( $amount ) {
	case(@量_少ない)	$amount = 6
	case(@量_普通)		$amount = 12
	case(@量_多い)		$amount = 18
	}
	
	switch( $speed ) {
	case(@速度_遅い)	$speed = 8000
						$speed_interep = 2
	case(@速度_普通)	$speed = 5000
						$speed_interep = 15
	case(@速度_速い)	$speed = 2000
						$speed_interep = 70
	}
	
	switch( $direction ) {
	case(@方向_中心から)	$direction1 = 25000
							$direction2 = $direction1 * -1
	case(@方向_左から)		$direction1 = 50000 / $speed_interep
							$direction2 = $direction1
	case(@方向_右から)		$direction1 = -50000 / $speed_interep
							$direction2 = $direction1
	}
	
	$obj_screen.child[0].tr_eve.turn(64, 196, 2000, 0, 0)
	$obj_screen.child[0].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction1,
		move_time_y = $speed,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 750,
		scale_y = 750
	)
	$obj_screen.child[1].tr_eve.turn(32, 128, 2000, 500, 0)
	$obj_screen.child[1].set_weather_param_type_A(
		cnt = $amount,
		move_time_x = $direction2 / 2 * 3,
		move_time_y = $speed - $speed / 8,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 800,
		scale_y = 800
	)
	$obj_screen.child[2].tr_eve.turn(64, 160, 2000, 1000, 0)
	$obj_screen.child[2].set_weather_param_type_A(
		cnt = $amount / 2,
		move_time_x = $direction1 - $direction1 / 5,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2000,
		scale_y = 2000
	)
	$obj_screen.child[3].tr_eve.turn(32, 128, 2000, 1000, 0)
	$obj_screen.child[3].set_weather_param_type_A(
		cnt = $amount / 2,
		move_time_x = $direction1 - $direction1 / 5,
		move_time_y = $speed / 2,
		pat_mode = 0,
		pat_no_1 = 3,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 2500,
		scale_y = 2500
	)
}

