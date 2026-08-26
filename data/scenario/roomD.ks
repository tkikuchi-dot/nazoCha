[_tb_system_call storage=system/_roomD.ks]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="roomD.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[button graphic="btn_necklace.webp" target="*neckless" x="576" y="463"]
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
Dさんの部屋だが、自分の部屋とあまり変わらない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomD.ks"  target="*start2"  ]
*neckless

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="600"  storage="default/btn_neckless.webp"  width="431"  height="340"  x="406"  y="183"  _clickable_img=""  name="img_23"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
銀でできたネックレスだ[p]
Dさんのものだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[jump  storage="roomD.ks"  target="*start2"  ]
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
[eval exp="f.return_file = 'roomd.ks'"]
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
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="roomD.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round3"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ アイテムの配置（ネックレスを持っていない時だけ表示）
; ===================================
[if exp="f.item_necklace != 1"]
[button graphic="btn_necklace.webp" target="*get_necklace" x="576" y="463"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think3" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item2" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map3" x="20" y="560"]
[_tb_end_tyrano_code]

[s  ]
*round3

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Dさんの部屋だが、自分の部屋とあまり変わらない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="roomD.ks"  target="*start3"  ]
*get_necklace

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ ネックレスを入手する処理
; ===================================
[cm]
[tb_show_message_window]

; ▼ 入手フラグをONにする
[eval exp="f.item_necklace = 1"]

[tb_image_show time="300" storage="default/btn_neckless.webp" width="431" height="340" x="406" y="183" _clickable_img="" ]

#
銀でできたネックレスだ[r]
Dさんのものだろうか[p]

これなら電気が通るかもしれない[p]

; ▼ システムメッセージ
#
【 ネックレスを手に入れた！ 】[p]

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
[bg storage="個室.webp" time="0"]
@jump target="*start3" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map3
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'roomd.ks'"]
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
機械制御室に行ってネックレスを配線につなごう[p]

[tb_hide_message_window]
; ※必要であれば、読み終わった後の戻り先を指定してあげると安全です
@jump target="*start3"

; ▼ 持っていない場合
[else]
#
電気を通せるものを探そう[p]

[tb_hide_message_window]
@jump target="*start3"
[endif]
[_tb_end_tyrano_code]

