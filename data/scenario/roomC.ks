[_tb_system_call storage=system/_roomC.ks]

*start

[cm  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_image_hide  time="0"  ]
[tb_hide_message_window  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
制作中[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomC.ks"  target="*open_map"  ]
[tb_start_tyrano_code]
*open_map
; ▼ ここが重要！Cの部屋の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'roomc.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="Cの部屋.webp"  ]
[clickable  storage="roomC.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[_tb_end_tyrano_code]

[clickable  storage="roomC.ks"  x="595"  y="435"  width="167"  height="89"  target="*raincoat"  _clickable_img=""  ]
[clickable  storage="roomC.ks"  x="477"  y="453"  width="55"  height="53"  target="*knife"  _clickable_img=""  ]
[clickable  storage="roomC.ks"  x="275"  y="498"  width="149"  height="77"  target="*memo"  _clickable_img=""  ]
[s  ]
*round2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Cさんの部屋だ[p]
ここが犯行現場だろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="roomC.ks"  target="*start2"  ]
*raincoat

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/raincoat.webp"  width="644"  height="352"  x="312"  y="170"  _clickable_img=""  name="img_73"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
血が付いたレインコートだ[p]
犯人が着ていたものか？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[jump  storage="roomC.ks"  target="*start2"  ]
*knife

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/knife.webp"  width="388"  height="388"  x="463"  y="104"  _clickable_img=""  name="img_84"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
血が付いた包丁だ[p]
これが凶器なのだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[jump  storage="roomC.ks"  target="*start2"  ]
*memo

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/メモ.webp"  width="550"  height="357"  x="400"  y="140"  _clickable_img=""  name="img_95"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
このメモに「らいふ」って書かれてるから疑われてるんだよな[p]
Cさんはなぜダイイングメッセージで「らいふ」と残したのだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[jump  storage="roomC.ks"  target="*start2"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ アイテム一覧
; ===================================

*open_item
; ▼ jump ではなく call を使う！
[call storage="item.ks" target="*start_item"]

; ▼ item.ks で [return] が実行されると、自動的に「ここ」に帰ってきます！
; 帰ってきたら、元の部屋の背景などを再表示してあげる
[bg storage="Cの部屋.webp" time="0"]
@jump target="*start2" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'roomc.ks'"]
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
Cさんの部屋だ[p]
[tb_hide_message_window]
@jump target="*start2"
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="Cの部屋.webp"  ]
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
[eval exp="f.return_file = 'roomc.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

