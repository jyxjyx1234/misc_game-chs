//----------------------------
//画面クエイク関係

#MACRO	@old_<クエイク：背景のみ>

		close

		screen.quake[0].start(1,70,1,10,<order_normal>,<order_normal>,[100,2])
		screen.quake[1].start(1,50,1,12,<order_normal>,<order_normal>,[60,1])
		screen.quake[2].start_wait(0,100,1,8,<order_normal>,<order_normal>,[30,0])
		

#MACRO	@old_<クエイク：イベントCGのみ：ウェイト無し>

		close

		screen.quake[0].start(1,50,1,4,<order_normal>,<order_normal>,[50,2])
		screen.quake[1].start(1,30,1,8,<order_normal>,<order_normal>,[30,1])
		screen.quake[2].start(0,20,1,3,<order_normal>,<order_normal>,[15,0])
		
#MACRO	@old_<クエイク：細かい振動：縦：イベントＣＧのみ>

		close
		screen.quake[0].start(1,30,1,10,<order_normal>,<order_normal>,[30,0])
		screen.quake[1].start_wait(1,11,1,15,<order_normal>,<order_normal>,[10,2])

#MACRO	@old_<クエイク：細かい振動：縦：イベントＣＧのみ：ウェイト無し>

		close
		screen.quake[0].start(1,30,1,10,<order_normal>,<order_normal>,[30,0])
		screen.quake[1].start(1,11,1,15,<order_normal>,<order_normal>,[10,2])

#MACRO	@old_<クエイク：細かい振動：横：イベントＣＧのみ>

		close
		screen.quake[0].start(1,30,1,10,<order_normal>,<order_normal>,[30,2])
		screen.quake[1].start_wait(1,11,1,15,<order_normal>,<order_normal>,[10,0])

#MACRO	@old_<クエイク：細かい振動：横：イベントＣＧのみ：ウェイト無し>

		close
		screen.quake[0].start(1,30,1,10,<order_normal>,<order_normal>,[30,2])
		screen.quake[1].start(1,11,1,15,<order_normal>,<order_normal>,[10,0])


#MACRO	@old_<クエイク：火山爆発>

		close
		
		screen.quake[0].start(1,300,1,6,[150,2])
		screen.quake[1].start_wait(1,200,1,10,[30,0])
		
#MACRO	@old_<クエイク：身体を押す>

		close

		screen.quake[0].start(1,100,1,7,[35,0])
		screen.quake[1].start_wait(1,75,1,8,[20,2])

#MACRO	@old_<クエイク：細かい振動：縦>

		close
		screen.quake[0].start(1,50,1,20,[50,0])
		screen.quake[1].start_wait(1,22,1,30,[15,2])

#MACRO	@old_<クエイク：細かい振動：縦：ウェイト無し>

		close
		screen.quake[0].start(1,50,1,20,[50,0])
		screen.quake[1].start(1,22,1,30,[15,2])


#MACRO	@old_<クエイク：細かい振動：縦：キャラのみ>

		close
		screen.quake[0].start(1,50,1,10,<order_chr>,<order_chr>,[50,0])
		screen.quake[1].start_wait(1,22,1,15,<order_chr>,<order_chr>,[15,2])


#MACRO	@old_<クエイク：細かい振動：縦：キャラのみ：ウェイト無し>

		close
		screen.quake[0].start(1,50,1,10,<order_chr>,<order_chr>,[50,0])
		screen.quake[1].start(1,22,1,15,<order_chr>,<order_chr>,[15,2])


#MACRO	@old_<クエイク：細かい振動：横>

		close
		screen.quake[0].start(1,50,1,20,[100,2])
		screen.quake[1].start_wait(1,20,1,40,[15,0])

#MACRO	@old_<クエイク：細かい振動：横：ウェイト無し>

		close
		screen.quake[0].start(1,50,1,20,[100,2])
		screen.quake[1].start(1,20,1,40,[15,0])


#MACRO	@old_<クエイク：細かい振動：横：キャラのみ：ウェイト無し>

		close
		screen.quake[0].start(1,50,1,10,<order_chr>,<order_chr>,[50,2])
		screen.quake[1].start(1,20,1,15,<order_chr>,<order_chr>,[15,0])


#MACRO	@old_<クエイク：胸ぐら掴む>

		close
		screen.quake[0].start_wait(1,50,1,10,[30,0])

#MACRO	@old_<クエイク：胸ぐら掴む：ウェイト無し>

		close
		screen.quake[0].start(1,50,1,10,[30,0])

#MACRO	@old_<クエイク：ズボン脱がす：ウェイト無し>

		close
		screen.quake[0].start(1,50,1,10,[30,2])


#MACRO	@old_<クエイク：地響き>(@power(20))
			
		close
		screen.quake[0].start(1,50,1,100,[@power,0])


#MACRO	@old_<クエイク：地響き：永続>(@power(20))

		close
		screen.quake[0].start(1,50,0,0,[@power,0])