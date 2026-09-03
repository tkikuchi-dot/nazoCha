[_tb_system_call storage=system/_kikaiseigyositu.ks]

[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

*start3

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="機械制御室_中2.webp"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/D_反対.webp"  width="284"  height="200"  left="821"  top="223"  reflect="false"  ]
[clickable  storage="kikaiseigyositu.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think3" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item2" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map3" x="20" y="560"]
[_tb_end_tyrano_code]

[clickable  storage="kikaiseigyositu.ks"  x="821"  y="223"  width="284"  height="200"  target="*talkD"  ]
[clickable  storage="kikaiseigyositu.ks"  x="491"  y="456"  width="75.6"  height="85"  target="*check_wire"  ]
[s  ]
*talkD

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/D_反対.webp"  width="507"  height="360"  left="399"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
どうにかして電源を復活させられないっすかね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="false"  ]
[jump  storage="kikaiseigyositu.ks"  target="*start3"  ]
*round

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
機械制御室[p]
名前の通り色々な機械を制御していそうな部屋だ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="kikaiseigyositu.ks"  target="*start3"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ 配線を調べた時
; ===================================
*check_wire
[cm]
[tb_show_message_window]

; ▼ すでにネックレスで繋いでいる場合
[if exp="f.wire_fixed == 1"]
#
ネックレスを使って配線を繋いである。
無事に電気が通っているようだ。[p]
@jump target="*cancel_wire"
[endif]

;画像表示
[tb_image_show time="300" storage="default/電源2.webp" width="331" height="374" x="464" y="124" _clickable_img="" ]

; ▼ まだ繋いでいない時の共通テキスト
#
配線が切断されている[p]
金属製品でつなげれば電気が通るかもしれない[p]


; ▼ ネックレスを持っている場合の選択肢
[if exp="f.item_necklace == 1"]
ネックレスで配線をつなげますか？[p]

[link target="*do_connect_wire"] ➤つなげる [endlink][r]
[link target="*cancel_wire"] ➤つなげない [endlink]
[s]

; ▼ 持っていない場合はそのまま戻る
[else]
@jump target="*cancel_wire"
[endif]


; ===================================
; ▼ 「➤つなげる」を選んだ時
; ===================================
*do_connect_wire
[cm]
; 配線を直したフラグをON！
[eval exp="f.wire_fixed = 1"]

[tb_image_hide time="300"]

[tb_image_show time="300" storage="default/電源3.webp" width="331" height="374" x="464" y="124" _clickable_img="" ]

#
ネックレスで配線をつないだ[p]

電気が通ったようだ！[p]


[jump storage="scene10.ks" target="*start"]


; ===================================
; ▼ 調べるのをやめた時の戻り先
; ===================================
*cancel_wire
[cm]
[tb_hide_message_window]
; ▼ 元の探索画面（クリック待ち）へ戻る
; （※戻り先のラベル名は適宜変更してください）
@jump target="*start3"
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
; ===================================
; ▼ アイテム一覧
; ===================================

*open_item2
; ▼ jump ではなく call を使う！
[call storage="item2.ks" target="*start_item"]

; ▼ item.ks で [return] が実行されると、自動的に「ここ」に帰ってきます！
; 帰ってきたら、元の部屋の背景などを再表示してあげる
[bg storage="機械制御室_中2.webp" time="0"]
@jump target="*start3" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map3
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'kikaiseigyositu.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]

; ===================================
; ▼ think
; ===================================
*think3
[cm]
[tb_show_message_window]
; ▼ ネックレスを持っている場合
[if exp="f.item_necklace == 1"]
#
ネックレスで配線をつなごう[p]

[tb_hide_message_window]
; ※必要であれば、読み終わった後の戻り先を指定してあげると安全です
; @jump target="*start3"

; ▼ 持っていない場合
[else]
#
金属製品であれば配線の代わりになるかもしれない[p]

[tb_hide_message_window]
@jump target="*start3"
[endif]
[_tb_end_tyrano_code]

