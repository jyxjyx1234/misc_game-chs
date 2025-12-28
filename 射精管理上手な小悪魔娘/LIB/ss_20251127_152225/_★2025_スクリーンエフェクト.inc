//---------------------------
//スクリーンエフェクト

/*
    キャラを含めた背景を暗転させるなど
    画面エフェクト簡略版。
*/

#MACRO @screen_black_in(@ch(0),@time(500))
    screen.effect[@ch].init
    screen.effect[@ch].begin_order = <order_normal>
    screen.effect[@ch].end_order = <order_chr>
    screen.effect[@ch].dark_eve.set(128,@time,0,2)
    screen.effect[@ch].dark_eve.wait

#MACRO @screen_black_out(@ch(0),@time(500))
    screen.effect[@ch].dark_eve.set(0,@time,0,2)
    screen.effect[@ch].dark_eve.wait


