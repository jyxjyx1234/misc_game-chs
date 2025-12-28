#Z00

goto #Z70


//---------------------------------------
//omvテスト


@BG(BG00_AA)

@CHR(bst_jur1A_000,22,<nowipe>)
@CHR(bst_kas1A_000,23)

@kwt


@chr_tansaku(jur)

front.object[$chr_tansaku_hit_objno].child[19].create_movie(ham_ef01_warai,0,0,0,ready_only = 1)
front.object[$chr_tansaku_hit_objno].child[19].set_scale(1600,1600)
front.object[$chr_tansaku_hit_objno].child[19].x_rep.resize(2)
front.object[$chr_tansaku_hit_objno].child[19].x_rep[0] = -640

front.object[$chr_tansaku_hit_objno].child[19].y_rep.resize(2)
front.object[$chr_tansaku_hit_objno].child[19].y_rep[0] = -2000

front.object[$chr_tansaku_hit_objno].child[19].rotate_X = 1800

front.object[$chr_tansaku_hit_objno].child[19].disp = 1
front.object[$chr_tansaku_hit_objno].child[19].resume_movie



音なし@kwt

$chr_emote(jur,1,0,0,0) @kwt
$chr_emote(jur,2,0,0,0) @kwt
$chr_emote(jur,3,0,0,0) @kwt
$chr_emote(jur,4,0,0,0) @kwt
$chr_emote(jur,5,0,0,0) @kwt
$chr_emote(jur,6,0,0,0) @kwt
$chr_emote(jur,7,0,0,0) @kwt
$chr_emote(jur,8,0,0,0) @kwt
$chr_emote(jur,9,0,0,0) @kwt
$chr_emote(jur,10,0,0,0) @kwt
$chr_emote(jur,11,0,0,0) @kwt
$chr_emote(jur,12,0,0,0) @kwt
$chr_emote(jur,13,0,0,0) @kwt
$chr_emote(jur,14,0,0,0) @kwt
$chr_emote(jur,15,0,0,0) @kwt

音あり@kwt

$chr_emote(jur,1,1,0,0) @kwt
$chr_emote(jur,2,1,0,0) @kwt
$chr_emote(jur,3,1,0,0) @kwt
$chr_emote(jur,4,1,0,0) @kwt
$chr_emote(jur,5,1,0,0) @kwt
$chr_emote(jur,6,1,0,0) @kwt
$chr_emote(jur,7,1,0,0) @kwt
$chr_emote(jur,8,1,0,0) @kwt
$chr_emote(jur,9,1,0,0) @kwt
$chr_emote(jur,10,1,0,0) @kwt
$chr_emote(jur,11,1,0,0) @kwt
$chr_emote(jur,12,1,0,0) @kwt
$chr_emote(jur,13,1,0,0) @kwt
$chr_emote(jur,14,1,0,0) @kwt
$chr_emote(jur,15,1,0,0) @kwt

$chr_emote(kas,1,1,0,0) @kwt
$chr_emote(kas,2,1,0,0) @kwt
$chr_emote(kas,3,1,0,0) @kwt
$chr_emote(kas,4,1,0,0) @kwt
$chr_emote(kas,5,1,0,0) @kwt
$chr_emote(kas,6,1,0,0) @kwt
$chr_emote(kas,7,1,0,0) @kwt
$chr_emote(kas,8,1,0,0) @kwt
$chr_emote(kas,9,1,0,0) @kwt
$chr_emote(kas,10,1,0,0) @kwt
$chr_emote(kas,11,1,0,0) @kwt
$chr_emote(kas,12,1,0,0) @kwt
$chr_emote(kas,13,1,0,0) @kwt
$chr_emote(kas,14,1,0,0) @kwt
$chr_emote(kas,15,1,0,0) @kwt

マクロ版@kwt

@jur_w(1) @kwt        
@jur_ikari(1) @kwt    
@jur_!(1) @kwt        
@jur_idea(1) @kwt     
@jur_kizuku(1) @kwt   
@jur_kizuku2(1) @kwt  
@jur_?(1) @kwt        
@jur_tameiki(1) @kwt  
@jur_konwaku(1) @kwt  
@jur_ase(1) @kwt      
@jur_ase2(1) @kwt     
@jur_v(1) @kwt    	
@jur_moyamoya(1) @kwt 
@jur_ten(1) @kwt      
@jur_tenten(1) @kwt   

@kas_w(1) @kwt       
@kas_ikari(1) @kwt   
@kas_!(1) @kwt       
@kas_idea(1) @kwt    
@kas_kizuku(1) @kwt  
@kas_kizuku2(1) @kwt 
@kas_?(1) @kwt       
@kas_tameiki(1) @kwt 
@kas_konwaku(1) @kwt 
@kas_ase(1) @kwt     
@kas_ase2(1) @kwt    
@kas_v(1) @kwt    
@kas_moyamoya(1) @kwt
@kas_ten(1) @kwt     
@kas_tenten(1) @kwt  


//---------------------------------------
//アクション

#Z10

@BG(BG01_AA)

@CHR(bst_jur1A_000,22,<nowipe>)
@CHR(bst_kas1A_000,23)

@kwt

@jur_jump

ジャンプ @kwt

@jur_jump_d

ジャンプ @kwt

@jur_jump2

ジャンプ @kwt

@jur_jump_d2

ジャンプ @kwt

@chr_hanten(jur,3,200)

反転 @kwt


#Z11

@BG(BG11_AA)

@CHR(bst_jur1A_000,24,<nodisp>)

@CHR_IN_R(jur)
@kwt


@BG(BG11_AA)

@CHR(bst_jur1A_000,22,<nodisp>)
@CHR(bst_kas1A_000,23)


@CHR_IN_L(jur)

@kwt

@BG(BG12_AA)

@CHR(bst_kas1A_000,23,<nodisp>)
@CHR(bst_jur1A_000,22,<nodisp>)

@CHR_IN_R(jur,<nowait>)
@CHR_IN_L(kas)

@kwt

@CHR_OUT_R(jur,<nowait>)
@CHR_OUT_L(kas)

@kwt



@BG(BG12_AA)

@CHR(bst_kas1A_000,23,<nodisp>)
@CHR(bst_jur1A_000,22,<nodisp>)

@CHR_BLACK_IN(jur,<nowait>)
@CHR_BLACK_IN(kas)

あんてんのまま@kwt


@CHR(bst_kas1A_000,23,<nowipe>)
@CHR(bst_jur1A_000,22)

表示するにはもう一度 print("@CHR")を@kwt


#Z12

@BG(BG13_AA)

@CHR(bst_jur1A_000,35)
@CHR(bst_kas1A_000,36)

@kwt


@BG(BG13_AA)

@CHR(bst_kas1A_000,36,<nodisp>)
@CHR_BLACK_IN(kas,<nowait>)

$chr_init_ampli = <chr_bst_scaling_ssss>
@CHR(bst_jur1A_000,20,<nowipe>)
$chr_init_ampli = <chr_bst_scaling_ssss>
@CHR(bst_kas1A_000,24)

@ft(bst_kas1A_010)
@kwt


#Z13

@BG(BG14_AA)

モノローグをイメージ@kwt

@CHR(bst_kas1A_000,36,<nodisp>)
@CHR_ORDER(kas,<order_chr_effect>)  //オーダー変更
@CHR_BLACK_IN(kas)

@chr_monolouge_effect(40,<order_chr_sub>)

$chr_init_ampli = <chr_bst_scaling_ssss>
@CHR(bst_jur1A_000,20,<nowipe>)
$chr_init_ampli = <chr_bst_scaling_ssss>
@CHR(bst_kas1A_000,24)

@ft(bst_kas1A_010)
@kwt

#Z14


@BG(BG20_AA)

@CHR(bst_kas1A_000,23,<nowipe>)
@CHR(bst_jur1A_000,22)

@CHR_MOVE(kas,24)

移動※print("objno,layer,order")は一切変化なし@kwt

@kwt


//--------------------------
//画面効果
#Z20

@BG(BG10_AA)

@CHR(bst_kas1A_000,23,<nowipe>)
@CHR(bst_jur1A_000,22)

@screen_black_in

キャラまで暗転@kwt

@screen_black_out

キャラまで暗転戻す（かならず暗転とセットで）@kwt

@chr_order(jur,<order_chr_sub>)
@screen_black_in

キャラのオーダーを変更して暗転@kwt

@screen_black_out
@chr_order(jur,<order_chr>)



暗転戻す（かならず暗転とセットで）@kwt



//--------------------------
//MW確認
#Z30


@BG(BG30_AA)

@CHR(bst_kas1A_000,23,<nowipe>)
@CHR(bst_jur1A_000,22)

【珠理奈】メッセージウィンドウの確認用あああああああああああああああああああああああああああああああああああああああああああああああああああああああ@kwt


$tag_place(箕々崎学園・校舎)
$tag__time(正午ごろ)


タグ表示@kwt

//---------------------------------------
//アイキャッチ

#Z40

//goto #Z41

$eyecatch(bst_jur1B_0G0,bst_jur1A_X68,012300006,1,"男がそんな#D格好して#D恥ずかしくないの？",1,"chapter-")
$eyecatch(bst_jur2B_000,bst_jur2E_XX6,012300007,1,"雑魚ちんぽ#Dすぎるでしょ#Dアニキって…",4,"chapter-")
$eyecatch(bst_jur1E_0G0,bst_jur1B_X49,012300008,1,"妹に逆レされて#D今どんな気持ち？",3,"chapter-")
$eyecatch(bst_jur2E_0G0,bst_jur2A_X99,012300009,1,"『お兄ちゃん』♪#Dイヒヒ♪",3,"chapter-")
$eyecatch(bst_jur3A_0G0,bst_jur3B_XG3,012300010,1,"よく頑張ったね#Dえらいえらい♪#Dでもまだ#D出せるだろ？",1,"chapter-")
$eyecatch(bst_jur1C_0G0,bst_jur1A_XC1,012300011,1,"あと５発、#Dお射精がんばろうね♪",2,"chapter-")

$eyecatch(bst_jur1C_030,bst_jur1B_XB0,012300014,1,"なに勝手に#D射精してんだよ！",5,"chapter-")
$eyecatch(bst_jur2E_030,bst_jur2B_XE6,012300015,1,"許してください～#Dって#Dワンワン吠えろよ。",2,"chapter-")
$eyecatch(bst_jur3B_020,bst_jur3A_X26,012300016,1,"再教育が必要だわ、#Dこれは。",4,"chapter-")

$eyecatch(bst_jur1C_000,bst_jur1A_X68,012300019,1,"無駄撃ちは、#Dおしおきだって#D言ったよねぇ？",3,"chapter-")
$eyecatch(bst_jur1A_030,bst_jur1B_YZ6,012300022,1,"無駄撃ちは、#Dおしおきだって#D言ったよね…？",5,"chapter-")


#Z41

$eyecatch(bst_kas1B_004,bst_kas1A_X62,012300029,2,"それでも#D先生なんですか～？",8,"chapter-")
$eyecatch(bst_kas2B_004,bst_kas2C_XG4,012300030,2,"相変わらずの#Dヘタレっぷりですねぇ",4,"chapter-")
$eyecatch(bst_kas1C_053,bst_kas1B_X46,012300031,2,"嘘っ…！#Dもう#D出ちゃったんですか！？",6,"chapter-")
$eyecatch(bst_kas2C_025,bst_kas2A_X64,012300032,2,"今日のおちんぽ、#Dかっこよくないなぁ…",4,"chapter-")
$eyecatch(bst_kas2A_007,bst_kas2B_X18,012300033,2,"さすが、#D上っ面だけ人間♪",1,"chapter-")
$eyecatch(bst_kas1C_071,bst_kas1A_X69,012300034,2,"生徒に見下されて#Dどんな気分です？",2,"chapter-")

$eyecatch(bst_kas1C_005,bst_kas1B_XA0,012300037,2,"は？#D調子乗らないで#Dくださいよ。",5,"chapter-")
$eyecatch(bst_kas2C_025,bst_kas2B_XB0,012300038,2,"我慢が効かない#D男の人なんて#D最低です。",2,"chapter-")
$eyecatch(bst_kas2B_035,bst_kas2A_X23,012300039,2,"射精すら#D上手に#Dできないんですね。",7,"chapter-")

$eyecatch(bst_kas1C_007,bst_kas1A_X68,012300042,2,"エッチの最中も、#D勝手な射精は#DＮＧですよねぇ？",3,"chapter-")
$eyecatch(bst_kas2A_060,bst_kas2B_YZ6,012300045,2,"エッチの最中も、#D勝手な射精は#DＮＧですよね…？",5,"chapter-")


@kwt


//---------------------------------------
//回転演出

#Z50


@BGM(BGM11)

@服装_珠理奈制服

@all_white

@CHR(jurXB_031,24,<nowipe>,"","","",1200,00)

back.object[24].rotate_z = -550
back.object[24].set_scale(1300,1300)

@BG(BG37_AA,1,0)

front.object[0].x_rep[0] = 200
front.object[0].rotate_z = -550
front.object[0].set_scale(2500,2500)

@all_screen_clear(1000)

@timewait

@ftn(jurXC_010)
KOE(010200343,001)【珠理奈】「いや～なかなか大変だったよ。タイミング合わせて、みんなに動画アクセスしてもらうのは」@kwt

@ftn(jurXC_022)
KOE(010200346,001)【珠理奈】「必死に勉強したかいがあったわ～。いまやアタシが一番、部活内でこういうの上手になっちゃったし～」@kwt

@ftn(jurXA_0C8)
@jur_w
KOE(010200350,001)【珠理奈】「いやもしかしたら、学校で一番うまいかも♪　集中したときの自分が怖いわ～、この天才珠理奈ちゃん（ｖ）」@kwt

【蒼汰】「そ、それは、認めるってことだなっ。こんなことをしたのが自分だって！」@kwt

@ftn(jurXA_007)
KOE(010200355,001)【珠理奈】「はーい認めま～す。で、それからどうするの？」@kwt

【蒼汰】「俺が、この動画の子がお前だって告発する！　そうすれば……っ！」@kwt

@ftn(jurXB_036)
KOE(010200360,001)【珠理奈】「そうすれば、どうなんの？」@kwt

@ftn(jurXB_0X6,"","","A0")
KOE(010200363,001)【珠理奈】「顔も声も全部加工されてる。わかってるのはこの学校の生徒の女の子ってだけ」@kwt

@ftn(jurXC_026)
KOE(010200366,001)【珠理奈】「生徒に手をだしてセックスしてるのは確かじゃん。この状況で誰がアニキを信じるの？」@kwt

【蒼汰】「あ、あれは……、お前が勝手に……！」@kwt

@ftn(jurXB_035)
@jur_tameiki
KOE(010200372,001)【珠理奈】「だから、それをこの動画からどうやって証明するんだってば」@kwt

@ftn(jurXB_052)
KOE(010200375,001)【珠理奈】「自分の妹である古宮珠理奈が、俺のことを逆レイプした～うわぁ～ん！　って泣きわめくつもりなの？」@kwt

【蒼汰】「っ……」@kwt

@ftn(jurXA_069)
@jur_v
KOE(010200381,001)【珠理奈】「なかなかウマいでしょ？　加工。シーンの厳選も徹底的にやったからね～、誰もアタシだと思わない」@kwt

@ftn(jurXB_0X0)
KOE(010200384,001)【珠理奈】「それに、百歩譲って逆レイプだったとしても、別の動画で、実際に美鈴の名前とか声に出してシコってたのは事実だし」@kwt

@ftn(jurXA_009)
@jur_w
KOE(010200388,001)【珠理奈】「アニキが夜な夜なひとりでオナニー頑張ってるトコ、メッチャ面白かった（ｖ）　切り貼りで面白さ倍増してるだろ？」@kwt

@ftn(jurXC_018)
KOE(010200391,001)【珠理奈】「ねえねえ～、なんでちんぽ勃たなくなっちゃったの～？　もしかしてアタシのせい？　アハハハハッ（ｖ）」@kwt

……確かに、そっちはどう言い訳しようもない。@kwt

クラスメイトに、教頭先生。彼らの反応を見ても、動画はどう考えても俺にしか見えない、俺だとわかる構成になっている。@kwt

払拭するのは……、もはや不可能だ。@kwt

【蒼汰】「……なぜだ珠理奈っ、なんで……、こんなことをしたんだ……」@kwt

@jur_kizuku

@ftn(jurXB_006)
KOE(010200404,001)【珠理奈】「なんで、も何も、言ったじゃんアタシ」@kwt

@ftn(jurXB_021)
KOE(010200407,001)【珠理奈】「反抗したら、アニキのなっさけない顔が映ってる画角のトコだけ切り抜いて、ガッコ中にバラ撒く、って」@kwt

【蒼汰】「で、でも、あれからどんだけ時間が経ってると……！　全然その素振りも見せなかったくせに！」@kwt


@BGMSTOP(3000)

/*
close
@camera_work_chrsize_bb
@camera_work_bgsize_bb
@camera_work_bgsize_wait
*/

close

front.object[24].scale_x_eve.set(1200,500,0,2)
front.object[24].scale_y_eve.set(1200,500,0,2)

front.object[0].scale_x_eve.set(2400,500,0,2)
front.object[0].scale_y_eve.set(2400,500,0,2)

front.object[0].scale_y_eve.wait


【蒼汰】「……え……、まさか……」@kwt

@se_bikkuri
まさか。@kwt

まさか、まさか、まさか……！@kwt

@ftn(jurXA_018)
KOE(010200419,001)【珠理奈】「くすっ。どうやら気づいたみたいだね」@kwt

@ftn(jurXA_X68)
KOE(010200422,001)【珠理奈】「そ。このタイミングを待ってたんだよ」@kwt

@ftn(jurXC_XF9)
@jur_v
KOE(010200426,001)【珠理奈】「アニキが有頂天になった、人生最高の瞬間、どん底まで叩き落とすために…（ｖ）」@kwt

【蒼汰】「なっ……！？」@kwt




@BGM(BGM12)

/*

close
@camera_work_chrsize_bbb
@camera_work_bgsize_bbb
@camera_work_bgsize_wait

*/

close

front.object[24].scale_x_eve.set(1300,500,0,2)
front.object[24].scale_y_eve.set(1300,500,0,2)

front.object[0].scale_x_eve.set(2500,500,0,2)
front.object[0].scale_y_eve.set(2500,500,0,2)

front.object[0].scale_y_eve.wait


@ftn(jurXA_A49)
@chr_jump_xy(jur,250,40,-50)

KOE(010200433,001)【珠理奈】「アハ、アハ、アハハハッ！　そう、その顔が見たかったのっ、アニキのショックを受けた顔っ！」@kwt

@ftn(jurXB_A08)
KOE(010200436,001)【珠理奈】「自分のために取り繕ってた全てが壊れそうだとわかって、今にもおしっこチビりそうな、その情けない表情っ！」@kwt

@ftn(jurXB_A48)
KOE(010200439,001)【珠理奈】「アタシの友達の写真を使ってオナニーするような最低教師が、クソに見合う結末を迎えるのを待ってたのっ！」@kwt

@ftn(jurXA_A11)
KOE(010200442,001)【珠理奈】「ああ～……、やり遂げた。ここまで、メッチャしんどかった～！　アハハハハハハハッ！」@kwt

そうか、そういうことだったのか。@kwt

ここまで何もしてこなかったのも。興味をなくしたフリをしてたのも。俺への対応が柔らかくなっていたのも。@kwt

ＳＮＳコミュ部なんて、彼女に似合わない部活に入ったのも、毎日夜が遅かったのも。@kwt

全ては、この日のために……！@kwt

close

front.object[24].scale_x_eve.set(1200,500,0,2)
front.object[24].scale_y_eve.set(1200,500,0,2)

front.object[0].scale_x_eve.set(2400,500,0,2)
front.object[0].scale_y_eve.set(2400,500,0,2)

front.object[0].scale_y_eve.wait


@ftn(jurXC_037)
KOE(010200453,001)【珠理奈】「というわけで、女子生徒に好かれてて順風満帆だった古宮先生はここでオシマーイ」@kwt

@ftn(jurXC_0X1)
@chr_jump2_xy(jur,250,40,-50)

KOE(010200457,001)【珠理奈】「後はこの映像を、パパやママに送信すれば、アタシのヤリたかったことも全部完了～♪」@kwt

@ftn(jurXA_X28)
@jur_w
KOE(010200461,001)【珠理奈】「あっ、@ＨＡＭｕｎｉｔｙ（ハミュニティ）にアップすんのもアリか。こういうの大好きな人、いると思うしね～（ｖ）」@kwt

【蒼汰】「なっ、そ、それは、それだけは……！」@kwt

もう学校に居られないのは仕方ない。惜しいが、自分の名誉が失われるのもしょうがない。@kwt

でも、日常生活まで侵されてしまったら、もう再起できる気がしない…！@kwt

【蒼汰】「な？　珠理奈、悪かったから。それだけは止めてくれっ。なんでも、なんでもするからっ」@kwt

【蒼汰】「これから、お前の言う通りに動くから。ずっとそうしたかったんだろ？　な？　な？」@kwt

【蒼汰】「だ、だから止めて、止めてくれっ。あと何が欲しい？　お金か？　可愛い服とか？　あは、あはははっ」@kwt

@jur_tenten

@ftn(jurXA_YY5)
【珠理奈】「……」@kwt


close

front.object[24].scale_x_eve.set(1180,500,0,2)
front.object[24].scale_y_eve.set(1180,500,0,2)

front.object[0].scale_x_eve.set(2380,500,0,2)
front.object[0].scale_y_eve.set(2380,500,0,2)

front.object[0].scale_y_eve.wait


@ftn(jurXB_X36)
@jur_tameiki
KOE(010200482,001)【珠理奈】「なんか、勘違いしてるっぽいから言うんだけど」@kwt

@ftn(jurXB_XX6)
KOE(010200485,001)【珠理奈】「もうアタシ、あんたに全く興味ないんだよね」@kwt

【蒼汰】「……えっ……？」@kwt

@ftn(jurXA_026)
KOE(010200490,001)【珠理奈】「別にあんたがどうなろうと知ったことじゃない。アタシにとって、あんたが不要になったってだけ」@kwt

【蒼汰】「そ、そんなこと言って、お前だって困るだろっ、身内からそんな人間が出たなんて、世間に知れ渡ったら……！」@kwt

@ftn(jurXA_036,"","","A0")
@chr_jump_xy(jur,250,40,-50)

KOE(010200496,001)【珠理奈】「そんなん、アタシがどうにでもする。ううん、できる。自分のためなら、どんな嘘でもつける」@kwt

@ftn(jurXC_0A6)
KOE(010200499,001)【珠理奈】「うま～く、アニキだけ消せるよう立ち回る。邪魔者の排除、それだけを考えて生きてやる」@kwt

@ftn(jurXC_0X6,"","","A0")
KOE(010200502,001)【珠理奈】「アニキが｛誰だかわからない生徒の子｝とエッチした事実を使えば、家からもすぐに追い出してあげられるし」@kwt

@ftn(jurXA_008)
@jur_v
KOE(010200506,001)【珠理奈】「パパもママも、アタシが言うことは全部信じてくれるもん。いい子だからね、珠理奈ちゃんは～♪」@kwt

【蒼汰】「な、あ、う……っ！」@kwt

@ftn(jurXB_YY7)
KOE(010200511,001)【珠理奈】「あんたは、アタシが@射精管理（そくばく）する価値が無くなった人、無用の長物」@kwt

@ftn(jurXA_0B5)
@jur_w

KOE(010200516,001)【珠理奈】「というわけで、動画送信、ハイ完了～っと♪」@kwt

【蒼汰】「うあ、ぁ、ああぁぁぁぁあ～っ！？　珠理奈、お前ぇぇええぇえぇええぇ～ッッ！！」@kwt

@ftn(jurXA_A19)
KOE(010200521,001)【珠理奈】「アハッ（ｖ）　地面に這いつくばって奇声あげてるアニキ、最後に見れて良かった♪」@kwt

@ftn(jurXC_AE8)
@chr_jump_xy(jur,250,40,-50)

KOE(010200525,001) @hbgv_jur_warai1【珠理奈】「誤った選択をしたこと、ずっと後悔しながら、頑張って生きろよ？　お・兄・ちゃん（ｖ）」@kwt

【蒼汰】「う、うぁ、うぁあ……！」@kwt

close

front.object[24].scale_x_eve.set(1300,500,0,2)
front.object[24].scale_y_eve.set(1300,500,0,2)

front.object[0].scale_x_eve.set(2500,500,0,2)
front.object[0].scale_y_eve.set(2500,500,0,2)

front.object[0].scale_y_eve.wait


;>>★★「んじゃね」はぶりっ子、「クソ野郎」はドスの聞いた声で
@ftn(jurXC_XD6)
@size_bbb
KOE(010200531,001)【珠理奈】「んじゃね（ｖ）@nli　　　｛無駄撃ちクソ野郎｝」@kwt

@hbgv_jur_stop

@ftn(jurXB_YY3,"60")
KOE(010200534,001)【珠理奈】「ぺっ」@kwt




@all_black(500)
@BG(BG37_AA,1,0)
@all_screen_clear(1000)

@timewait

@kwt



//---------------------------------------
//アイキャッチ省略時チャプター


#Z60

$tag_chapter(0,"chapter-B7")
@BG(BG10_AA)

$tag_chapter(1,"chapter-B7")
@BG(BG11_AA)
@kwt



//---------------------------------------
//スタッフロール


#Z70

@BG(_black)

@kwt


$staffroll(0)



//---------------------------------------
//最後のCG

#Z80


@bgmstop(3000)
@pcm_stop(3000)
@hbg_stop_all(3000)

script.set_ctrl_skip_disable


@eventcg_base_setup(CG028)
@eventcg_start(CG028_00,1)

@pcm_camera

;>>★@eventcg_change(CG028_00,500,_)
@all_screen_clear(1000)

@timewait

@eventcg_change(CG028_01,1000,_)

@eventcg_change(CG028_02,1000,_)

@kwt

script.set_ctrl_skip_enable


