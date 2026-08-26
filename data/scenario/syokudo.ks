[_tb_system_call storage=system/_syokudo.ks]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="食堂中.webp"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/ハトタイヨウ.webp"  width="244"  height="172"  left="206"  top="269"  reflect="false"  ]
[clickable  storage="syokudo.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  ]
[clickable  storage="syokudo.ks"  x="206"  y="269"  width="244"  height="172"  target="*talkD"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[button graphic="humidifier.webp" target="*check_humidifier" x="900" y="300" width="60" hight="60"]
[button graphic="tana.webp" target="*tana" x="616" y="313" width="145" hight="152"]
[_tb_end_tyrano_code]

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
食堂[p]
みんなでご飯を食べていたころが懐かしい[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="syokudo.ks"  target="*start2"  ]
*talkD

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/ハトタイヨウ.webp"  width="406"  height="287"  left="421"  top="146"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
言っときますけど、ぼくはAさんが犯人だと思ってますからね[p]
#
・・・疑いを晴らせるように頑張るよ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾD"  time="300"  wait="true"  pos_mode="true"  ]
[jump  storage="syokudo.ks"  target="*start2"  ]
*tana

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/tanaka.webp"  width="560"  height="419"  x="338"  y="120"  _clickable_img=""  name="img_43"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
食器棚だ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[button graphic="btn_return.webp" target="*start2" x="450" y="550"]
[_tb_end_tyrano_code]

[clickable  storage="syokudo.ks"  x="597"  y="169"  width="211"  height="124"  target="*check_dish"  _clickable_img=""  ]
[clickable  storage="syokudo.ks"  x="428"  y="311"  width="211"  height="124"  target="*check_cup"  _clickable_img=""  ]
[s  ]
[tb_start_tyrano_code]
; ===================================
; ▼ コップを調べた時
; ===================================
*check_cup
[cm]
[tb_image_hide time="0"]
[tb_show_message_window]

; 既に洗剤をかけて確認済みの場合
[if exp="f.wash_cup == 1"]
[tb_image_show time="300" storage="default/cup.webp" width="390" height="390" x="445" y="90" _clickable_img="" ]
#
コップだ。洗剤を使って確認済みだ。[p]
[tb_image_hide time="0"]

; アイテム（洗剤と睡眠薬）が両方揃っている場合
[elsif exp="f.item_detergent == 1 && f.item_pill == 1"]
[tb_image_show time="300" storage="default/cup.webp" width="390" height="390" x="445" y="90" _clickable_img="" ]
#
コップだ。これにいれた水に睡眠薬が仕込まれていたのかもしれない。洗剤をかける？[p]

; 選択肢
[link target="*do_wash_cup"] 【洗剤をかける】 [endlink][r]
[link target="*cancel_syokudo"] 【やめる】 [endlink]
[s]

; アイテムが揃っていない場合
[else]
[tb_image_show time="300" storage="default/cup.webp" width="390" height="390" x="445" y="90" _clickable_img="" ]
#
コップだ。昨日はこれで水を飲んだ。[p]
[tb_image_hide time="0"]
[endif]

@jump target="*cancel_syokudo"

*do_wash_cup
[cm]

; ▼ ご指定通り：一瞬画像を消して、同じ画像（または変化後の画像）を再表示
[tb_image_hide time="0"]
[tb_image_show time="300" storage="default/cup.webp" width="390" height="390" x="445" y="90" _clickable_img="" ]
#
コップに洗剤をかけた！
しかし何も変わらなかった[p]

[tb_image_hide time="0"]
@jump target="*cancel_syokudo"


; ===================================
; ▼ 食器を調べた時
; ===================================
*check_dish
[cm]
[tb_image_hide time="0"]
[tb_show_message_window]

[if exp="f.wash_dish == 1"]
[tb_image_show time="300" storage="default/dish.webp" width="280" height="280" x="500" y="183" _clickable_img="" ]
#
食器だ。洗剤を使って確認済みだ。[p]
[tb_image_hide time="0"]

[elsif exp="f.item_detergent == 1 && f.item_pill == 1"]
[tb_image_show time="300" storage="default/dish.webp" width="280" height="280" x="500" y="183" _clickable_img="" ]
#
食器だ。料理に睡眠薬が仕込まれていたのかもしれない。洗剤をかける？[p]
[link target="*do_wash_dish"] 【洗剤をかける】 [endlink][r]
[link target="*cancel_syokudo"] 【やめる】 [endlink]
[s]

[else]
[tb_image_show time="300" storage="default/dish.webp" width="280" height="280" x="500" y="183" _clickable_img="" ]
#
食器が並べられてある。昨日のご飯はおいしかったな。[p]
[tb_image_hide time="0"]
[endif]

@jump target="*cancel_syokudo"

*do_wash_dish
[cm]

; ▼ ご指定通り：一瞬画像を消して、同じ画像を表示
[tb_image_hide time="0"]
[tb_image_show time="300" storage="default/dish.webp" width="280" height="280" x="500" y="183" _clickable_img="" ]
#
食器に洗剤をかけた！
しかし何も変わらなかった[p]

[tb_image_hide time="0"]
@jump target="*cancel_syokudo"


; ===================================
; ▼ 加湿器を調べた時
; ===================================
*check_humidifier
[cm]
[tb_show_message_window]

; フィルター確認済みの場合
[if exp="f.wash_filter == 1"]
[tb_image_show time="300" storage="default/filter_purple.webp" width="226" height="352" x="503" y="70" _clickable_img="" ]
#
分解した加湿器だ。中のフィルターは確認済みだ。[p]
[tb_image_hide time="0"]
@jump target="*cancel_syokudo"
[endif]

; ▼ まず加湿器の画像を表示（※お手元の加湿器の画像名に変更してください）
[tb_image_show time="300" storage="default/humidifier.webp" width="226" height="352" x="503" y="70" _clickable_img="" ]
#
一般的な加湿器だ。[p]

; ドライバーを持っている場合
[if exp="f.item_driver == 1"]
プラスドライバーで分解できそうだ。分解しますか？[p]
[link target="*open_humidifier"] 【分解する】 [endlink][r]
[link target="*cancel_syokudo"] 【やめる】 [endlink]
[s]
[else]
[tb_image_hide time="0"]
@jump target="*cancel_syokudo"
[endif]


*open_humidifier
[cm]
#
ガチャガチャ……。[p]

; ▼ フィルター画像に切り替え
[tb_image_hide time="0"]
[tb_image_show time="300" storage="default/filter.webp" width="226" height="352" x="503" y="70" _clickable_img="" ]
中からフィルターが出てきたぞ。[p]

; フィルターが出てきた状態で、洗剤・睡眠薬が揃っているか判定
[if exp="f.item_detergent == 1 && f.item_pill == 1"]
このフィルターにも洗剤をかけることができる。洗剤をかける？[p]
[link target="*do_wash_filter"] 【洗剤をかける】 [endlink][r]
[link target="*cancel_syokudo"] 【そのままにする】 [endlink]
[s]
[else]
[tb_image_hide time="0"]
@jump target="*cancel_syokudo"
[endif]

*do_wash_filter
[cm]

; ▼ 変色したフィルター画像に切り替え
[tb_image_hide time="0"]
[tb_image_show time="300" storage="default/filter_purple.webp" width="226" height="352" x="503" y="70" _clickable_img="" ]
#
フィルターに洗剤をかけた！
変色した。[p]

[jump storage="scene9.ks" target="*start"]


; ===================================
; ▼ 調べるのをやめた時の戻り先
; ===================================
*cancel_syokudo
[cm]
[tb_image_hide time="0"]
[tb_hide_message_window]
; ▼ 食堂の探索画面（元のラベル）へ戻る
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
[bg storage="食堂中.webp" time="0"]
@jump target="*start2" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'syokudo.ks'"]
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

