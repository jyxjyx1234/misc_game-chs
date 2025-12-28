//----------------------------------------
//トランジション

/*------

	画像を使った画面ワイプの制作。
	
	inとoutはトランジションのINとOUTだけの動作。
	IN中に立ち絵を立たせたい時とかに仕様する。
	
	このとき、かならずINとOUTはワンセットにすること。
	OUTしないと@BGでも消えないので注意
	

	★★注意★★
	
	この命令は
	
	syscom.set_syscom_menu_enable
	syscom.set_msg_back_enable_flag(1)
	syscom.set_save_enable_flag(1)

	に影響するので注意。
	outで解除されてしまうので、システムメニューなどでは使い所に気をつける


	★2024.08.01 引数 $system_flag追加
	
	これがON(1)のときは、endのときに syscom.set.syscom_menu などをいじらない
	基本的に各種モード用、いまのところ _outにのみ影響



------*/

#COMMAND	$transition(int,str,int,int)		//patno,bgname,waittime
#PROPERTY	$trans_in_flag


#MACRO	@transition_01(@BgName,@time(2000)) $transition(1,@BgName,@time,0)	//少時間経過		//妹サキュバスではデフォ1000、以降は2000
#MACRO	@transition_01_in  $transition(10,"",0,0)
#MACRO	@transition_01_out(@time(1000),@system_flag(0)) $transition(11,"",@time,@system_flag)

#MACRO	@transition_02(@BgName,@time(2000)) $transition(2,@BgName,@time,0)	//時間経過			//妹サキュバスではデフォ1000、以降は2000
#MACRO	@transition_02_in  $transition(20,"",0,0)
#MACRO	@transition_02_out(@time(1000),@system_flag(0)) $transition(21,"",@time,@system_flag)


#MACRO	@transition_03(@BgName,@time(1000)) $transition(3,@BgName,@time,0)	//場面転換
#MACRO	@transition_03_in  $transition(30,"",0,0)
#MACRO	@transition_03_out(@time(1000),@system_flag(0)) $transition(31,"",@time,@system_flag)

#MACRO	@transition_04(@BgName,@time(1000)) $transition(4,@BgName,@time,0)	//場面転換2
#MACRO	@transition_04_in  $transition(40,"",0,0)
#MACRO	@transition_04_out(@time(1000),@system_flag(0)) $transition(41,"",@time,@system_flag)



#MACRO	@transition_05(@BgName,@time(1000)) $transition(5,@BgName,@time,0)	//場面転換3（幕間用）
#MACRO	@transition_05_in  $transition(50,"",0,0)
#MACRO	@transition_05_out(@time(1000),@system_flag(0)) $transition(51,"",@time,@system_flag)




