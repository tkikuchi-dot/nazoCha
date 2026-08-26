[_tb_system_call storage=system/_roomB.ks]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="roomB.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[button graphic="cap.webp" target="*cap2" x="450" y="400" width="70" hight="60"]
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
Bさんの部屋だが、自分の部屋とあまり変わらない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomB.ks"  target="*start2"  ]
*cap2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="600"  storage="default/cap.webp"  width="448"  height="369"  x="370"  y="171"  _clickable_img=""  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
真っ黒な帽子だ[p]
Bさんのものだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[jump  storage="roomB.ks"  target="*start2"  ]
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
[eval exp="f.return_file = 'roomb.ks'"]
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
[eval exp="f.return_file = 'roomb.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

