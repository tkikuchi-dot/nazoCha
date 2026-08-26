[_tb_system_call storage=system/_scene7.ks]
[call storage="common_ui.ks" target="*init"]

*todaiyokujou

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="死体発見.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="茶々丸"  time="300"  wait="true"  storage="chara/6/茶々丸.webp"  width="579"  height="390"  left="368"  top="59"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
その通りニャ[p]
まず[font color="red" bold="true"]厨房は君自身で開けることができる[resetfont]ニャ[p]
その次に[font color="red" bold="true"]食堂[resetfont]だニャ[p]
これは[font color="red" bold="true"]Dが開けることができる[resetfont]ニャ[p]
開けた結果Dの姿はこうニャるニャ[p]
[_tb_end_text]

[chara_hide  name="茶々丸"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_image_show  time="1000"  storage="default/ハト月.webp"  width="505"  height="357"  x="375"  y="108"  name="img_9"  ]
[tb_start_text mode=1 ]
#茶々丸
[font color="red" bold="true"]「たいよう」[resetfont]が[font color="red" bold="true"]「つき」[resetfont]に変わってるニャ[p]
東の廊下に抜けたから大浴場に入れると思ったら大間違いニャ[p]
この段階ではDもカギを開けることはできニャいニャ[p]
次に入るべきは[font color="red" bold="true"]休憩室[resetfont]ニャ[p]
[font color="red" bold="true"]休憩室にはDが入ることができる[resetfont]ニャ[p]
入った結果こうニャるニャ[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/ハートつみき.webp"  width="505"  height="357"  x="375"  y="108"  name="img_12"  ]
[tb_start_text mode=1 ]
#茶々丸
[font color="red" bold="true"]「ハト」[resetfont]が[font color="red" bold="true"]「ハート」[resetfont]に[p]
[font color="red" bold="true"]「つき」[resetfont]が[font color="red" bold="true"]「つみき」[resetfont]に変わってるニャ[p]
それぞれ昨日消えた真ん中の文字が戻った形ニャ[p]
この状態にニャれば[font color="red" bold="true"]Dが大浴場のカギを開けることができる[resetfont]ニャ[p]
[_tb_end_text]

[wait  time="1000"  ]
[tb_image_hide  time="1000"  ]
[wait  time="1000"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/ハトタイヨウ.webp"  width="505"  height="357"  left="375"  top="108"  ]
[tb_start_text mode=1 ]
#ナゾD
このルートで行けばいいんすね了解っす[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾD"  time="1000"  wait="false"  pos_mode="true"  ]
[stopbgm  time="4000"  fadeout="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="大浴場中.webp"  ]
[playbgm  volume="50"  time="4000"  loop="true"  fadein="true"  storage="onsen-ryokan-1.mp3"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="2000"  ]
[tb_image_show  time="1000"  storage="default/死体.webp"  width="505"  height="357"  x="375"  y="108"  _clickable_img=""  name="img_28"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
これで血は落ちるんすかね[p]
#
分かんないけどやるしかないですね[p]
#茶々丸
ちゃちゃーん！[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_show  name="茶々丸"  time="1000"  wait="false"  storage="chara/6/茶々丸.webp"  width="546"  height="366"  left="63"  top="97"  reflect="false"  ]
[tb_image_show  time="1000"  storage="default/死体.webp"  width="432"  height="305"  x="699"  y="135"  _clickable_img=""  name="img_33"  ]
[tb_start_text mode=1 ]
#茶々丸
うんうん　いい感じに捜査が進んでるニャ[p]
#ナゾD
うわ！何しに来たっすか？[p]
#茶々丸
いいお知らせを持ってきたのニャ[p]
ナゾCの部屋のカギを開けたのニャ[p]
ここはもうカギが閉まらニャいようにしたから、lこれ以降自由に出入りできるのニャ[p]
#ナゾD
まじっすか[p]
じゃあ僕は血を落としておくので、その間にAさんはCさんの部屋を調べてもらっていいっすか？[p]
#茶々丸
うんうん[p]
捜査では情報共有と役割分担がとても大切ニャ[p]
ナゾEを大広間に呼んでおいたから、大広間から西の廊下に抜けるといいニャ～[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[stopbgm  time="4000"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="Cの部屋.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ここがCさんの部屋か[p]
犯人を突き止めるために探索を開始しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
*roomC

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_start_tyrano_code]
[cm]

; 5つのフラグがONなら、別のシナリオファイルにジャンプする！
[if exp="f.roomC1_1 == 1 && f.roomC1_2 == 1 && f.roomC1_3 == 1 && f.roomC1_4 == 1 && f.roomC1_5 == 1"]
; ▼ storageで飛び先のファイル名を指定します
@jump storage="scene7.ks" target="*after_roomC"
[endif]

; （以下、通常のボタン配置...）
[_tb_end_tyrano_code]

[tb_image_show  time="1000"  storage="default/btn_think.webp"  width="164"  height="71"  x="54"  y="414"  _clickable_img=""  name="img_49"  ]
[clickable  storage="scene7.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[clickable  storage="scene7.ks"  x="595"  y="435"  width="167"  height="89"  target="*raincoat"  _clickable_img=""  ]
[clickable  storage="scene7.ks"  x="477"  y="453"  width="55"  height="53"  target="*knife"  _clickable_img=""  ]
[clickable  storage="scene7.ks"  x="275"  y="498"  width="149"  height="77"  target="*memo"  _clickable_img=""  ]
[clickable  storage="scene7.ks"  x="54"  y="414"  width="164"  height="71"  target="*roomC_think"  _clickable_img=""  ]
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
ここがCさんの部屋[p]
もしかしたら犯行現場かもしれない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.roomC1_1=1"  name="roomC1_1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene7.ks"  target="*roomC"  ]
*raincoat

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/raincoat.webp"  width="644"  height="352"  x="312"  y="170"  _clickable_img=""  name="img_77"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
血が付いたレインコートだ[p]
犯人が着ていたものか？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.roomC1_2=1"  name="roomC1_2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene7.ks"  target="*roomC"  ]
*knife

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/knife.webp"  width="388"  height="388"  x="463"  y="104"  _clickable_img=""  name="img_88"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
血が付いた包丁だ[p]
これが凶器なのだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.roomC1_3=1"  name="roomC1_3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene7.ks"  target="*roomC"  ]
*memo

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/メモ.webp"  width="550"  height="357"  x="400"  y="140"  _clickable_img=""  name="img_99"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
・・・！[p]
これは・・・昨日時点での答えのメモか？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_alert_dialog  label_ok="OK"  text="「メモ」を入手しました"  ]
[tb_eval  exp="f.roomC1_4=1"  name="roomC1_4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene7.ks"  target="*roomC"  ]
*roomC_think

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
茶々丸がこのタイミングで開けた理由・・・[p]
必ず犯人につながる手がかりがあるはずだ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.roomC1_5=1"  name="roomC1_5"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene7.ks"  target="*roomC"  ]
*after_roomC

[cm  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="579"  height="390"  left="346"  top="99"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
無事に探索が終わったみたいだニャ[p]
ここからはMAPで自由に移動できるニャ[p]
まあカギの問題で移動できニャい所もあるけどニャ[p]
それと、昨日時点での各ナゾの答えも解答できるようにニャったニャ[p]
それぞれのナゾに話しかけると、解答できるニャ[p]
ナゾDが血を洗い終えるまで、それをやってみるニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*start

[cm  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="600"  ]
[bg  time="1000"  method="crossfade"  storage="Cの部屋.webp"  ]
[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="true"  storage="chara/6/茶々丸.webp"  width="579"  height="390"  left="346"  top="99"  reflect="false"  ]
[clickable  storage="scene7.ks"  x="346"  y="99"  width="579"  height="390"  target="*talk_brown"  _clickable_img=""  ]
[tb_start_tyrano_code]
さて、ここからどうしようか

; MAPボタン（例）
[button graphic="btn_map.webp" target="*open_map" x="20" y="500"]
[s]

*open_map
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'scene7.ks'"]
[eval exp="f.return_label = '*start'"]

; メモを残してからMAPへジャンプ！
[jump storage="map.ks" target="*start"]
[_tb_end_tyrano_code]

*talk_brown

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
ナゾDが洗い終わるまで[p]
MAPでナゾたちの場所に行って、それぞれの答えを解答するニャ[p]
解答は昨日ナゾCに伝えたときの解答だから気を付けるニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene7.ks"  target="*start"  ]
