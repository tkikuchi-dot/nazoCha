[_tb_system_call storage=system/_tyubo.ks]

*start

[cm  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_hide_message_window  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
制作中[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="tyubo.ks"  target="*open_map"  ]
[tb_start_tyrano_code]
*open_map
; ▼ ここが重要！「厨房の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'tyubo.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*start2

[cm  ]
[bg  time="1000"  method="crossfade"  storage="厨房中.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
制作中[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'tyubo.ks'"]
[eval exp="f.return_label = '*start2'"]
; メモを残してからMAPへジャンプ！
[jump storage="map2.ks" target="*start"]
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="厨房中.webp"  ]
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
[eval exp="f.return_file = 'tyubo.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

