0: autodisable=false

1: onenter="kag.fore.layers[0].loadImages(%[storage:'スタートボタン2.png'])"; exp="f.rclickmode = 0" ;storage="プロローグ.ks" ; target="*start";

2: onenter="kag.fore.layers[0].loadImages(%[storage:'ロードボタン2.png'])"; exp="f.rclickmode = 1, kag.callExtraConductor('rclick_tjs21.ks','*rclick')";

3: onenter="kag.fore.layers[0].loadImages(%[storage:'コンフィグボタン2.png'])"; exp="f.rclickmode = 3, kag.callExtraConductor('rclick_tjs21.ks','*rclick')";

4: onenter="kag.fore.layers[0].loadImages(%[storage:'エクストラボタン2.png'])"; storage="omake.ks" ; target="*start";

5: onenter="kag.fore.layers[0].loadImages(%[storage:'おまけボタン.png'])"; storage="おまけ.ks" ; target="*start";

6: onenter="kag.fore.layers[0].loadImages(%[storage:'エンドボタン2.png'])"; storage="start.ks" ; target="*exit";

7: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";


