0: autodisable=false
;スイッチ関係
;1: onenter="kag.fore.layers[0].loadImages(%[storage:'CGボタン.png'])" ;storage="CGモードinit.ks" ; target="*start";
2: onenter="kag.fore.layers[0].loadImages(%[storage:'サウンドボタン.png'])" ;storage="サウンド.ks" ; target="*start";
3: onenter="kag.fore.layers[0].loadImages(%[storage:'シーンボタン.png'])" ; storage="シーンモード.ks" ; target="*start";
4: onenter="kag.fore.layers[0].loadImages(%[storage:'戻るボタン.png'])" ; storage="omake.ks" ; target="*back";

;ページ関係
5:  if(sf.ev_01==1){ storage="CGモードfnc.ks" ; target="*ev_01" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_01.png'])" ;}
6:  if(sf.ev_02==1){ storage="CGモードfnc.ks" ; target="*ev_02" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_02.png'])" ;}
7:  if(sf.sev_03==1){ storage="CGモードfnc.ks" ; target="*ev_03" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_03.png'])" ;}
8:  if(sf.sev_04==1){ storage="CGモードfnc.ks" ; target="*ev_04" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_04.png'])" ;}
9:  if(sf.ev_05==1){ storage="CGモードfnc.ks" ; target="*ev_05" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_05.png'])" ;}
10: if(sf.ev_06==1){ storage="CGモードfnc.ks" ; target="*ev_06" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_06.png'])" ;}
11: if(sf.sev_07==1){ storage="CGモードfnc.ks" ; target="*ev_07" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_07.png'])" ;}
12: if(sf.sev_08==1){ storage="CGモードfnc.ks" ; target="*ev_08" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_08.png'])" ;}

;ページ関係
;13: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ1.png'])" ;storage="CGモードinit.ks" ; target="*page1";
14: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ2.png'])" ;storage="CGモードinit.ks" ; target="*page2";
15: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ3.png'])" ;storage="CGモードinit.ks" ; target="*page3";
16: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ4.png'])" ;storage="CGモードinit.ks" ; target="*page4";
17: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ5.png'])" ;storage="CGモードinit.ks" ; target="*page5";

;ダミー効果
18: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";
