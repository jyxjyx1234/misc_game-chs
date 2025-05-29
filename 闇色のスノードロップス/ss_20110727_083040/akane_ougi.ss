// *************************************************************
// 特殊演出
// =============================================================
#inc_start

	#property	$time
	#define		@precede	250


#inc_end

#z00
g00buf[00].load(ev021a)
g00buf[01].load(ev021b)
g00buf[02].load(ev021c)
g00buf[03].load(ev021d)
g00buf[04].load(ev021e)
return

#z01
g00buf[05].load(ev021f)
g00buf[06].load(ev021g)
g00buf[07].load(ev021h)
g00buf[08].load(ev021i)
g00buf[09].load(ev021j)
return

#z02
g00buf[10].load(ev021k)
g00buf[11].load(ev021l)
g00buf[12].load(ev021m)
g00buf[13].load(ev021n)
g00buf[14].load(ev021o)
return

#z03
g00buf[15].load(ev021p)
g00buf[16].load(ev021q)
g00buf[17].load(ev021r)
g00buf[18].load(ev021s)
g00buf[19].load(ev021t)
return


#z05

//screen.quake[0].start(1, 100, 0, [10, 0])

$time = 0	//初期化
close

set_mwnd(1)

　俺が身構えていると、茜は高らかに技名を叫びながら拳を繰り出した！PAGE
counter[0].start_real

$bg(000, ev021a)
KOE(000200458,001)【茜】「必殺！

	$time = 1500	//小島流最終奥義
counter[0].wait_key($time - @precede)
screen.quake[0].start(1, 120, 0, [20, 0])
　小島流最終奥義！
front.object[0].create(ev021b, 1)

counter[0].wait_key($time - @precede / 2)
front.object[0].create(ev021c, 1)

counter[0].wait_key($time)
front.object[0].create(ev021d, 1)

	$time += 1900
counter[0].wait_key($time)
　茜二十三式改、


	$time += 2100	//迅
counter[0].wait_key($time - @precede)
pcm.play(se26)
迅
front.object[0].create(ev021e, 1)

counter[0].wait_key($time - @precede / 2)
front.object[0].create(ev021f, 1)

counter[0].wait_key($time)
front.object[0].create(ev021g, 1)

	$time += 700	//風
counter[0].wait_key($time - @precede)
pcm.play(se26)
・風
front.object[0].create(ev021h, 1)

counter[0].wait_key($time - @precede / 2)
front.object[0].create(ev021i, 1)

counter[0].wait_key($time)
front.object[0].create(ev021j, 1)

	$time += 600	//真
counter[0].wait_key($time - @precede)
pcm.play(se26)
・真
front.object[0].create(ev021k, 1)

counter[0].wait_key($time - @precede / 2)
front.object[0].create(ev021l, 1)

counter[0].wait_key($time)
front.object[0].create(ev021m, 1)

	$time += 600	//空
counter[0].wait_key($time - @precede)
pcm.play(se26)
・空
front.object[0].create(ev021n, 1)

counter[0].wait_key($time - @precede / 2)
front.object[0].create(ev021o ,1)

counter[0].wait_key($time)
front.object[0].create(ev021p, 1)

	$time += 600	//突き
counter[0].wait_key($time - @precede)
pcm.play(se27)
・突き！」
front.object[0].create(ev021q, 1)

counter[0].wait_key($time - @precede / 2)
front.object[0].create(ev021r, 1)

counter[0].wait_key($time)
front.object[0].create(ev021s, 1)
screen.quake[0].end

counter[0].check_value($time)
$bg(002, ev021t)
$bg(000, ev021s)
$bg(001, siro)

counter[0].stop


R
//screen.quake[0].end
g00buf.free_all

return


#z10

g00buf[00].load(ev022d)
g00buf[01].load(ev022c)
g00buf[02].load(ev022b)
g00buf[03].load(ev022a)

bgm.play("恐怖", 500, 500)
$time = 3600
frame_action.start($time + @precede/2*3, "$don")
front.object[01].tr_eve.set(0, 0, $time, 0, start=255)
front.object[10].create(ev022d, 1)
front.object[10].tr_eve.set(255, @precede/2, $time + 0, 0, start=0)
front.object[11].create(ev022c, 1)
front.object[11].tr_eve.set(255, @precede/2, $time + @precede/2, 0, start=0)
front.object[12].create(ev022b, 1)
front.object[12].tr_eve.set(255, @precede/2, $time + @precede/2*2, 0, start=0)
front.object[13].create(ev022a, 1)
front.object[13].tr_eve.set(255, @precede/2, $time + @precede/2*3, 0, start=0)
front.object[14].create(ev021u, 1)
front.object[14].tr_eve.set(255, @precede/2, $time + @precede/2*3+1200, 0, start=0)
KOE(000200444,001)【茜】「嬉しい…………じゃあ、いれるよ！！！」R

g00buf.free_all

return


command $don(property $fa : frameaction){
	l[0] = $fa.counter.get

	if(l[0] > $time + @precede/2*3){
		pcm.play(se24)
		screen.quake[0].start(1, 100, 0, [10, 0])
		frame_action.end
	}
}