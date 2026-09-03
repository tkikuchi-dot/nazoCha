[_tb_system_call storage=system/_yugisitu.ks]

[call  storage="common_ui.ks"  target="*init"  ]
*start

[cm  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="遊戯室中.webp"  ]
[tb_start_tyrano_code]
さて、ここからどうしようか

; MAPボタン（例）
[button graphic="btn_map.webp" target="*open_map" x="20" y="450"]
[button graphic="btn_think.webp" target="*think" x="20" y="540"]
[_tb_end_tyrano_code]

[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[clickable  storage="yugisitu.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  _clickable_img=""  ]
[clickable  storage="yugisitu.ks"  x="375"  y="108"  width="505"  height="357"  target="*talkB"  _clickable_img=""  ]
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
遊戯室だ[p]
ダーツにビリヤード、カラオケまである本格派だ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="yugisitu.ks"  target="*start"  ]
*think

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="600"  storage="default/B.webp"  width="467"  height="331"  x="400"  y="100"  _clickable_img=""  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ナゾBさんは昨日と姿が変わらないな[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[jump  storage="yugisitu.ks"  target="*start"  ]
*talkB

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_image_hide  time="600"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
何か分かったのか？[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="yugisitu.ks"  size="20"  text="答える"  x="965"  y="100"  width="140"  height="52"  _clickable_img=""  target="*ans"  ]
[glink  color="btn_19_black"  storage="ohiroma.ks"  size="20"  text="何もない"  x="965"  y="300"  width="140"  height="52"  _clickable_img=""  ]
[s  ]
*no_ans

[tb_start_text mode=1 ]
#ナゾB
おれに話しかける暇があんなら真面目に捜査しろよ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="yugisitu.ks"  target="*start"  ]
*ans

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ナゾBさん[p]
昨日ナゾCさんに答えを伝えた時のあなたの答えは・・・[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="yugisitu.ks"  size="20"  text="①ですね"  x="965"  y="170"  width="140"  height=""  _clickable_img=""  target="*1"  ]
[glink  color="btn_19_black"  storage="yugisitu.ks"  size="20"  text="②ですね"  x="965"  y="250"  width="140"  height=""  _clickable_img=""  target="*2"  ]
[glink  color="btn_19_black"  storage="yugisitu.ks"  size="20"  text="③ですね"  x="965"  y="330"  width="140"  height=""  _clickable_img=""  target="*3"  ]
[s  ]
*2

[tb_start_text mode=1 ]
#ナゾA
②ですね[p]
#ナゾB
まあその通りだ[p]
つってもおれは実質3択だしな[p]
[_tb_end_text]

[tb_start_tyrano_code]
#ナゾA
よし、なんとか正解したぞ[p]

; ▼ フラグを立てる
[eval exp="f.answer1_3 = 1"]

; ▼ ここで全部揃ったかチェック！
[if exp="f.answer1_1 == 1 && f.answer1_2 == 1 && f.answer1_3 == 1"]
#茶々丸
全員の答えが分かったようだニャ
ちょうど血も落ちたようだニャ
ナゾCの姿を確認するニャ[p]
; 次のシナリオへ飛ぶ
@jump storage="scene8.ks" target="*start"
[endif]

; ▼ 全部揃っていない場合は、通常通りマップへ戻る
@jump storage="yugisitu.ks" target="*start"
[_tb_end_tyrano_code]

*1

[tb_start_text mode=1 ]
#ナゾA
①ですね[p]
#ナゾB
ちげーよ[p]
３択外してんじゃねーよ[p]
ぶっとばすぞ[p]
[_tb_end_text]

[jump  storage="yugisitu.ks"  target="*start"  ]
*3

[tb_start_text mode=1 ]
#ナゾA
③ですね[p]
#ナゾB
ちげーよ[p]
３択外してんじゃねーよ[p]
ぶっとばすぞ[p]
[_tb_end_text]

[jump  storage="yugisitu.ks"  target="*start"  ]
*open_map

[chara_hide_all  time="0"  wait="true"  ]
[tb_start_tyrano_code]
; ▼ ここが重要！「遊戯室の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'yugisitu.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*start2

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="遊戯室中.webp"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
[_tb_end_tyrano_code]

[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[clickable  storage="yugisitu.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  _clickable_img=""  ]
[clickable  storage="yugisitu.ks"  x="375"  y="108"  width="505"  height="357"  target="*talkB2"  _clickable_img=""  ]
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
遊戯室[p]
ダーツやビリヤード、カラオケといった設備がある[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="yugisitu.ks"  target="*start2"  ]
*talkB2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
なんだってCは2時過ぎに出かけたんだろうな[p]
#
Bさんが帰ったタイミングと近かったと思うんですけど[p]
すれ違ったりしなかったんですか？[p]
#ナゾB
いや、すれ違ってないぞ[p]
確かにドアを開ける音は聞いた気がするが、特に気にしなかったな[p]
#
そうですか・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="false"  ]
[jump  storage="yugisitu.ks"  target="*start2"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ アイテム一覧
; ===================================

*open_item
; ▼ jump ではなく call を使う！
[call storage="item.ks" target="*start_item"]

; ▼ item.ks で [return] が実行されると、自動的に「ここ」に帰ってきます！
; 帰ってきたら、元の部屋の背景などを再表示してあげる
[bg storage="遊戯室中.webp" time="0"]
@jump target="*start2" ;（元のクリック待ちラベルなどへ飛ぶ）

; ===================================
; ▼ MAPへ
; ===================================
*open_map2
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'yugisitu.ks'"]
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
@jump target="*start2"
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="遊戯室中.webp"  ]
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
[eval exp="f.return_file = 'yugisitu.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

