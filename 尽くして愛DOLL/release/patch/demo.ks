;2006/7/22

*start
[fadeoutbgm time=500]
[fadeinbgm storage="日常2" time=500]
[mapdisable layer=base]
[store store=true]
[backlay]
*defal
[mapdisable layer=base]
[wt]
[backlay]
[image layer=0 page=back storage="black" visible=true top=0 left=0 opacity=255]
[image layer=1 page=back storage="black" visible=true top=0 left=0 opacity=255]
[image layer=base page=back storage=hblkout]
[trans method=crossfade time=400]
[wt]
[backlay]
[image layer=base page=back storage="デモ"]
[image layer=0 page=back storage="black" visible=true top=0 left=0 opacity=255]
[image layer=1 page=back storage="black" visible=true top=0 left=0 opacity=255]
[trans method=crossfade time=400]
[wt]
[s]

*back
[mapdisable layer=base]
[image layer=0 page=back storage="black" visible=true top=0 left=0 opacity=255]
[image layer=0 page=fore storage="black" visible=true top=0 left=0 opacity=255]
[call storage="omake.ks" target=*back]
[s]