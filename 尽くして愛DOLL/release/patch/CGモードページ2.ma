0: autodisable=false
;スイッチ関係
;1: onenter="kag.fore.layers[0].loadImages(%[storage:'CGボタン.png'])" ;storage="CGモードinit.ks" ; target="*start";
2: onenter="kag.fore.layers[0].loadImages(%[storage:'サウンドボタン.png'])" ;storage="サウンド.ks" ; target="*start";
3: onenter="kag.fore.layers[0].loadImages(%[storage:'シーンボタン.png'])" ; storage="シーンモード.ks" ; target="*start";
4: onenter="kag.fore.layers[0].loadImages(%[storage:'戻るボタン.png'])" ; storage="omake.ks" ; target="*back";

;ページ関係
5:  if(sf.sev_09==1){ storage="CGモードfnc.ks" ; target="*ev_09" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_09.png'])" ;}
6:  if(sf.sev_10==1){ storage="CGモードfnc.ks" ; target="*ev_10" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_10.png'])" ;}
7:  if(sf.sev_11==1){ storage="CGモードfnc.ks" ; target="*ev_11" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_11.png'])" ;}
8:  if(sf.sev_12==1){ storage="CGモードfnc.ks" ; target="*ev_12" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_12.png'])" ;}
9:  if(sf.sev_13==1){ storage="CGモードfnc.ks" ; target="*ev_13" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_13.png'])" ;}
10: if(sf.sev_14==1){ storage="CGモードfnc.ks" ; target="*ev_14" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_14.png'])" ;}
11: if(sf.sev_15==1){ storage="CGモードfnc.ks" ; target="*ev_15" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_15.png'])" ;}
12: if(sf.sev_16==1){ storage="CGモードfnc.ks" ; target="*ev_16" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_16.png'])" ;}

;ページ関係
13: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ1.png'])" ;storage="CGモードinit.ks" ; target="*page1";
;14: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ2.png'])" ;storage="CGモードinit.ks" ; target="*page2";
15: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ3.png'])" ;storage="CGモードinit.ks" ; target="*page3";
16: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ4.png'])" ;storage="CGモードinit.ks" ; target="*page4";
17: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ5.png'])" ;storage="CGモードinit.ks" ; target="*page5";

;ダミー効果
18: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";
