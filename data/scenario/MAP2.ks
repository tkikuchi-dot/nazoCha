[_tb_system_call storage=system/_MAP2.ks]

[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

[tb_start_tyrano_code]
*start
[cm]
[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="false"  ]
; ▼ ここが重要！マップを開くたびに「選択状態」をリセットする
[eval exp="tf.selected_room = ''"]
[eval exp="tf.selected_name = ''"]

*show_map
[cm]
[freeimage layer="1" time="0"]
; ▼ 背景画像（MAP画像）を表示 ※第2回用に画像を変える場合はここを変更
[bg storage="map2.webp" time="0"]

; ===================================
; ① 現在選んでいる部屋の名前を表示
; ===================================
[if exp="tf.selected_name != ''"]
[ptext layer="1" x="1050" y="80" size="36" color="yellow" text="&'▶ ' + tf.selected_name"]
[endif]

; ===================================
; ② クリッカブルマップの配置（第2回探索用）
; ===================================

; 【左列】
; ＞機械制御室（行けない）
[clickable x="60" y="100" width="170" height="145" target="*lock_machine" color="red" opacity="30"]

; ＞Aの部屋（行ける）
[clickable x="60" y="245" width="170" height="145" target="*click_roomA" color="white" opacity="30"]

; ＞Bの部屋（行ける）
[clickable x="60" y="390" width="170" height="145" target="*click_roomB" color="white" opacity="30"]

; ＞Cの部屋（行ける）
[clickable x="60" y="535" width="170" height="140" target="*click_roomC" color="white" opacity="30"]


; 【右列】
; ＞物置（行ける）
[clickable x="785" y="100" width="165" height="145" target="*click_monooki" color="white" opacity="30"]

; ＞Dの部屋（行ける）
[clickable x="785" y="245" width="165" height="145" target="*click_roomD" color="white" opacity="30"]

; ＞Eの部屋（行ける）
[clickable x="785" y="390" width="165" height="145" target="*click_roomE" color="white" opacity="30"]

; ＞守衛室（行ける）
[clickable x="785" y="535" width="165" height="140" target="*click_syueisitu" color="white" opacity="30"]


; 【中央列】
; ＞大浴場（行けない）
[clickable x="365" y="100" width="145" height="115" target="*lock_daiyokujo" color="red" opacity="30"]
[clickable x="510" y="100" width="140" height="80" target="*lock_daiyokujo" color="red" opacity="30"]

; ＞遊戯室（行ける）
[clickable x="510" y="180" width="140" height="35" target="*click_yugisitu" color="white" opacity="30"]
[clickable x="365" y="215" width="285" height="75" target="*click_yugisitu" color="white" opacity="30"]

; ＞備蓄庫（行ける）
[clickable x="365" y="290" width="145" height="100" target="*click_bitikuko" color="white" opacity="30"]

; ＞休憩室（行けない）
[clickable x="510" y="290" width="140" height="100" target="*lock_kyukeisitu" color="red" opacity="30"]

; ＞厨房（行ける）
[clickable x="365" y="390" width="145" height="100" target="*click_tyubo" color="white" opacity="30"]

; ＞食堂（行ける）
[clickable x="510" y="390" width="140" height="100" target="*click_syokudo" color="white" opacity="30"]

; ＞大広間（行けない）
[clickable x="365" y="490" width="285" height="185" target="*lock_ohiroma" color="red" opacity="30"]


; ===================================
; ③ 右側のUIボタン
; ===================================
[if exp="tf.selected_room == ''"]
[tb_image_show time="0" storage="default/btn_move_gray.webp" x="1060" y="250" _clickable_img="" ]
[else]
[button graphic="btn_move_red.webp" target="*do_move" x="1060" y="250"]
[endif]

[button graphic="btn_return.webp" target="*do_return" x="1060" y="450"]


[s]

; ===================================
; ▼ UIボタンを押した時の処理
; ===================================
*do_move
[jump storage="&tf.selected_room" target="*start2"]

*do_return
[jump storage="&f.return_file" target="&f.return_label"]


; ===================================
; ▼ まだ行けない部屋をクリックした時の共通処理
; ===================================
*locked_room
[cm]
[layopt layer="message0" visible="true"]
#
[emb exp="tf.locked_name"]か……。今は行く必要がないな。[p]
[layopt layer="message0" visible="false"]
@jump target="*show_map"


; ===================================
; ▼ ここから下は、各部屋をクリックした時の「変数記憶」と「ロック」処理
; ===================================

; --- 左列 ---
*click_roomA
[eval exp="tf.selected_room='roomA.ks'"][eval exp="tf.selected_name='Aの部屋'"]
@jump target="*show_map"

*click_roomB
[eval exp="tf.selected_room='roomB.ks'"][eval exp="tf.selected_name='Bの部屋'"]
@jump target="*show_map"

*click_roomC
[eval exp="tf.selected_room='roomC.ks'"][eval exp="tf.selected_name='Cの部屋'"]
@jump target="*show_map"

*lock_machine
[eval exp="tf.locked_name='機械制御室'"]
@jump target="*locked_room"


; --- 右列 ---
*click_monooki
[eval exp="tf.selected_room='monooki.ks'"][eval exp="tf.selected_name='物置'"]
@jump target="*show_map"

*click_roomD
[eval exp="tf.selected_room='roomD.ks'"][eval exp="tf.selected_name='Dの部屋'"]
@jump target="*show_map"

*click_roomE
[eval exp="tf.selected_room='roomE.ks'"][eval exp="tf.selected_name='Eの部屋'"]
@jump target="*show_map"

*click_syueisitu
[eval exp="tf.selected_room='syueisitu.ks'"][eval exp="tf.selected_name='守衛室'"]
@jump target="*show_map"


; --- 中央列 ---
*click_bitikuko
[eval exp="tf.selected_room='bitikuko.ks'"][eval exp="tf.selected_name='備蓄庫'"]
@jump target="*show_map"

*click_tyubo
[eval exp="tf.selected_room='tyubo.ks'"][eval exp="tf.selected_name='厨房'"]
@jump target="*show_map"

*click_syokudo
[eval exp="tf.selected_room='syokudo.ks'"][eval exp="tf.selected_name='食堂'"]
@jump target="*show_map"

*lock_ohiroma
[eval exp="tf.locked_name='大広間'"]
@jump target="*locked_room"

*lock_daiyokujo
[eval exp="tf.locked_name='大浴場'"]
@jump target="*locked_room"

*click_yugisitu
[eval exp="tf.selected_room='yugisitu.ks'"][eval exp="tf.selected_name='遊戯室'"]
@jump target="*show_map"
*lock_kyukeisitu
[eval exp="tf.locked_name='休憩室'"]
@jump target="*locked_room"
[_tb_end_tyrano_code]

