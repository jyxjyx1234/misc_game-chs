

//---------------------------------
/* ト書き、主人公セリフ
 * 
 */

#DEFINE <togaki> if ($mikichan_sys_togaki_off == 0) {
#DEFINE </togaki> @kwt }


#DEFINE <hero> if ($mikichan_sys_hero_off == 0) {
#DEFINE </hero> @kwt }


//---------------------------------
//＠BGと似た動作で#C11画像を表示させる


#MACRO  @BGC(@filename,@patno(0))
            close
            back.object[0].create(@filename,1,959,539,@patno)
            @BG_WIPE_ONLY(0,500)

//order指定版 objnoは3を使用 デフォルトは立ち絵より前
#MACRO  @BGC_order(@filename,@patno(0),@order(<order_chrcg_front>),@time(300))
            close
            back.object[3].create(@filename,1,959,539,@patno)
            back.object[3].order = @order
            back.object[3].x_rep.resize(1)
            back.object[3].y_rep.resize(1)
            wipe(0,@time,start_order = @order,end_order = @order,key_skip = @クリックで背景の演出をスキップ)

#MACRO  @BGC_order_clear(@order(<order_chrcg_front>),@time(300))
            close
            wipe(0,@time,start_order = @order,end_order = @order,key_skip = @クリックで背景の演出をスキップ)


//---------------------------------
//背景にPC置くだけ object[2]、orderは<order_chrcg_front>)を使用、@BGの前に挿入

#MACRO  @BG_PC(@filename)
            back.object[2].create(@filename,1,0,0)
            back.object[2].order = <order_chrcg_front>





//---------------------------------
//背景(正確にはorder=1)だけwipeを使って簡易的にエフェクトを掛ける 背景そのままで @power の最大は255

#MACRO  @BG_effect_dark(@power(128),@time(500))
            back.object[1].create(_black,1,0,0)
            back.object[1].tr = @power
            back.object[1].order = 1
            wipe(0,@time,start_order = 1,end_order = 1,key_skip = @クリックで背景の演出をスキップ)

#MACRO  @BG_effect_white(@power(128),@time(500))
            back.object[1].create(_white,1,0,0)
            back.object[1].tr = @power
            back.object[1].order = 1
            wipe(0,@time,start_order = 1,end_order = 1,key_skip = @クリックで背景の演出をスキップ)

#MACRO @BG_effect_clear(@time(500))
            wipe(0,@time,start_order = 1,end_order = 1,key_skip = @クリックで背景の演出をスキップ)

