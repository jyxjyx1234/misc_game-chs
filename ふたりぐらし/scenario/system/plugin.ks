
[stop_keyconfig]
[plugin name="theme_kopanda_bth_01"]

[plugin name="rightClickButton"]

[plugin name="voiceplay_ex"]

[plugin name="hutarigurashi"]

[plugin name="elem2img"]

[plugin name="css-generator"]

[plugin name="chat_story"]

[plugin name="drag-and-drop"]

[mask  time="10"  ]
[add_theme_button]

[tb_hide_message_window  ]
[layopt layer="message0" visible="false"]
[layopt layer="fixlayer" visible="false"]
[mask_off  time="10"  ]
[tb_clear_images]
[eval exp="sf._system_config_se_volume = sf.current_se_vol"]
[eval exp="f.isMake = true" ]
[call storage="../others/plugin/theme_kopanda_bth_01/config.ks" target="vol_se_change2" ]
[eval exp="f.isMake = false" ]
[bgmopt volume="&sf.current_bgm_vol"]
[seopt buf="0" volume="&sf.current_bgm_vol" effect="true"]
[image layer="4"  storage="CircleLogo.png" folder="image" time="700" visible="true"  name="logo"  ]

[wait  time="300"  ]
[playse  storage="vo_etc/FT_m001_etc0001.mp3"  buf="2"  ]
[wse  ]
[wait  time="300"  ]
[freeimage layer="4" time="700"   ]

[wait  time="100"  ]
[return  ]
