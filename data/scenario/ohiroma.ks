[_tb_system_call storage=system/_ohiroma.ks]

*start

[cm  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_image_hide  time="0"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="大広間中.webp"  ]
[tb_start_tyrano_code]
さて、ここからどうしようか

; MAPボタン（例）
[button graphic="btn_map.webp" target="*open_map" x="20" y="450"]
[button graphic="btn_think.webp" target="*think" x="20" y="540"]
[_tb_end_tyrano_code]

[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[clickable  storage="ohiroma.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  _clickable_img=""  ]
[clickable  storage="ohiroma.ks"  x="375"  y="180"  width="505"  height="357"  target="*talkE"  _clickable_img=""  ]
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
#
大広間[p]
最初にここに来たときはこんなことになるなんて想像さえしてなかったな[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="ohiroma.ks"  target="*start"  ]
*think

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="600"  storage="default/家賛成.webp"  width="467"  height="331"  x="400"  y="100"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ナゾEさんは少し変わってるな[p]
この時の答えが何かを答えればいいんだな[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[jump  storage="ohiroma.ks"  target="*start"  ]
*talkE

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
わ、私に何か用ですか・・・？[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="ohiroma.ks"  size="20"  text="答える"  x="965"  y="150"  width="140"  height="52"  _clickable_img=""  target="*ans"  ]
[glink  color="btn_19_black"  storage="ohiroma.ks"  size="20"  text="何もない"  x="965"  y="280"  width="140"  height="52"  _clickable_img=""  ]
[s  ]
*no_ans

[tb_start_text mode=1 ]
#ナゾE
は、犯人を捕まえるためにが、がんばりましょう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="ohiroma.ks"  target="*start"  ]
*ans

[tb_start_text mode=1 ]
ナゾEさん[p]
昨日ナゾCさんに答えを伝えた時のあなたの答えは・・・[p]
[_tb_end_text]

[jump  storage="ohiroma.ks"  target="*start_nazo"  ]
[tb_start_tyrano_code]
*start_nazo
[cm]

; ▼ ここでメッセージ枠を非表示にする！
[tb_hide_message_window  ]

[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[eval exp="f.answer = ''"]

; ▼ 変更点①：画像は「ループの外」で1回だけ表示して置きっぱなしにする！
[tb_image_show time="0" storage="default/五十音表.webp" x="0" y="152" name="gojuon_bg"]

; ▼ 変更点②：テキストも1回だけベースを作る（name="ans_text" を付けるのが超重要）
[ptext name="ans_text" layer="1" x="250" y="210" size="40" color="black" text="&f.answer"]

*show_keyboard
; ▼ 変更点③：ここでは画像クリア（freeimage）をせず、[cm] で古い当たり判定だけをリセットする
[cm]

; ▼ 変更点④：文字だけを「上書き（overwrite）」で更新する！
[ptext name="ans_text" layer="1" x="255" y="210" size="40" color="black" text="&f.answer" overwrite="true"]

; ===================================
; ② クリッカブルマップの配置（当たり判定）
; ===================================
; （ここから下は今まで通り [clickable] の羅列が続きます！）
; 【あ行】
[clickable x="995" y="324" width="62" height="62" target="*c_a"  opacity="30"]
[clickable x="995" y="398" width="62" height="62" target="*c_i"  opacity="30"]
[clickable x="995" y="472" width="62" height="62" target="*c_u"  opacity="30"]
[clickable x="995" y="546" width="62" height="62" target="*c_e"  opacity="30"]
[clickable x="995" y="620" width="62" height="62" target="*c_o"  opacity="30"]

; 【か行】
[clickable x="920" y="324" width="62" height="62" target="*c_ka"  opacity="30"]
[clickable x="920" y="398" width="62" height="62" target="*c_ki"  opacity="30"]
[clickable x="920" y="472" width="62" height="62" target="*c_ku"  opacity="30"]
[clickable x="920" y="546" width="62" height="62" target="*c_ke"  opacity="30"]
[clickable x="920" y="620" width="62" height="62" target="*c_ko"  opacity="30"]

; 【さ行】
[clickable x="844" y="324" width="62" height="62" target="*c_sa"  opacity="30"]
[clickable x="844" y="398" width="62" height="62" target="*c_shi"  opacity="30"]
[clickable x="844" y="472" width="62" height="62" target="*c_su"  opacity="30"]
[clickable x="844" y="546" width="62" height="62" target="*c_se"  opacity="30"]
[clickable x="844" y="620" width="62" height="62" target="*c_so"  opacity="30"]

; 【た行】
[clickable x="769" y="324" width="62" height="62" target="*c_ta"  opacity="30"]
[clickable x="769" y="398" width="62" height="62" target="*c_chi"  opacity="30"]
[clickable x="769" y="472" width="62" height="62" target="*c_tsu"  opacity="30"]
[clickable x="769" y="546" width="62" height="62" target="*c_te"  opacity="30"]
[clickable x="769" y="620" width="62" height="62" target="*c_to"  opacity="30"]

; 【な行】
[clickable x="693" y="324" width="62" height="62" target="*c_na"  opacity="30"]
[clickable x="693" y="398" width="62" height="62" target="*c_ni"  opacity="30"]
[clickable x="693" y="472" width="62" height="62" target="*c_nu"  opacity="30"]
[clickable x="693" y="546" width="62" height="62" target="*c_ne"  opacity="30"]
[clickable x="693" y="620" width="62" height="62" target="*c_no"  opacity="30"]

; 【は行】
[clickable x="618" y="324" width="62" height="62" target="*c_ha"  opacity="30"]
[clickable x="618" y="398" width="62" height="62" target="*c_hi"  opacity="30"]
[clickable x="618" y="472" width="62" height="62" target="*c_fu"  opacity="30"]
[clickable x="618" y="546" width="62" height="62" target="*c_he"  opacity="30"]
[clickable x="618" y="620" width="62" height="62" target="*c_ho"  opacity="30"]

; 【ま行】
[clickable x="542" y="324" width="62" height="62" target="*c_ma"  opacity="30"]
[clickable x="542" y="398" width="62" height="62" target="*c_mi"  opacity="30"]
[clickable x="542" y="472" width="62" height="62" target="*c_mu"  opacity="30"]
[clickable x="542" y="546" width="62" height="62" target="*c_me"  opacity="30"]
[clickable x="542" y="620" width="62" height="62" target="*c_mo"  opacity="30"]

; 【や行】
[clickable x="466" y="324" width="62" height="62" target="*c_ya"  opacity="30"]
[clickable x="466" y="472" width="62" height="62" target="*c_yu"  opacity="30"]
[clickable x="466" y="620" width="62" height="62" target="*c_yo"  opacity="30"]

; 【ら行】
[clickable x="391" y="324" width="62" height="62" target="*c_ra"  opacity="30"]
[clickable x="391" y="398" width="62" height="62" target="*c_ri"  opacity="30"]
[clickable x="391" y="472" width="62" height="62" target="*c_ru"  opacity="30"]
[clickable x="391" y="546" width="62" height="62" target="*c_re"  opacity="30"]
[clickable x="391" y="620" width="62" height="62" target="*c_ro"  opacity="30"]

; 【わ行】
[clickable x="315" y="324" width="62" height="62" target="*c_wa"  opacity="30"]
[clickable x="315" y="620" width="62" height="62" target="*c_wo"  opacity="30"]

; 【ん】
[clickable x="240" y="324" width="62" height="62" target="*c_nn"  opacity="30"]

; 【記号（ピンクの列）】
[clickable x="240" y="398" width="62" height="62" target="*c_daku"  opacity="30"]
[clickable x="240" y="472" width="62" height="62" target="*c_han"  opacity="30"]
[clickable x="240" y="546" width="62" height="62" target="*c_cho"  opacity="30"]
[clickable x="240" y="620" width="62" height="62" target="*mod_small"  opacity="30"]

; 【操作・決定ボタン】
[clickable x="127" y="401" width="84" height="77" target="*del_one"  opacity="30"]
[clickable x="127" y="503" width="84" height="77" target="*del_all"  opacity="30"]
[clickable x="127" y="604" width="84" height="77" target="*do_return"  opacity="30"]

[clickable x="847" y="199" width="130" height="77" target="*check_answer"  opacity="30"]

[s]

; ===================================
; ▼ ここから下は、各文字をクリックした時の「文字追加」処理
; ===================================
*c_a
[eval exp="f.answer = f.answer + 'あ'"]
@jump target="*show_keyboard"
*c_i
[eval exp="f.answer = f.answer + 'い'"]
@jump target="*show_keyboard"
*c_u
[eval exp="f.answer = f.answer + 'う'"]
@jump target="*show_keyboard"
*c_e
[eval exp="f.answer = f.answer + 'え'"]
@jump target="*show_keyboard"
*c_o
[eval exp="f.answer = f.answer + 'お'"]
@jump target="*show_keyboard"

*c_ka
[eval exp="f.answer = f.answer + 'か'"]
@jump target="*show_keyboard"
*c_ki
[eval exp="f.answer = f.answer + 'き'"]
@jump target="*show_keyboard"
*c_ku
[eval exp="f.answer = f.answer + 'く'"]
@jump target="*show_keyboard"
*c_ke
[eval exp="f.answer = f.answer + 'け'"]
@jump target="*show_keyboard"
*c_ko
[eval exp="f.answer = f.answer + 'こ'"]
@jump target="*show_keyboard"

*c_sa
[eval exp="f.answer = f.answer + 'さ'"]
@jump target="*show_keyboard"
*c_shi
[eval exp="f.answer = f.answer + 'し'"]
@jump target="*show_keyboard"
*c_su
[eval exp="f.answer = f.answer + 'す'"]
@jump target="*show_keyboard"
*c_se
[eval exp="f.answer = f.answer + 'せ'"]
@jump target="*show_keyboard"
*c_so
[eval exp="f.answer = f.answer + 'そ'"]
@jump target="*show_keyboard"

*c_ta
[eval exp="f.answer = f.answer + 'た'"]
@jump target="*show_keyboard"
*c_chi
[eval exp="f.answer = f.answer + 'ち'"]
@jump target="*show_keyboard"
*c_tsu
[eval exp="f.answer = f.answer + 'つ'"]
@jump target="*show_keyboard"
*c_te
[eval exp="f.answer = f.answer + 'て'"]
@jump target="*show_keyboard"
*c_to
[eval exp="f.answer = f.answer + 'と'"]
@jump target="*show_keyboard"

*c_na
[eval exp="f.answer = f.answer + 'な'"]
@jump target="*show_keyboard"
*c_ni
[eval exp="f.answer = f.answer + 'に'"]
@jump target="*show_keyboard"
*c_nu
[eval exp="f.answer = f.answer + 'ぬ'"]
@jump target="*show_keyboard"
*c_ne
[eval exp="f.answer = f.answer + 'ね'"]
@jump target="*show_keyboard"
*c_no
[eval exp="f.answer = f.answer + 'の'"]
@jump target="*show_keyboard"

*c_ha
[eval exp="f.answer = f.answer + 'は'"]
@jump target="*show_keyboard"
*c_hi
[eval exp="f.answer = f.answer + 'ひ'"]
@jump target="*show_keyboard"
*c_fu
[eval exp="f.answer = f.answer + 'ふ'"]
@jump target="*show_keyboard"
*c_he
[eval exp="f.answer = f.answer + 'へ'"]
@jump target="*show_keyboard"
*c_ho
[eval exp="f.answer = f.answer + 'ほ'"]
@jump target="*show_keyboard"

*c_ma
[eval exp="f.answer = f.answer + 'ま'"]
@jump target="*show_keyboard"
*c_mi
[eval exp="f.answer = f.answer + 'み'"]
@jump target="*show_keyboard"
*c_mu
[eval exp="f.answer = f.answer + 'む'"]
@jump target="*show_keyboard"
*c_me
[eval exp="f.answer = f.answer + 'め'"]
@jump target="*show_keyboard"
*c_mo
[eval exp="f.answer = f.answer + 'も'"]
@jump target="*show_keyboard"

*c_ya
[eval exp="f.answer = f.answer + 'や'"]
@jump target="*show_keyboard"
*c_yu
[eval exp="f.answer = f.answer + 'ゆ'"]
@jump target="*show_keyboard"
*c_yo
[eval exp="f.answer = f.answer + 'よ'"]
@jump target="*show_keyboard"

*c_ra
[eval exp="f.answer = f.answer + 'ら'"]
@jump target="*show_keyboard"
*c_ri
[eval exp="f.answer = f.answer + 'り'"]
@jump target="*show_keyboard"
*c_ru
[eval exp="f.answer = f.answer + 'る'"]
@jump target="*show_keyboard"
*c_re
[eval exp="f.answer = f.answer + 'れ'"]
@jump target="*show_keyboard"
*c_ro
[eval exp="f.answer = f.answer + 'ろ'"]
@jump target="*show_keyboard"

*c_wa
[eval exp="f.answer = f.answer + 'わ'"]
@jump target="*show_keyboard"
*c_wo
[eval exp="f.answer = f.answer + 'を'"]
@jump target="*show_keyboard"

*c_nn
[eval exp="f.answer = f.answer + 'ん'"]
@jump target="*show_keyboard"

*c_daku
[eval exp="f.answer = f.answer + '゛'"]
@jump target="*show_keyboard"
*c_han
[eval exp="f.answer = f.answer + '゜'"]
@jump target="*show_keyboard"
*c_cho
[eval exp="f.answer = f.answer + 'ー'"]
@jump target="*show_keyboard"

*mod_small
; 小文字変換の処理（必要であれば実装）
@jump target="*show_keyboard"

; ===================================
; ▼ 操作系ボタンの処理
; ===================================
*del_one
[if exp="f.answer.length > 0"]
[eval exp="f.answer = f.answer.substring(0, f.answer.length - 1)"]
[endif]
@jump target="*show_keyboard"

*del_all
[eval exp="f.answer = ''"]
@jump target="*show_keyboard"

*do_return
[cm]
[freeimage layer="1" time="0"]
[jump storage="&f.return_file" target="&f.return_label"]

; ===================================
; ▼ 答え合わせの処理（正解は「らいふ」）
; ===================================
*check_answer
[cm]
[freeimage layer="1" time="0"]
[layopt layer="message0" visible="true"]

[if exp="f.answer == 'こうさん'"]
#
『こうさん』ですね！[p]
; ▼ 正解時のジャンプ
@jump target="*true"
[else]
#ナゾE
『[emb exp="f.answer"]』……？
ち、違いますっ[p]
; ▼ 不正解時はやり直し
@jump target="*start"
[endif]
[s]
[_tb_end_tyrano_code]

[s  ]
*true

[tb_start_text mode=1 ]
#ナゾE
そ、その通りです[p]
す、すごいですね[p]
[_tb_end_text]

[tb_start_tyrano_code]
#
よし、なんとか正解したぞ[p]

; ▼ フラグを立てる
[eval exp="f.answer1_1 = 1"]

; ▼ ここで全部揃ったかチェック！
[if exp="f.answer1_1 == 1 && f.answer1_2 == 1 && f.answer1_3 == 1"]
#茶々丸
全員の答えが分かったようだニャ
ちょうどナゾCの血も落ちたみたいだニャ
ナゾCの姿を確認するニャ[p]
; 次のシナリオへ飛ぶ
@jump storage="scene8.ks" target="*start"
[endif]

; ▼ 全部揃っていない場合は、通常通りマップへ戻る
@jump storage="ohiroma.ks" target="*start"
[_tb_end_tyrano_code]

*open_map

[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
; ▼ ここが重要！「大広間の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'ohiroma.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="大広間中.webp"  ]
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
[eval exp="f.return_file = 'ohiroma.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

