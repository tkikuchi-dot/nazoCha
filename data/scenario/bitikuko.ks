[_tb_system_call storage=system/_bitikuko.ks]

*start

[cm  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_image_hide  time="0"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="備品庫中.webp"  ]
[tb_start_tyrano_code]
; MAPボタン（例）
[button graphic="btn_map.webp" target="*open_map" x="20" y="450"]
[button graphic="btn_think.webp" target="*think" x="20" y="540"]
[_tb_end_tyrano_code]

[clickable  storage="bitikuko.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  _clickable_img=""  ]
[s  ]
*round

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
備蓄庫[p]
ナゾCさんが倒れていた場所だ[p]
ここにも何か手がかりがあるかもしれない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="bitikuko.ks"  target="*start"  ]
*think

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
答えが分かったナゾから話しかけに行こう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="bitikuko.ks"  target="*start"  ]
*open_map

[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
; ▼ ここが重要！「備蓄庫の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'bitikuko.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="備品庫中.webp"  ]
[clickable  storage="bitikuko.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[clickable  storage="bitikuko.ks"  x="11"  y="265"  width="238"  height="438"  target="*check_shelf"  _clickable_img=""  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="600" y="500"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="80" y="150"  time="1000" wait="false"]
[_tb_end_tyrano_code]

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
#ナゾA
備蓄庫[p]
ここと廊下の間でナゾCさんは倒れていた[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="bitikuko.ks"  target="*start2"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ 棚を調べた時
; ===================================
*check_shelf
[cm]
[tb_show_message_window]

; ▼ 変更点①：変数名を f.item_pills に、判定を true に修正
[if exp="f.item_pills == true"]
#ナゾA
棚だ。もう特に変わったところはない。[p]
[tb_image_hide time="0"]
@jump target="*cancel_bitikuko"
[endif]


; ▼ まだ睡眠薬を入手していない場合
; ① 棚の画像を表示
#ナゾA
棚だ。たしかBさんが何かに気づいていたような・・・[p]


; ② 睡眠薬の画像に切り替え
[tb_image_hide time="0"]
[tb_image_show time="300" storage="default/sleeping_pill.webp" width="226" height="352" x="503" y="70" _clickable_img="" ]
#ナゾA
これは・・・睡眠薬！[p]
もしかして僕が昨日眠くなったのは・・・！[p]
アルカリ性のものに反応すると紫色に変色するって書いてある[p]
アルカリ性のものを手に入れて怪しいところを調べるか[p]

; ▼ システムメッセージ
#ナゾA
【 睡眠薬を手に入れた！ 】[p]

; ▼ 変更点②：アイテム画面のフラグと一致させるため f.item_pills を true にする
[eval exp="f.item_pills = true"]

[tb_image_hide time="0"]
@jump target="*cancel_bitikuko"


; ===================================
; ▼ 調べるのをやめた時の戻り先
; ===================================
*cancel_bitikuko
[cm]
[tb_image_hide time="0"]
[tb_hide_message_window]
; ▼ 備蓄庫の探索画面（元のラベル）へ戻る
; （※戻り先のラベル名が *start2 や *show_room_ui の場合は書き換えてください）
@jump target="*start2"
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
[bg storage="備品庫.webp" time="0"]
@jump target="*start2" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'bitikuko.ks'"]
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
[bg  time="1000"  method="crossfade"  storage="備品庫中.webp"  ]
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
[eval exp="f.return_file = 'bitikuko.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

