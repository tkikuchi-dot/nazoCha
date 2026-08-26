[_tb_system_call storage=system/_syueisitu.ks]

[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

*start2

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="守衛室.webp"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/家賛成.webp"  width="284"  height="200"  left="900"  top="314"  reflect="false"  ]
[clickable  storage="syueisitu.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[clickable  storage="syueisitu.ks"  x="348"  y="350"  width="319"  height="153"  target="*monitor"  _clickable_img=""  ]
[clickable  storage="syueisitu.ks"  x="473"  y="138"  width="194"  height="131"  target="*monitor"  _clickable_img=""  ]
[clickable  storage="syueisitu.ks"  x="828"  y="365"  width="157"  height="108"  target="*monitor"  _clickable_img=""  ]
[clickable  storage="syueisitu.ks"  x="665"  y="364"  width="150"  height="93"  target="*movie"  _clickable_img=""  ]
[clickable  storage="syueisitu.ks"  x="900"  y="314"  width="284"  height="200"  target="*talkE"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map2" x="20" y="560"]
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
ここは守衛室か[p]
館に不釣り合いなパソコンとモニターが置いてある[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="syueisitu.ks"  target="*start2"  ]
*talkE

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/家賛成.webp"  width="507"  height="360"  left="399"  top="163"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
え、Aさんはアリバイ証明できそうですか？[p]
#
まだです[p]
#ナゾE
そ、そうですか・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="false"  ]
[jump  storage="syueisitu.ks"  target="*start2"  ]
*monitor

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
モニターには何も映っていない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="syueisitu.ks"  target="*start2"  ]
*movie

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
このモニターだけ映像が映っている[p]
大浴場の前の扉のようだ[p]
巻き戻してみると[p]
19時30分ごろにDとEが探索に来た時と、0時半ごろにBとDが入っていく様子、そして[p]
時半ごろに出ていく様子が映し出されている[p]
どうやら茶々丸が時間を止めるまで、それ以外の出入りはなさそうだ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="syueisitu.ks"  target="*start2"  ]
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
[eval exp="f.return_file = 'syueisitu.ks'"]
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
なんとか疑いを晴らす材料を見つけないと[p]
[tb_hide_message_window]
@jump target="*start2"
[_tb_end_tyrano_code]

*start3

[cm  ]
[bg  time="1000"  method="crossfade"  storage="守衛室.webp"  ]
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
[eval exp="f.return_file = 'syueisitu.ks'"]
[eval exp="f.return_label = '*start3'"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

