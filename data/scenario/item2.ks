[_tb_system_call storage=system/_item2.ks]

[tb_start_tyrano_code]
*start_item
[cm]
[tb_hide_message_window]
[freeimage layer="1" time="0"]

; ▼ 変数の初期化
[eval exp="tf.item_name = ''"]
[eval exp="tf.item_desc1 = ''"]
[eval exp="tf.item_desc2 = ''"]
[eval exp="tf.big_img = ''"]

; ▼ 背景画像の表示
[bg storage="アイテム_2.webp" time="0"]

*show_item_ui
[cm]

; ===================================
; ① 薄黄色のボックスに表示するテキスト
; ===================================
[ptext name="item_text" layer="1" x="450" y="390" size="28" color="black" bold="true" text="&tf.item_name" overwrite="true"]
[ptext name="item_text" layer="1" x="450" y="435" size="20" color="black" text="&tf.item_desc1" overwrite="true"]
[ptext name="item_text" layer="1" x="450" y="465" size="20" color="black" text="&tf.item_desc2" overwrite="true"]

; ===================================
; ② 中央の大きな紺色枠にアイテム画像を拡大表示
; ===================================
[if exp="tf.big_img != ''"]
[image layer="1" storage="&tf.big_img" x="510" y="150" width="250" name="big_item"]
[endif]

; ===================================
; ③ 下の小窓（アイテムスロット）
; ===================================
; 【ネックレス】（※左の枠に配置しています）
[if exp="f.item_necklace == 1"]
[button graphic="necklace.webp" target="*click_necklace" x="428" y="542" width="100" height="100"]
[endif]

; ===================================
; ④ 右下の「戻る」ボタン
; ===================================
[clickable x="1040" y="580" width="200" height="90" target="*close_item" color="blue" opacity="0"]

[s]

; ===================================
; ▼ アイテムをクリックした時の処理
; ===================================
*click_necklace
[eval exp="tf.item_name = '【 ネックレス 】'"]
[eval exp="tf.item_desc1 = '金属製のネックレス。'"]
[eval exp="tf.item_desc2 = '電気を通しそうだ。'"]
; ※拡大画像のファイル名は適宜変更してください
[eval exp="tf.big_img = 'necklace.webp'"]
@jump target="*show_item_ui"


; ===================================
; ▼ アイテム画面を閉じる処理
; ===================================
*close_item
[cm]
[freeimage layer="1" time="0"]
; ▼ 直前にいた場所へ帰還！
[return]
[_tb_end_tyrano_code]

