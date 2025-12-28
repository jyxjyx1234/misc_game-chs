/*
 * イベントCGエフェクト
 * 
 * 拡大や移動など。
 * CG拡縮機能が動いているときは動作しない。
 * 
 * 現状ではobject[00]に汎用フラグを用意してある前提で作ってあるため
 * イベントCG以外では利用不可。
 * 
 * if(front.object[00].f[00]!=1) {}
 */

#MACRO  @eventcg_scale(@scale(<eventcg_default_scale>),@time(500),@wait(1))

    if(front.object[00].f[00]!=1) {

        front.object[00].scale_x_eve.set(@scale,@Time,0,2)
        front.object[00].scale_y_eve.set(@scale,@Time,0,2)

        if (@wait == 1) {

            if (@クリックでイベントＣＧの演出をスキップ == 1) {front.object[00].scale_x_eve.wait_key}else{front.object[00].scale_x_eve.wait}
            front.object[00].scale_y_eve.end

        }

    }
    
#MACRO  @eventcg_pos(@pos_x(0),@pos_y(0),@time(500),@wait(1))

    if (front.object[00].scale_x > 1000) {  //拡縮されてるときだけ動作

    if(front.object[00].f[00]!=1) {

        if (@pos_x != -1) {front.object[00].x_rep_eve[01].set(-@pos_x,@Time,0,2)}
        if (@pos_y != -1) {front.object[00].y_rep_eve[01].set(-@pos_y,@Time,0,2)}

        if (@wait == 1) {

            if (@pos_x != -1) {
                if (@クリックでイベントＣＧの演出をスキップ == 1) {front.object[00].x_rep_eve[01].wait_key}else{front.object[00].x_rep_eve[01].wait}
                    front.object[00].y_rep_eve[01].end
                }

            else{

                if (@クリックでイベントＣＧの演出をスキップ == 1) {front.object[00].x_rep_eve[01].wait_key}else{front.object[00].x_rep_eve[01].wait}

            }

        }

    }
}

#MACRO  @eventcg_reset(@time(1000),@wait(1))

    @eventcg_pos(0,0,@time / 2)
    @eventcg_scale(<eventcg_default_scale>,@Time / 2)



