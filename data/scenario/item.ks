[_tb_system_call storage=system/_item.ks]

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

; ▼ 確実に表示される背景タグに変更！
[bg storage="アイテム.webp" time="0"]

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
; 【洗剤】
[if exp="f.item_detergent == 1"]
[button graphic="detergent.webp" target="*click_detergent" x="428" y="542" width="100" height="100"]
[endif]

; 【睡眠薬】
[if exp="f.item_pill == 1"]
[button graphic="sleeping_pill.webp" target="*click_pill" x="589" y="542" width="100" height="100"]
[endif]

; 【プラスドライバー】
[if exp="f.item_driver == 1"]
[button graphic="driver.webp" target="*click_driver" x="750" y="542" width="100" height="100"]
[endif]

; ===================================
; ④ 【NEW】右下の「戻る」ボタン
; ===================================
; 画像の「戻る」ボタンの座標に合わせて透明なクリック判定を置いています
[clickable x="1040" y="580" width="200" height="90" target="*close_item" color="blue" opacity="0"]

[s]

; ===================================
; ▼ 各アイテムをクリックした時の処理
; ===================================
*click_detergent
[eval exp="tf.item_name = '【 洗剤 】'"]
[eval exp="tf.item_desc1 = '頑固な汚れも落ちる強力な洗剤。'"]
[eval exp="tf.item_desc2 = 'アルカリ性のようだ。'"]
[eval exp="tf.big_img = 'detergent.webp'"]
; [playse storage="click.mp3"]
@jump target="*show_item_ui"

*click_pill
[eval exp="tf.item_name = '【 睡眠薬 】'"]
[eval exp="tf.item_desc1 = '水溶性の睡眠薬だ。アルカリ性のものに'"]
[eval exp="tf.item_desc2 = '反応して紫色になると書かれている。'"]
[eval exp="tf.big_img = 'sleeping_pill.webp'"]
; [playse storage="click.mp3"]
@jump target="*show_item_ui"

*click_driver
[eval exp="tf.item_name = '【 プラスドライバー 】'"]
[eval exp="tf.item_desc1 = '一般的なプラスドライバー。'"]
[eval exp="tf.item_desc2 = ''"]
[eval exp="tf.big_img = 'driver.webp'"]
; [playse storage="click.mp3"]
@jump target="*show_item_ui"

; ===================================
; ▼ アイテム画面を閉じる処理
; ===================================
*close_item
[cm]
; [playse storage="click.mp3"]
[freeimage layer="1" time="0"]

; ▼ 【超重要】「直前にいた場所」へ自動で帰還するタグ
[return]
[_tb_end_tyrano_code]

