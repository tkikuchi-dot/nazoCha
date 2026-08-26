[_tb_system_call storage=system/_title_screen.ks]


;==============================
; タイトル画面
;==============================


[tb_clear_images]

[hidemenubutton]

[tb_keyconfig  flag="0"  ]
[popopo  type="sine"  volume="50"  time="20"  octave="0"  frequency="A"  chara="default"  ]

;標準のメッセージレイヤを非表示


[tb_hide_message_window  ]


;タイトル表示


[bg  storage="title_cha.webp"  ]
[tb_start_tyrano_code]
; タイトル中は独自MENUボタンを出さない
[iscript]
$("#root_layer_game [name='ui_status']").remove();
[endscript]
[_tb_end_tyrano_code]

*title

[iscript]
// タイトル画面では独自MENUボタンを非表示にする
$("#root_layer_game [name='ui_status']").remove();
[endscript]

[call target="*draw_title_buttons"]
[s]

*draw_title_buttons

[glink  color="btn_19_black"  text="はじめから"  x="1063"  y="462"  size="20"  target="*start"  width=""  height=""  _clickable_img=""  ]
[glink  color="btn_19_black"  text="つづきから"  x="1063"  y="566"  size="20"  target="*load"  width=""  height=""  _clickable_img=""  ]
[return]

;-------ボタンが押されたときの処理


*start

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]

;--------ロードが押された時の処理


*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
