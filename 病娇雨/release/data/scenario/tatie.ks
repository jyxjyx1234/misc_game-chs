;---------------------------------------------------------------------------------------
*start
;初期位置
;---------------------------------------------------------------------------------------
;立ち絵設定
;このゲームで登場するキャラクターを宣言
;-----------------------------------------------------------------------------------------
;エキストラ
[chara_new  name="ex" storage="chara/hasumi/01.png" jname="■■■" ]
[chara_new  name="mama" storage="chara/hasumi/01.png" jname="母亲" ]
[chara_new  name="papa" storage="chara/hasumi/01.png" jname="父亲" ]
[chara_new  name="kangosi" storage="chara/hasumi/01.png" jname="看护师" ]
[chara_new  name="sensei" storage="chara/hasumi/01.png" jname="教师" ]
[chara_new  name="isi" storage="chara/hasumi/01.png" jname="医师" ]
[chara_new  name="seito" storage="chara/hasumi/01.png" jname="女学生" ]

;？？？
[chara_new  name="hatena" storage="chara/hasumi/01.png" jname="？？？" ]

;-----------------------------------------------------------------------------------------
;やどり
[chara_new  name="yadori" storage="chara/yadori/01.png" jname="宿利" ]

[chara_face name="yadori" face="1" storage="chara/yadori/01.png"]
[chara_face name="yadori" face="2" storage="chara/yadori/02.png"]
[chara_face name="yadori" face="3" storage="chara/yadori/03.png"]
[chara_face name="yadori" face="4" storage="chara/yadori/04.png"]
[chara_face name="yadori" face="5" storage="chara/yadori/05.png"]
[chara_face name="yadori" face="6" storage="chara/yadori/06.png"]
[chara_face name="yadori" face="7" storage="chara/yadori/07.png"]
[chara_face name="yadori" face="8" storage="chara/yadori/08.png"]
[chara_face name="yadori" face="9" storage="chara/yadori/09.png"]
[chara_face name="yadori" face="10" storage="chara/yadori/10.png"]
[chara_face name="yadori" face="11" storage="chara/yadori/11.png"]
[chara_face name="yadori" face="12" storage="chara/yadori/12.png"]

;-----------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------
;はすみ
[chara_new  name="hasumi" storage="chara/hasumi/01.png" jname="莲见" ]

[chara_face name="hasumi" face="1" storage="chara/hasumi/01.png"]
[chara_face name="hasumi" face="2" storage="chara/hasumi/02.png"]
[chara_face name="hasumi" face="3" storage="chara/hasumi/03.png"]
[chara_face name="hasumi" face="4" storage="chara/hasumi/04.png"]
[chara_face name="hasumi" face="5" storage="chara/hasumi/05.png"]
[chara_face name="hasumi" face="6" storage="chara/hasumi/06.png"]
[chara_face name="hasumi" face="7" storage="chara/hasumi/07.png"]
[chara_face name="hasumi" face="8" storage="chara/hasumi/08.png"]
[chara_face name="hasumi" face="9" storage="chara/hasumi/09.png"]
[chara_face name="hasumi" face="10" storage="chara/hasumi/10.png"]
[chara_face name="hasumi" face="11" storage="chara/hasumi/11.png"]
[chara_face name="hasumi" face="12" storage="chara/hasumi/12.png"]
[chara_face name="hasumi" face="13" storage="chara/hasumi/13.png"]

;-----------------------------------------------------------------------------------------
;よみ
[chara_new  name="yomi" storage="chara/yomi/01.png" jname="清见" ]

[chara_face name="yomi" face="1" storage="chara/yomi/01.png"]
[chara_face name="yomi" face="2" storage="chara/yomi/02.png"]
[chara_face name="yomi" face="3" storage="chara/yomi/03.png"]
[chara_face name="yomi" face="4" storage="chara/yomi/04.png"]
[chara_face name="yomi" face="5" storage="chara/yomi/05.png"]
[chara_face name="yomi" face="6" storage="chara/yomi/06.png"]
[chara_face name="yomi" face="7" storage="chara/yomi/07.png"]
;-----------------------------------------------------------------------------------------
;みちる
[chara_new  name="mitiru" storage="chara/mitiru/01.png" jname="满" ]

[chara_face name="mitiru" face="1" storage="chara/mitiru/01.png"]
[chara_face name="mitiru" face="2" storage="chara/mitiru/02.png"]
[chara_face name="mitiru" face="3" storage="chara/mitiru/03.png"]
[chara_face name="mitiru" face="4" storage="chara/mitiru/04.png"]
[chara_face name="mitiru" face="5" storage="chara/mitiru/05.png"]
[chara_face name="mitiru" face="6" storage="chara/mitiru/06.png"]
[chara_face name="mitiru" face="7" storage="chara/mitiru/07.png"]

;-----------------------------------------------------------------------------------------
;立ち絵宣言ここまで
;-----------------------------------------------------------------------------------------
;firstのretuanに戻る
[jump storage=first.ks target=*return]
;---------------------------------------------------------------------------------------