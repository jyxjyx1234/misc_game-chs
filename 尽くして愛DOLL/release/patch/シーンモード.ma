;スイッチ関係
1: onenter="kag.fore.layers[0].loadImages(%[storage:'CGボタン.png'])" ;storage="CGモードinit.ks" ; target="*start";
2: onenter="kag.fore.layers[0].loadImages(%[storage:'サウンドボタン.png'])" ;storage="サウンド.ks" ; target="*start";
;3: onenter="kag.fore.layers[0].loadImages(%[storage:'シーンボタン.png'])" ; storage="シーンモード.ks" ; target="*start";
4: onenter="kag.fore.layers[0].loadImages(%[storage:'戻るボタン.png'])" ; storage="omake.ks" ; target="*back";

;サムネイル関係

5:if(sf.ev01==1){ storage="シーンモード.ks" ; target="*ev01" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン1.png'])";}
6:if(sf.ev02==1){ storage="シーンモード.ks" ; target="*ev02" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン2.png'])";}
7:if(sf.ev03==1){ storage="シーンモード.ks" ; target="*ev03" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン3.png'])";}
8:if(sf.ev04==1){ storage="シーンモード.ks" ; target="*ev04" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン4.png'])";}
9:if(sf.ev05==1){ storage="シーンモード.ks" ; target="*ev05" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン5.png'])";}
10:if(sf.ev06==1){ storage="シーンモード.ks" ; target="*ev06" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン6.png'])";}
11:if(sf.ev07==1){ storage="シーンモード.ks" ; target="*ev07" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン7.png'])";}
12:if(sf.ev08==1){ storage="シーンモード.ks" ; target="*ev08" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン8.png'])";}
13:if(sf.ev09==1){ storage="シーンモード.ks" ; target="*ev09" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン9.png'])";}
14:if(sf.ev10==1){ storage="シーンモード.ks" ; target="*ev10" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン10.png'])";}
15:if(sf.ev11==1){ storage="シーンモード.ks" ; target="*ev11" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン11.png'])";}
16:if(sf.ev12==1){ storage="シーンモード.ks" ; target="*ev12" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン12.png'])";}
17:if(sf.ev13==1){ storage="シーンモード.ks" ; target="*ev13" ;onenter="kag.fore.layers[0].loadImages(%[storage:'シーン13.png'])";}

;ダミー
18:onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";
