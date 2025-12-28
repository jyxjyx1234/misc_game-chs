//-------------------------
//場所・日付の表示

#COMMAND    $tag_place(str)
#COMMAND    $tag__time(str)
#COMMAND    $tag_chapter(int,str) 
//-------------------------
//アイキャッチ

#command    $eyecatch(str,str,int,int,str,int,str)


//--------------------------
//ムービーオブジェクト

#MACRO  @back_omv_omoide
            back.object[1].create_movie_loop(mov02,1,0,0)
            back.object[1].set_scale(1500,1500)
            back.object[1].tr = 40

//----------------------------
//キャラボリュームバランス設定
/*
    音声収録後、最初に確認すること
*/

#MACRO	@chr_volume_init
            syscom.set_charakoe_volume(1, 225)
            syscom.set_charakoe_volume(2, 255)
            //syscom.set_charakoe_volume(3, 255)
            syscom.set_charakoe_volume(4, 255)
            syscom.set_charakoe_volume(5, 255)
            syscom.set_charakoe_volume(6, 255)
            syscom.set_charakoe_volume(7, 255)

//-------------------------
//スタッフロール

#command $staffroll(int)


