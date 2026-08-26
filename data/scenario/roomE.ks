[_tb_system_call storage=system/_roomE.ks]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="roomE.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[button graphic="btn_trushbox.webp" target="*check_trash" x="750" y="600" width="60" hight="60"]
[_tb_end_tyrano_code]

[s  ]
*round2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Eさんの部屋だが、自分の部屋とあまり変わらない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomE.ks"  target="*start2"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ ゴミ箱を調べた時
; ===================================
*check_trash
[cm]
[tb_show_message_window]

; ① ゴミ箱の画像を表示（ご指定のフォーマット！）
[tb_image_show time="300" storage="default/btn_trushbox.webp" width="226" height="352" x="503" y="70" _clickable_img="" ]
#
ゴミ箱だ。[p]

; ② 中身の画像（マスク入り）に切り替え
[tb_image_hide time="0"]
[tb_image_show time="300" storage="default/trushbox.webp" width="352" height="352" x="503" y="70" _clickable_img="" ]
#
中にはマスクが入っている。昨日つけていたものだろう。[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
; ===================================
; ▼ アイテム一覧
; ===================================

*open_item
; ▼ jump ではなく call を使う！
[call storage="item.ks" target="*start_item"]

; ▼ item.ks で [return] が実行されると、自動的に「ここ」に帰ってきます！
; 帰ってきたら、元の部屋の背景などを再表示してあげる
[bg storage="個室.webp" time="0"]
@jump target="*start2" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'roome.ks'"]
[eval exp="f.return_label = '*start2'"]
; メモを残してからMAPへジャンプ！
[jump storage="map2.ks" target="*start"]

; ===================================
; ▼ think
; ===================================
*think2
[cm]
[tb_show_message_window]
; ▼
#
この部屋には何かあるかな[p]
[tb_hide_message_window]
@jump target="*start2"
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
制作中[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
; ===================================
; ▼ MAPへ
; ===================================
*open_map3
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'roome.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

