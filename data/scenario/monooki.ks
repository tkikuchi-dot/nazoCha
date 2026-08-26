[_tb_system_call storage=system/_monooki.ks]

[tb_start_tyrano_code]
; ===================================
; ▼ 部屋の探索画面（初期化と背景表示）
; ===================================
*start2
[cm]
[tb_hide_message_window]
[freeimage layer="1" time="0"]

; ▼ 背景画像を表示
[bg storage="物置.webp" time="0"]

*show_room_ui
[cm]

; ===================================
; 背景 のクリッカブル配置
; ===================================

[clickable  storage="monooki.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]

; ===================================
; ① アイテムの配置（まだ拾っていない時だけ表示）
; ===================================
; ▼ f.item_driver が 1 じゃない（＝まだ拾ってない）時だけボタンを出す
[if exp="f.item_driver != 1"]
[button graphic="driver_room.webp" target="*get_driver" x="578" y="191" width="93" height="94"]
[endif]

; ▼ 【追加】f.item_detergent が 1 じゃない時だけ洗剤を出す
; ※画像名や座標（x, y）は、実際の画面に合わせて調整してください
[if exp="f.item_detergent != 1"]
[button graphic="detergent.webp" target="*get_detergent" x="543" y="527" width="135" height="163"]
[endif]


; ===================================
; ② その他の探索箇所や戻るボタンの配置
; ===================================
; （ここに棚やゴミ箱などのクリッカブルを置きます）

; ▼ 部屋から出る（MAPへ戻る）ボタン
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]

[s]


; ===================================
; ▼ ドライバーをクリック（入手）した時の処理
; ===================================
*get_driver
[cm]
[tb_show_message_window]

; ▼ 入手フラグをON（1）にする！
[eval exp="f.item_driver = 1"]

#
プラスドライバーだ。[p]
何かに使えるかもしれない。持っていこう。[p]

; ▼ システムメッセージ風の演出
#
【 プラスドライバーを手に入れた！ 】[p]

[tb_hide_message_window]

; ▼ 探索画面を再描画する
@jump target="*show_room_ui"


; ===================================
; ▼ 【追加】洗剤をクリック（入手）した時の処理
; ===================================
*get_detergent
[cm]
[tb_show_message_window]

; ▼ 入手フラグをON（1）にする！
[eval exp="f.item_detergent = 1"]

#
強力な洗剤だ。[p]
アルカリ性のようだ。何かに使えるかもしれない。[p]

; ▼ システムメッセージ風の演出
#
【 洗剤を手に入れた！ 】[p]

[tb_hide_message_window]

; ▼ 探索画面を再描画する
@jump target="*show_room_ui"


; ===================================
; ▼ アイテム一覧
; ===================================

*open_item
; ▼ jump ではなく call を使う！
[call storage="item.ks" target="*start_item"]

; ▼ item.ks で [return] が実行されると、自動的に「ここ」に帰ってきます！
; 帰ってきたら、元の部屋の背景などを再表示してあげる
[bg storage="物置.webp" time="0"]
@jump target="*start2" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'monooki.ks'"]
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
ここにも何か手がかりがあるかもしれないな[p]
[tb_hide_message_window]
@jump target="*show_room_ui"

; ===================================
; ▼ 周り
; ===================================
*round2
[cm]
[tb_show_message_window]
; ▼
#
物置[p]
雑多なものが置かれている[p]
[tb_hide_message_window]
@jump target="*show_room_ui"
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="物置.webp"  ]
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
[eval exp="f.return_file = 'monooki.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

