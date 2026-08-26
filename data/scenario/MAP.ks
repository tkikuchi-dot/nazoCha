[_tb_system_call storage=system/_MAP.ks]

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
; ▼ 背景画像（MAP画像）を表示
[bg storage="map1.webp" time="0"]

; ===================================
; ① 現在選んでいる部屋の名前を表示
; ===================================
[if exp="tf.selected_name != ''"]
[ptext layer="1" x="1050" y="600" size="24" color="yellow" text="&'▶ ' + tf.selected_name"]
[endif]

; ===================================
; ② クリッカブルマップの配置（expを消して専用ラベルに飛ばす）
; ===================================

; 【左列】
[if exp="f.phase >= 2"]
[clickable x="60" y="100" width="170" height="145" target="*click_machine" color="white" opacity="30"]
[else]
[clickable x="60" y="100" width="170" height="145" target="*lock_machine" color="red" opacity="30"]
[endif]

; Aの部屋（いつでも入れる）
[clickable x="60" y="245" width="170" height="145" target="*click_roomA" color="white" opacity="30"]

[if exp="f.phase >= 2"]
[clickable x="60" y="390" width="170" height="145" target="*click_roomB" color="white" opacity="30"]
[else]
[clickable x="60" y="390" width="170" height="145" target="*lock_roomB" color="red" opacity="30"]
[endif]

; Cの部屋（いつでも入れる）
[clickable x="60" y="535" width="170" height="140" target="*click_roomC" color="white" opacity="30"]


; 【右列】
[if exp="f.phase >= 2"]
[clickable x="785" y="100" width="165" height="145" target="*click_monooki" color="white" opacity="30"]
[else]
[clickable x="785" y="100" width="165" height="145" target="*lock_monooki" color="red" opacity="30"]
[endif]

[if exp="f.phase >= 2"]
[clickable x="785" y="245" width="165" height="145" target="*click_roomD" color="white" opacity="30"]
[else]
[clickable x="785" y="245" width="165" height="145" target="*lock_roomD" color="red" opacity="30"]
[endif]

[if exp="f.phase >= 2"]
[clickable x="785" y="390" width="165" height="145" target="*click_roomE" color="white" opacity="30"]
[else]
[clickable x="785" y="390" width="165" height="145" target="*lock_roomE" color="red" opacity="30"]
[endif]

[if exp="f.phase >= 2"]
[clickable x="785" y="535" width="165" height="140" target="*click_syueisitu" color="white" opacity="30"]
[else]
[clickable x="785" y="535" width="165" height="140" target="*lock_syueisitu" color="red" opacity="30"]
[endif]


; 【中央列】
; ＞大浴場（いつでも入れる）
[clickable x="365" y="100" width="145" height="115" target="*click_daiyokujo" color="white" opacity="30"]
[clickable x="510" y="100" width="140" height="80" target="*click_daiyokujo" color="white" opacity="30"]

; ＞遊戯室（いつでも入れる）
[clickable x="510" y="180" width="140" height="35" target="*click_yugisitu" color="white" opacity="30"]
[clickable x="365" y="215" width="285" height="75" target="*click_yugisitu" color="white" opacity="30"]

; ＞備蓄庫（いつでも入れる）
[clickable x="365" y="290" width="145" height="100" target="*click_bitikuko" color="white" opacity="30"]

[if exp="f.phase >= 2"]
[clickable x="510" y="290" width="140" height="100" target="*click_kyukeisitu" color="white" opacity="30"]
[else]
[clickable x="510" y="290" width="140" height="100" target="*lock_kyukeisitu" color="red" opacity="30"]
[endif]

; ＞厨房（いつでも入れる）
[clickable x="365" y="390" width="145" height="100" target="*click_tyubo" color="white" opacity="30"]

[if exp="f.phase >= 2"]
[clickable x="510" y="390" width="140" height="100" target="*click_syokudo" color="white" opacity="30"]
[else]
[clickable x="510" y="390" width="140" height="100" target="*lock_syokudo" color="red" opacity="30"]
[endif]

; ＞大広間（いつでも入れる）
[clickable x="365" y="490" width="285" height="185" target="*click_ohiroma" color="white" opacity="30"]


; ===================================
; ③ 右側のUIボタン
; ===================================
[if exp="tf.selected_room == ''"]
[image layer="1" storage="btn_move_gray.webp" x="1080" y="250"]
[else]
[button graphic="btn_move_red.webp" target="*do_move" x="1080" y="250"]
[endif]

[button graphic="btn_return.webp" target="*do_return" x="1080" y="450"]

[s]

; ===================================
; ▼ UIボタンを押した時の処理
; ===================================
*do_move
[jump storage="&tf.selected_room" target="*start"]

*do_return
[jump storage="&f.return_file" target="&f.return_label"]

; ===================================
; ▼ まだ行けない部屋をクリックした時の共通処理
; ===================================
*locked_room
[cm]
[layopt layer="message0" visible="true"]
#
[emb exp="tf.locked_name"]か……。今はまだ行く必要がないな。[p]
[layopt layer="message0" visible="false"]
@jump target="*show_map"

; ===================================
; ▼ ここから下は、各部屋をクリックした時の「変数記憶」処理
; ===================================

; --- 左列 ---
*click_machine
[eval exp="tf.selected_room='kikaiseigyositu.ks'"][eval exp="tf.selected_name='機械制御室'"]
@jump target="*show_map"
*lock_machine
[eval exp="tf.locked_name='機械制御室'"]
@jump target="*locked_room"

*click_roomA
[eval exp="tf.selected_room='roomA.ks'"][eval exp="tf.selected_name='Aの部屋'"]
@jump target="*show_map"

*click_roomB
[eval exp="tf.selected_room='roomB.ks'"][eval exp="tf.selected_name='Bの部屋'"]
@jump target="*show_map"
*lock_roomB
[eval exp="tf.locked_name='Bの部屋'"]
@jump target="*locked_room"

*click_roomC
[eval exp="tf.selected_room='roomC.ks'"][eval exp="tf.selected_name='部屋C'"]
@jump target="*show_map"

; --- 右列 ---
*click_monooki
[eval exp="tf.selected_room='monooki.ks'"][eval exp="tf.selected_name='物置'"]
@jump target="*show_map"
*lock_monooki
[eval exp="tf.locked_name='物置'"]
@jump target="*locked_room"

*click_roomD
[eval exp="tf.selected_room='roomD.ks'"][eval exp="tf.selected_name='Dの部屋'"]
@jump target="*show_map"
*lock_roomD
[eval exp="tf.locked_name='Dの部屋'"]
@jump target="*locked_room"

*click_roomE
[eval exp="tf.selected_room='roomE.ks'"][eval exp="tf.selected_name='Eの部屋'"]
@jump target="*show_map"
*lock_roomE
[eval exp="tf.locked_name='Eの部屋'"]
@jump target="*locked_room"

*click_syueisitu
[eval exp="tf.selected_room='syueisitu.ks'"][eval exp="tf.selected_name='守衛室'"]
@jump target="*show_map"
*lock_syueisitu
[eval exp="tf.locked_name='守衛室'"]
@jump target="*locked_room"

; --- 中央列 ---
*click_daiyokujo
[eval exp="tf.selected_room='daiyokujo.ks'"][eval exp="tf.selected_name='大浴場'"]
@jump target="*show_map"

*click_yugisitu
[eval exp="tf.selected_room='yugisitu.ks'"][eval exp="tf.selected_name='遊戯室'"]
@jump target="*show_map"

*click_bitikuko
[eval exp="tf.selected_room='bitikuko.ks'"][eval exp="tf.selected_name='備蓄庫'"]
@jump target="*show_map"

*click_kyukeisitu
[eval exp="tf.selected_room='kyukeisitu.ks'"][eval exp="tf.selected_name='休憩室'"]
@jump target="*show_map"
*lock_kyukeisitu
[eval exp="tf.locked_name='休憩室'"]
@jump target="*locked_room"

*click_tyubo
[eval exp="tf.selected_room='tyubo.ks'"][eval exp="tf.selected_name='厨房'"]
@jump target="*show_map"

*click_syokudo
[eval exp="tf.selected_room='syokudo.ks'"][eval exp="tf.selected_name='食堂'"]
@jump target="*show_map"
*lock_syokudo
[eval exp="tf.locked_name='食堂'"]
@jump target="*locked_room"

*click_ohiroma
[eval exp="tf.selected_room='ohiroma.ks'"][eval exp="tf.selected_name='大広間'"]
@jump target="*show_map"
[_tb_end_tyrano_code]

