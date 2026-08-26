[_tb_system_call storage=system/_roomA.ks]

*start

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="roomA.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think" x="20" y="400"]
[button graphic="btn_map.webp" target="*open_map" x="20" y="500"]
[_tb_end_tyrano_code]

[s  ]
*round

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
一応自分の部屋だが、まだそんなに自分の部屋としての実感がない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomA.ks"  target="*start"  ]
*think

[cm  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
他のナゾの答えが何か考えないと[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomA.ks"  target="*start"  ]
[chara_hide_all  time="0"  wait="true"  ]
*open_map

[tb_start_tyrano_code]
; ▼ ここが重要！「roomAの *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'rooma.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="roomA.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[_tb_end_tyrano_code]

[s  ]
*round2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
一応自分の部屋だが、まだそんなに自分の部屋としての実感がない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomA.ks"  target="*start2"  ]
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
[eval exp="f.return_file = 'rooma.ks'"]
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
色んな場所を探索して、なんとかアリバイとなるものを証明しないと[p]
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
[eval exp="f.return_file = 'rooma.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

