
0: autodisable=false

1: onenter="kag.fore.layers[0].loadImages(%[storage:'demoBack.png'])" ;storage="demo.ks" ; target="*back" ;

2: onenter="kag.fore.layers[0].loadImages(%[storage:'demo01.png'])" ; storage="汁デモ.ks" ; target="*start" ; kag.se[1].play(%[ storage : '選択.ogg' , loop: false ]); 

3: onenter="kag.fore.layers[0].loadImages(%[storage:'demo02.png'])" ; storage="ハラデモ.ks" ; target="*start" ; kag.se[1].play(%[ storage : '選択.ogg' , loop: false ]); 

4: onenter="kag.fore.layers[0].loadImages(%[storage:'black.png'])"