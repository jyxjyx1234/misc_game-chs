


//-----------------------------
//汎用

;>>★★システムボイス（すべて独立）

;>>★ブランドロゴ（普通な感じと、元気な感じで）

#define @jur_sv_hamham01 exKOE(012600007,001) //【珠理奈★】はむはむソフト
#define @jur_sv_hamham02 exKOE(012600008,001) //【珠理奈★】はむはむソフト
#define @kas_sv_hamham01 exKOE(012600009,002) //【香住★】はむはむソフト
#define @kas_sv_hamham02 exKOE(012600010,002) //【香住★】はむはむソフト


;>>★タイトル（普通に明るい感じで）

#define @jur_sv_title exKOE(012600014,001)//【珠理奈★】射精管理（そくばく）上手な小悪魔娘♪
#define @kas_sv_title exKOE(012600016,002)//【香住★】射精管理（そくばく）上手な小悪魔娘♪


;>>★ゲームスタート

#define @jur_sv_start exKOE(012600020,001)//【珠理奈★】あ～あ、始まっちゃうねぇ～アニキ？ｖ
#define @kas_sv_start exKOE(012600022,002)//【香住★】先生、しっかりしてくださいね？


;>>★ゲームスタート（２回め以降、あるいはロード）

#define @jur_sv_load exKOE(012600026,001)//【珠理奈★】あらあら～、アタシにドハマリしちゃった～？ｖ
#define @kas_sv_load exKOE(012600028,002)//【香住★】先生、授業よりセックスですか…？


;>>★★システムを開いたとき

#define @jur_sv_sys exKOE(012600032,001)//【珠理奈★】ちゃんと調整しときなさいよ？
#define @kas_sv_sys exKOE(012600034,002)//【香住★】本番前の準備は大切ですｖ


;>>★ゲーム終了

#define @jur_sv_end exKOE(012600038,001)//【珠理奈★】すぐに戻ってくるよねぇ？お兄ちゃんｖ
#define @kas_sv_end exKOE(012600040,002)//【香住★】先生が戻るまで、しっかり準備しておきますねｖ


;>>★音声音量確認（マイクテスト）

#define @jur_sv_voice exKOE(012600044,001)//【珠理奈★】あ～あ～あ～…、マイク音量テステス。
#define @kas_sv_voice exKOE(012600046,002)//【香住★】あ～あ～あ～…、これくらいでどうでしょう？






//------------------------------
//システム

/*

;>>★ＨＡＭｕｎｉｔｙのシステム
;>>プラットフォーム起動時のタイトルコール
;>>１つ目が一般向けのかわいい感じ、２つ目がＲ－１８向けの淫靡なお姉さんの感じで
#define @voice_hamunity01 exkoe(020100025,007)//【システム】「ＨＡＭｕｎｉｔｙ（ハミュニティ）！」

#define @voice_hamunity02 exkoe(020100027,007)//【システム】「ＨＡＭｕｎｉｔｙ（ハミュニティ）ｖ」


;>>★美姫が言うシステムあれこれ過（それぞれ独立）


;>>配信開始前の気合をいれる時
#define @voice_start01 exkoe(020100034,001)//【美姫★】「行くよ、お兄ちゃん…！」

#define @voice_start02 exkoe(020100036,001)//【美姫★】「緊張するけど…がんばらなきゃ！」


;>>配信開始時のオープニングコール２種
#define @voice_opening01 exkoe(020100040,001)//【美姫★】「配信、はっじまっるよ～！」

#define @voice_opening02 exkoe(020100042,001)//【美姫★】「エッチないもうと、お届けで～す！」


;>>配信終了時のエンディングコール２種
#define @voice_ending01 exkoe(020100046,001)//【美姫★】「チャンネル登録おねがいしま～す！　無断切り抜きはダメですよ？」

#define @voice_ending02 exkoe(020100048,001)//【美姫★】「チャンネル登録、メンバー登録お願いします！　チャマネもねっｖ」

;>>メン限ピロートーク開始コール２種
#define @voice_pillow01 exkoe(020100051,001)//【美姫★】「メンバー限定のお時間ですよ～♪」

#define @voice_pillow02 exkoe(020100053,001)//【美姫★】「ミキシコ隊メンバーのみなさん、いらっしゃいｖ」


;>>メンバー登録時のボイス
#define @voice_member01 EXKOE(030000014,001)//【美姫★★】「メンバーシップ、参加してくれてありがとうｖ　ちゅきｖ」

;>>メンバーから抜けるときのボイス
#define @voice_member02 EXKOE(030000017,001)//【美姫★★】「ええ～…、なんでメンバー抜けちゃうの～？（涙）」





;>>時間経過
#define @voice_time01 exkoe(020100057,001)//【美姫★】「少し時間が経ちまして～」

#define @voice_time02 exkoe(020100059,001)//【美姫★】「そして、次の日っ」

#define @voice_time03 exkoe(020100061,001)//【美姫★】「気づくと、夜になりまして～」

#define @voice_time04 exkoe(020100063,001)//【美姫★】「どうやら、朝でございます～」

#define @voice_time05 exkoe(020100065,001)//【美姫★】「そして、いくつかの季節が巡り…」


//時間経過マクロ

#MACRO  @time_cutin_dayslater
            back.object[0].create(mki_time_cut01,1,0,0,0)
            wipe(0,0)
            pcmch[0].play(pcm_time01)
            @voice_time01 koe_wait_key @timewait(500) pcmch[0].stop

#MACRO  @time_cutin_dayslater_livestart
            back.object[0].create(mki_time_cut01,1,0,0,0)
            wipe(0,0)
            pcmch[0].play(pcm_time06)
            @voice_start01 koe_wait_key @timewait(500) pcmch[0].stop

#MACRO  @time_cutin_dayslater_livestart2
            back.object[0].create(mki_time_cut01,1,0,0,0)
            wipe(0,0)
            pcmch[0].play(pcm_time06)
            @voice_start02 koe_wait_key @timewait(500) pcmch[0].stop



#MACRO  @time_cutin_littletime
            back.object[0].create(mki_time_cut01,1,0,0,1)
            wipe(0,0)
            pcmch[0].play(pcm_time03)
            @voice_time01 koe_wait_key @timewait(500)  pcmch[0].stop

#MACRO  @time_cutin_nextday
            back.object[0].create(mki_time_cut01,1,0,0,2)
            wipe(0,0)
            pcmch[0].play(pcm_time02)
            @voice_time02 koe_wait_key @timewait(500)  pcmch[0].stop

#MACRO  @time_cutin_tonight
            back.object[0].create(mki_time_cut01,1,0,0,3)
            wipe(0,0)
            pcmch[0].play(pcm_time05)
            @voice_time03 koe_wait_key @timewait(500)  pcmch[0].stop

#MACRO  @time_cutin_tomoning
            back.object[0].create(mki_time_cut01,1,0,0,4)
            wipe(0,0)
            pcmch[0].play(pcm_time06)
            @voice_time04 koe_wait_key @timewait(500)  pcmch[0].stop

#MACRO  @time_cutin_yearpassed
            pcmch[0].play(pcm_time08)
            back.object[0].create(mki_time_cut01,1,0,0,5)
            wipe(0,1000)            
            @voice_time05 koe_wait_key @timewait(500)  pcmch[0].stop(3000)


*/

