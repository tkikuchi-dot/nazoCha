[_tb_system_call storage=system/_scene6.ks]

[call  storage="common_ui.ks"  target="*init"  ]
*morning

[stopbgm  time="1000"  ]
[wait  time="3000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
・・・・・・・[p]
・・・なんだっけこの部屋[p]
・・・ああそうか　思い出した[p]
昨日この館に招待されて、急に眠くなったから寝ちゃったんだ[p]
・・・・・・・[p]
やけに静かな気がする[p]
[_tb_end_text]

[tb_hide_message_window  ]
*roomA

[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="600"  ]
[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="部屋から出る"  x="545"  y="159"  width="180"  height="51"  _clickable_img=""  target="*do"  ]
[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="部屋から出ない"  x="545"  y="295"  width="180"  height="51"  _clickable_img=""  target="*dont"  ]
[s  ]
*dont

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
もう少し部屋で休もう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="scene6.ks"  target="*roomA"  ]
*do

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
よし、部屋から出てみんなと合流するか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="1000"  storage="default/黒背景.webp"  width="1280"  height="720"  name="img_29"  ]
[tb_image_hide  time="0"  ]
[bg  time="0"  method="vanishIn"  storage="impact3.webp"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="忍び寄る恐怖.mp3"  ]
[wait  time="500"  ]
[bg  time="0"  method="vanishIn"  storage="impact12.webp"  ]
[wait  time="500"  ]
[bg  time="0"  method="vanishIn"  storage="impact1.webp"  ]
[wait  time="500"  ]
[bg  time="0"  method="vanishIn"  storage="死体発見.webp"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="蘇るトラウマ.mp3"  ]
[camera  time="3000"  zoom="1"  wait="false"  x="200"  y="100"  layer="base"  ease_type="linear"  rotate="-5"  ]
[quake  time="3000"  count="10"  hmax="10"  wait="false"  vmax="10"  ]
[wait  time="1000"  ]
[font  size="28"  color="0xfa0000"  bold="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
う、うわああぁぁああぁああぁぁぁ！！！！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="1000"  storage="default/黒背景.webp"  width="1280"  height="720"  name="img_47"  ]
[reset_camera  time="0"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="Metropolis_Destruction.mp3"  ]
*hakken

[tb_start_tyrano_code]
[cm]

; 3つのフラグがONなら、別のシナリオファイルにジャンプする！
[if exp="f.hakken1_1 == 1 && f.hakken1_2 == 1 && f.hakken1_3 == 1 && f.hakken1_4 == 1"]
; ▼ storageで飛び先のファイル名を指定します
@jump storage="scene6.ks" target="*start"
[endif]

; （以下、通常のボタン配置...）
[_tb_end_tyrano_code]

[tb_image_hide  time="1000"  ]
[tb_start_tyrano_code]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="730" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="1000" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="350" y="480"  time="1000" wait="true"]
[_tb_end_tyrano_code]

[tb_image_show  time="1000"  storage="default/btn_think.webp"  width="156"  height="67"  x="91"  y="423"  _clickable_img=""  name="img_55"  ]
[clickable  storage="scene6.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round"  ]
[clickable  storage="scene6.ks"  x="619"  y="523"  width="297"  height="131"  target="*shitai"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="958"  y="445"  width="326"  height="259"  target="*kekkon"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="91"  y="423"  width="164"  height="71"  target="*think"  _clickable_img=""  ]
[s  ]
*round

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
廊下だ[p]
ナゾCさんが血を流して倒れている[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.hakken1_1=1"  name="hakken1_1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*hakken"  ]
*shitai

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/死体.webp"  width="505"  height="357"  x="370"  y="108"  name="img_80"  _clickable_img=""  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
・・・息がない[p]
既にもう・・・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.hakken1_2=1"  name="hakken1_2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*hakken"  ]
*kekkon

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/kekkon.webp"  width="505"  height="357"  x="370"  y="108"  name="img_90"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
生々しい血の跡がある[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.hakken1_3=1"  name="hakken1_3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*hakken"  ]
*think

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
・・・・・！！！[p]
ナゾCさんが倒れている・・・！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.hakken1_4=1"  name="hakken1_4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*hakken"  ]
*start

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[wait  time="3000"  ]
[tb_image_show  time="1000"  storage="default/黒背景.webp"  width="1280"  height="720"  name="img_109"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
うっせーなぁ・・・[p]
何騒いでんだよ[p]
・・・ッ！！！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1500"  ]
[tb_image_show  time="1000"  storage="default/time_7.webp"  width="1280"  height="720"  name="img_115"  ]
[playbgm  volume="25"  time="2000"  loop="true"  storage="Dystopian_Walker.mp3"  fadein="true"  ]
[wait  time="1500"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
おい・・おいおいこれは[p]
これはどういう状況だよ[p]
#
わ、分かりません[p]
ぼくもさっき起きて部屋を出たらこうなってて[p]
#ナゾD
何の騒ぎっすか？[p]
[_tb_end_text]

[chara_move  name="ナゾB"  anim="true"  time="600"  effect="linear"  wait="true"  left="60"  top="180"  width="284"  height="200"  ]
[chara_show  name="茶々丸"  time="1000"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="50"  top="900"  reflect="false"  ]
[chara_show  name="ナゾD"  time="1000"  wait="false"  storage="chara/4/ハトタイヨウ.webp"  width="284"  height="200"  left="477"  top="180"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖賛成.webp"  width="284"  height="200"  left="855"  top="180"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾD
な、何なんすかこりゃ[p]
#ナゾE
いやああぁぁぁあ！！[p]
#ナゾD
とりあえず救急車呼ぶっす！[p]
#茶々丸
ちゃちゃーん！[p]
[_tb_end_text]

[chara_move  name="ナゾE"  anim="true"  time="300"  effect="linear"  wait="false"  left="965"  top="180"  width="243"  height="170"  ]
[chara_move  name="ナゾD"  anim="true"  time="300"  effect="linear"  wait="false"  left="660"  top="180"  width="243"  height="170"  ]
[chara_move  name="ナゾB"  anim="true"  time="300"  effect="linear"  wait="true"  left="355"  top="180"  width="243"  height="170"  ]
[chara_move  name="茶々丸"  anim="true"  time="300"  effect="linear"  wait="true"  top="180"  ]
[wait  time="1500"  ]
[tb_start_text mode=1 ]
#茶々丸
呼んだところでもう死んじゃってるから手遅れニャ[p]
いや～それにしてもとんでもニャいことが起きてしまったのニャ～[p]
#ナゾB
茶々丸・・・！[p]
これはお前の仕業か[p]
#茶々丸
疑うニャんてひどいニャ～[p]
ナゾCを殺した犯人は[p]
キミたち4人のうちの誰かニャ[p]
#ナゾB
・・・・！[p]
#ナゾD
えっ[p]
#ナゾE
ひ、ひぇっ[p]
#
・・・！！！[p]
#ナゾB
うそつけ[p]
明日になったらおもしろいことが起きるってさんざんてめーが言ってたじゃねーか[p]
お前がやったんだろうが[p]
#茶々丸
それも言ったけど「ボクはウソをつかニャい」とも言ったニャ[p]
ウソをつかないボクが言うんだから間違いニャいニャ[p]
犯人はキミたちのニャかにいるニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
これからキミたちにはこの事件を解決してもらうニャ[p]
ボクはそのサポートをするニャ[p]
#ナゾB
サポートだと？[p]
お前は犯人が誰か分かってるのか？[p]
#茶々丸
もちろん知ってるニャ[p]
誰がいつどうやって殺したのかも知ってるニャ[p]
だからみんニャの捜査のサポートに徹するニャ[p]
まずはここの備蓄庫[p]
ここはナゾＣが倒れていた重要ニャ場所だから開けておくニャ[p]
だから今後ここのカギを開ける必要はニャいニャ[p]
それと重要ニャことを伝えるニャ[p]
#ナゾB
重要なこと？[p]
#茶々丸
今この瞬間からこの館の時間を止めるニャ[p]
だから法則が7時のものから変化することはニャいニャ[p]
それとカギを開けた回数[p]
これもここからはカウントしニャいニャ[p]
#ナゾD
カギを開けた回数ってなんすかそりゃ[p]
#茶々丸
もう忘れちゃったのかニャ？[p]
まあ改めて説明するニャ[p]
その部屋のカギを開けた回数だニャ[p]
今はディスプレイの電源が入ってニャいみたいだから見えニャいかもニャが[p]
実際はカウントされてたニャ[p]
ちニャみにこのカウントは「カギを開けた回数」だから「ナゾに変化」が起きなくても加算されるニャ[p]
逆に「すでにナゾが入っている」ところのドアを開けても、カギはかかってニャいから加算されニャいニャ[p]
#ナゾB
ややこしいな[p]
#茶々丸
資料にまとめておくニャ[p]
とりあえず今この瞬間から[p]
①館の時間が止まった[p]
②扉のカウントがされニャくニャった[p]
と覚えておくのニャ[p]
じゃあまずは事件現場を見て色々調べてみるニャ～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[tb_start_tyrano_code]
; =====================================
; ▼ 捜査開始 カットイン演出
; =====================================
[layopt layer="1" visible="true"]

; folder="image" を削除し、デフォルトの fgimage フォルダを読ませます
[image layer="1" name="obi" storage="default/obi.webp" x="1280" y="300"]
[image layer="1" name="text" storage="default/text_sousakaisi.webp" x="1400" y="340"]

; スライドイン（左へ動く）
[anim name="obi" left="0" time="300"]
[anim name="text" left="450" time="400"]
[wa]

; 1秒間ストップして見せる
[wait time="1500"]

; スライドアウト（さらに左へ消える）
[anim name="obi" left="-1280" time="300"]
[anim name="text" left="-1280" time="300"]
[wa]

; アニメーションが終わった画像を綺麗に消去
[free name="obi" layer="1"]
[free name="text" layer="1"]
; =====================================
[_tb_end_tyrano_code]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[wait  time="1500"  ]
*sousa

[tb_start_tyrano_code]
[cm]

; 3つのフラグがONなら、別のシナリオファイルにジャンプする！
[if exp="f.sousa1_1 == 1 && f.sousa1_2 == 1 && f.sousa1_3 == 1 && f.sousa1_4 == 1 && f.sousa1_5 == 1 && f.sousa1_6 == 1 && f.sousa1_7 == 1 && f.sousa1_8 == 1"]
; ▼ storageで飛び先のファイル名を指定します
@jump storage="scene6.ks" target="*letswash"
[endif]

; （以下、通常のボタン配置...）
[_tb_end_tyrano_code]

[chara_hide_all  time="1000"  wait="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_image_hide  time="1000"  ]
[tb_start_tyrano_code]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="730" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="1000" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="350" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="170" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="587" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="965" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="587" y="380"  time="1000" wait="false"]
[_tb_end_tyrano_code]

[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="60"  top="180"  ]
[chara_show  name="ナゾD"  time="1000"  wait="false"  storage="chara/4/ハトタイヨウ.webp"  width="284"  height="200"  left="477"  top="180"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖賛成.webp"  width="284"  height="200"  left="855"  top="180"  reflect="false"  ]
[tb_image_show  time="1000"  storage="default/btn_think.webp"  width="156"  height="67"  x="91"  y="460"  _clickable_img=""  name="img_151"  ]
[clickable  storage="scene6.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round2"  ]
[clickable  storage="scene6.ks"  x="481"  y="0"  width="210"  height="529"  target="*bitiku"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="619"  y="523"  width="297"  height="131"  target="*shitai2"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="958"  y="445"  width="326"  height="259"  target="*kekkon2"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="91"  y="460"  width="164"  height="71"  target="*think2"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="60"  y="180"  width="284"  height="200"  target="*talkB"  ]
[clickable  storage="scene6.ks"  x="477"  y="180"  width="284"  height="200"  target="*talkD"  ]
[clickable  storage="scene6.ks"  x="855"  y="180"  width="284"  height="200"  target="*talkE"  ]
[s  ]
*round2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
廊下だ[p]
ナゾCさんが血を流して倒れている[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.sousa1_1=1"  name="sousa1_1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*bitiku

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[bg  time="1000"  method="fadeInLeft"  storage="備品庫中.webp"  cross="true"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
備蓄庫の中[p]
少し荒らされているようだ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1000"  ]
[bg  time="1000"  method="fadeInRight"  storage="死体発見.webp"  cross="true"  ]
[tb_eval  exp="f.sousa1_8=1"  name="sousa1_8"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*shitai2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/死体.webp"  width="505"  height="357"  x="375"  y="108"  name="img_196"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
喉を切られて死んでいる[p]
右下の「犯人」という文字だけ確認できるが、あとは血のせいで見えない[p]
[_tb_end_text]

[tb_alert_dialog  label_ok="OK"  text="手がかり「犯人」を入手しました"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_clue_1 = true; f.unlock_clue_1_p1= true"]
[eval exp="f.unlock_nazo_c_p3= true"]
[_tb_end_tyrano_code]

[playse  volume="50"  time="1000"  buf="0"  storage="決定ボタンを押す40.mp3"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.sousa1_2=1"  name="sousa1_2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*kekkon2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/kekkon.webp"  width="505"  height="357"  x="375"  y="108"  name="img_211"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
生々しい血の跡がある[p]
・・・ん？・・・この血痕・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_show  time="1000"  storage="default/to_roomC.webp"  width="1280"  height="720"  name="img_217"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
Cさんの部屋まで続いている・・・！[p]
犯行現場は備蓄庫の前じゃないのか？[p]
[_tb_end_text]

[tb_alert_dialog  label_ok="OK"  text="手がかり「血痕」を入手しました"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_clue_2 = true; f.unlock_clue_2_p1= true"]
[_tb_end_tyrano_code]

[playse  volume="50"  time="1000"  buf="0"  storage="決定ボタンを押す40.mp3"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.sousa1_3=1"  name="sousa1_3"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*think2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
捜査って何をすればいいんだ・・・？[p]
とりあえず色々調べてみるか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.sousa1_4=1"  name="sousa1_4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*talkB

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾB"  time="300"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="360"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
おれらの中に犯人がいるってのか[p]
言っとくがおれじゃねーぞ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.sousa1_5=1"  name="sousa1_5"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*talkD

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="300"  wait="true"  storage="chara/4/ハトタイヨウ.webp"  width="505"  height="357"  left="360"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
Cさん[p]
なんで死んじゃったんすかね・・・[p]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_d_p3= true"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_eval  exp="f.sousa1_6=1"  name="sousa1_6"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*talkE

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="300"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="360"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
うぇ～ん[p]
ひっぐ、ひっぐ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.sousa1_7=1"  name="sousa1_7"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene6.ks"  target="*sousa"  ]
*letswash

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[chara_hide_all  time="0"  wait="false"  ]
[tb_image_hide  time="0"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="527"  height="355"  left="379"  top="97"  reflect="false"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_doc_4 = true; f.unlock_doc_4_p1 = true"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
捜査は順調のようだニャ[p]
#ナゾA
順調なんですかね…[p]
ちょっと分からないです[p]
#茶々丸
自信を持つニャ[p]
事件の概要をまとめたから気にニャったら資料を確認するニャ[p]
じゃあ捜査で得た情報を発展させるニャ[p]
今この事件でおかしいと思うものを解決していくニャ[p]
まずはこの[font color="red" bold="true"]血痕から分かること[resetfont]を推理するニャ[p]
[font color="red" bold="true"]二つの言葉を組み合わせて正しい文章を作る[resetfont]ニャ[p]
[_tb_end_text]

[tb_start_tyrano_code]
*start_puzzle
[cm]
; ▼ 通常のメッセージ枠を非表示にして、画面全体を広く使う
[layopt layer="message0" visible="false"]

; ▼ 変数のリセット
[eval exp="f.sentence = ''"]
[eval exp="f.click_count = 0"]

[eval exp="f.btn1 = 0"] ; 正解：犯行現場は
[eval exp="f.btn2 = 0"] ; 正解：ナゾCの部屋だ
[eval exp="f.btn3 = 0"] ; ダミー：凶器は
[eval exp="f.btn4 = 0"] ; ダミー：血痕は
[eval exp="f.btn5 = 0"] ; ダミー：ナゾCは
[eval exp="f.btn6 = 0"] ; ダミー：拭かれていた
[eval exp="f.btn7 = 0"] ; ダミー：捨てられた

*show_buttons
[cm]
; ▼ ① 画面中央に組み立て中のテキストを浮かび上がらせる
; 一度古い文字を消してから、幅1280の中央(align=center)に配置します
[freeimage layer="1" time="0"]
[ptext layer="1" x="0" y="200" width="1280" align="center" size="40" color="white" text="&f.sentence"]

; ▼ ② 選択肢の配置（1280×720に合わせて2列に配置）
; --- 1列目（4つ） y=350 ---
[if exp="f.btn1 == 0"]
[glink color="black" text="犯行現場は" target="*click_1" x="70" y="430" width="185" size="20"]
[endif]
[if exp="f.btn3 == 0"]
[glink color="black" text="凶器は" target="*click_3" x="360" y="430" width="185" size="20"]
[endif]
[if exp="f.btn4 == 0"]
[glink color="black" text="血痕は" target="*click_4" x="650" y="430" width="185" size="20"]
[endif]
[if exp="f.btn6 == 0"]
[glink color="black" text="拭かれていた" target="*click_6" x="940" y="430" width="185" size="20"]
[endif]

; --- 2列目（3つ） y=500 ---
[if exp="f.btn5 == 0"]
[glink color="black" text="ナゾCは" target="*click_5" x="215" y="580" width="185" size="20"]
[endif]
[if exp="f.btn2 == 0"]
[glink color="black" text="ナゾCの部屋だ" target="*click_2" x="505" y="580" width="185" size="20"]
[endif]
[if exp="f.btn7 == 0"]
[glink color="black" text="捨てられた" target="*click_7" x="795" y="580" width="185" size="20"]
[endif]

[s]

; ===================================
; ▼ 各ボタンを押した時の処理（文字の足し算）
*click_1
[eval exp="f.btn1 = 1"]
[eval exp="f.sentence = f.sentence + '犯行現場は'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

*click_2
[eval exp="f.btn2 = 1"]
[eval exp="f.sentence = f.sentence + 'ナゾCの部屋だ'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

*click_3
[eval exp="f.btn3 = 1"]
[eval exp="f.sentence = f.sentence + '凶器は'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

*click_4
[eval exp="f.btn4 = 1"]
[eval exp="f.sentence = f.sentence + '血痕は'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

*click_5
[eval exp="f.btn5 = 1"]
[eval exp="f.sentence = f.sentence + 'ナゾCは'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

*click_6
[eval exp="f.btn6 = 1"]
[eval exp="f.sentence = f.sentence + '拭かれていた'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

*click_7
[eval exp="f.btn7 = 1"]
[eval exp="f.sentence = f.sentence + '捨てられた'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer"

; ===================================
; ▼ 判定処理
*check_answer
; 今回は「2つ」選んだら判定に進む
[if exp="f.click_count < 2"]
@jump target="*show_buttons"
[endif]

; 2つ選び終わった！
[cm]
; ▼ ここで中央のテキストを消し、メッセージ枠を復活させる
[freeimage layer="1" time="0"]
[layopt layer="message0" visible="true"]

; 完成した文章が正解かチェック
#ナゾA
[if exp="f.sentence == '犯行現場はナゾCの部屋だ'"]
そうか……！『犯行現場はナゾCの部屋だ』！[p]
; ▼ 正解なら次のシナリオへ！
; @jump storage="next_scenario.ks" target="*start"
[else]
#ナゾA
[emb exp="f.sentence"]……？ いや、これは違うな。もう一度考え直そう[p]
; ▼ 不正解なら最初からやり直し！
@jump target="*start_puzzle"
[endif]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
その通りだニャ[p]
犯行現場はこの備蓄庫の前じゃなくてナゾCの部屋だニャ[p]
#ナゾA
つまりナゾCさんは何者かに襲われた後、自分で移動したってことですか？[p]
#茶々丸
そういうことだニャ[p]
じゃあ次はニャんで[font color="red" bold="true"]死にかけのナゾCがわざわざ備蓄庫の前まで移動したのか[resetfont]考えるニャ[p]
[font color="red" bold="true"]二つの言葉を組み合わせて正しい文章を作る[resetfont]ニャ[p]
[_tb_end_text]

[tb_start_tyrano_code]
*start_puzzle2
[cm]
; ▼ 通常のメッセージ枠を非表示にして、画面全体を広く使う
[layopt layer="message0" visible="false"]

; ▼ 変数のリセット
[eval exp="f.sentence = ''"]
[eval exp="f.click_count = 0"]

[eval exp="f.btn1 = 0"] ; 正解：犯人が誰かを
[eval exp="f.btn2 = 0"] ; 正解：伝えようとしていた
[eval exp="f.btn3 = 0"] ; ダミー：犯行現場を
[eval exp="f.btn4 = 0"] ; ダミー：凶器を
[eval exp="f.btn5 = 0"] ; ダミー：救助を
[eval exp="f.btn6 = 0"] ; ダミー：隠そうとしていた
[eval exp="f.btn7 = 0"] ; ダミー：探していた

*show_buttons2
[cm]
; ▼ ① 画面中央に組み立て中のテキストを浮かび上がらせる
; 一度古い文字を消してから、幅1280の中央(align=center)に配置します
[freeimage layer="1" time="0"]
[ptext layer="1" x="0" y="200" width="1280" align="center" size="40" color="white" text="&f.sentence"]

; ▼ ② 選択肢の配置（1280×720に合わせて2列に配置）
; --- 1列目（4つ） y=350 ---
[if exp="f.btn1 == 0"]
[glink color="black" text="犯人が誰かを" target="*click_1_2" x="70" y="430" width="185" size="20"]
[endif]
[if exp="f.btn3 == 0"]
[glink color="black" text="犯行現場を" target="*click_3_2" x="360" y="430" width="185" size="20"]
[endif]
[if exp="f.btn4 == 0"]
[glink color="black" text="凶器を" target="*click_4_2" x="650" y="430" width="185" size="20"]
[endif]
[if exp="f.btn6 == 0"]
[glink color="black" text="隠そうとしていた" target="*click_6_2" x="940" y="430" width="185" size="20"]
[endif]

; --- 2列目（3つ） y=500 ---
[if exp="f.btn5 == 0"]
[glink color="black" text="救助を" target="*click_5_2" x="215" y="580" width="185" size="20"]
[endif]
[if exp="f.btn2 == 0"]
[glink color="black" text="伝えようとしていた" target="*click_2_2" x="505" y="580" width="185" size="20"]
[endif]
[if exp="f.btn7 == 0"]
[glink color="black" text="探していた" target="*click_7_2" x="795" y="580" width="185" size="20"]
[endif]

[s]

; ===================================
; ▼ 各ボタンを押した時の処理（文字の足し算）
*click_1_2
[eval exp="f.btn1 = 1"]
[eval exp="f.sentence = f.sentence + '犯人が誰かを'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

*click_2_2
[eval exp="f.btn2 = 1"]
[eval exp="f.sentence = f.sentence + '伝えようとしていた'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

*click_3_2
[eval exp="f.btn3 = 1"]
[eval exp="f.sentence = f.sentence + '犯行現場を'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

*click_4_2
[eval exp="f.btn4 = 1"]
[eval exp="f.sentence = f.sentence + '凶器を'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

*click_5_2
[eval exp="f.btn5 = 1"]
[eval exp="f.sentence = f.sentence + '救助を'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

*click_6_2
[eval exp="f.btn6 = 1"]
[eval exp="f.sentence = f.sentence + '隠そうとしていた'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

*click_7_2
[eval exp="f.btn7 = 1"]
[eval exp="f.sentence = f.sentence + '探していた'"]
[eval exp="f.click_count = f.click_count + 1"]
@jump target="*check_answer_2"

; ===================================
; ▼ 判定処理
*check_answer_2
; 今回は「2つ」選んだら判定に進む
[if exp="f.click_count < 2"]
@jump target="*show_buttons2"
[endif]

; 2つ選び終わった！
[cm]
; ▼ ここで中央のテキストを消し、メッセージ枠を復活させる
[freeimage layer="1" time="0"]
[layopt layer="message0" visible="true"]

; 完成した文章が正解かチェック
#ナゾA
[if exp="f.sentence == '犯人が誰かを伝えようとしていた'"]
そうか……！ナゾCさんはダイイングメッセージで『犯人が誰かを伝えようとしていた』んだ！[p]
; ▼ 正解なら次のシナリオへ！
; @jump storage="next_scenario.ks" target="*start"
[else]
#ナゾA
[emb exp="f.sentence"]……？ いや、これだとおかしいな。もう一度考え直そう[p]
; ▼ 不正解なら最初からやり直し！
@jump target="*start_puzzle2"
[endif]
[_tb_end_tyrano_code]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/死体.webp"  width="505"  height="357"  y="108"  x="375"  name="img_287"  ]
[tb_start_text mode=1 ]
#茶々丸
その通りニャ[p]
もうすぐ死んでしまうかもしれニャいと思う極限の状況で[p]
わざわざ「犯人」と書きかえたのは[p]
ダイイングメッセージで犯人が誰かを伝えるためニャ[p]

[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
なるほど[p]
確かにCは昨日右下が「犯人」に変化した時、「物騒な言葉で嫌だから」という理由でわざわざもう一度備蓄庫に入りなおして元に戻してたな[p]
そんなやつが「犯人」に変化させたってことは「ダイイングメッセージ」って可能性が高いわな[p]
#茶々丸
そういうことニャ[p]
じゃあナゾCが残したダイイングメッセージを読み解くのニャ[p]
#ナゾD
でもどこにそんなの隠されてるんすか？[p]
#ナゾB
とりあえずこいつの謎を解けばなんとかなりそうだがな[p]
#ナゾE
ひ、ひぇ～[p]
血がすごくて見れないです～[p]
#ナゾD
確かにこの血を何とかするしかないっすね[p]
[_tb_end_text]

*choice

[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
（この血を何とかする方法・・・）[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="大浴場に連れていく"  x="950"  y="230"  width="250"  height=""  _clickable_img=""  target="*true"  ]
[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="厨房に連れていく"  x="950"  y="115"  width="250"  height=""  _clickable_img=""  target="*false1"  ]
[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="自分の部屋に連れていく"  x="950"  y="345"  width="250"  height=""  _clickable_img=""  target="*false2"  ]
[s  ]
*false1

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
厨房に連れて行こう[p]
#ナゾB
連れて行ってどうするんだ？[p]
#ナゾA
・・・ッ！[p]
それは考えてないけど・・・[p]
#茶々丸
もう一回考え直すニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*choice"  ]
*false2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ぼくの部屋に連れて行こう[p]
#ナゾB
連れて行ってどうするんだ？[p]
#ナゾA
・・・ッ！[p]
それは考えてないけど・・・[p]
#ナゾB
こんな時にふざけてんじゃねーぞ[p]
#茶々丸
もう一回考え直すニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*choice"  ]
*true

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
大浴場に連れて行こう[p]
#ナゾB
連れて行ってどうするんだ？[p]
#ナゾA
血を洗って落とすんです！[p]
#ナゾB
なるほど[p]
意外にありかもな[p]
#茶々丸
いい考えニャ[p]
じゃあナゾAがナゾCを持つニャ[p]
連れて行ってあげるニャ[p]
#ナゾA
は、はい[p]
分かりました[p]
よ・・いしょっと[p]
・・・ってあれ？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="1000"  storage="default/shitaiato.webp"  width="543"  height="365"  x="364"  y="105"  _clickable_img=""  name="img_318"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
Cさんが倒れていた場所に・・・ボタン？[p]
#ナゾD
なんすかあれ？[p]
#ナゾB
あれは・・・？[p]
#ナゾE
な、なな、なんでしょう？[p]
#茶々丸
これはリセットボタンニャ[p]
さっきも説明した部屋ごとのカギを開けた回数がリセットされるボタンみたいニャ[p]
これはナゾCが力尽きて倒れた拍子に押されたみたいニャ[p]
一度押されたら24時間は押せニャいから、時間を止めた今押すことはできニャいニャ[p]
これはしまっておくニャ[p]
気を取りニャおして[p]
大浴場までのルートを考えるニャ[p]
ナゾAの他には連れて行けるのは1名だけニャ[p]
どうやったら大浴場の中に入れるのか考えるニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_alert_dialog  label_ok="OK"  text="大浴場までのルートを考えよう"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*route

[tb_image_hide  time="0"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="0"  method="crossfade"  storage="死体発見.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/ハトタイヨウ.webp"  width="243"  height="170"  left="660"  top="180"  ]
[chara_show  name="ナゾE"  time="600"  wait="false"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[chara_show  name="茶々丸"  time="600"  wait="true"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="50"  top="180"  ]
[tb_image_show  time="600"  storage="default/btn_think.webp"  width="156"  height="67"  x="91"  y="460"  _clickable_img=""  name="img_323"  ]
[tb_start_tyrano_code]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="730" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="1000" y="480"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="465" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="770" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="1065" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="190" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="300" y="500"  time="1000" wait="false"]
[_tb_end_tyrano_code]

[clickable  storage="scene6.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round3"  ]
[clickable  storage="scene6.ks"  x="619"  y="523"  width="297"  height="131"  target="*shitai3"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="958"  y="445"  width="326"  height="259"  target="*kekkon3"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="91"  y="460"  width="164"  height="71"  target="*think3"  _clickable_img=""  ]
[clickable  storage="scene6.ks"  x="355"  y="180"  width="243"  height="170"  target="*talkB2"  ]
[clickable  storage="scene6.ks"  x="660"  y="180"  width="243"  height="170"  target="*talkD2"  ]
[clickable  storage="scene6.ks"  x="965"  y="180"  width="243"  height="170"  target="*talkE2"  ]
[clickable  storage="scene6.ks"  x="50"  y="180"  width="300"  height="202"  target="*talkBrown"  ]
[s  ]
*round3

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
一体ここで何が起こったんだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="scene6.ks"  target="*route"  ]
*shitai3

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/死体.webp"  width="505"  height="357"  y="108"  x="375"  name="img_353"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ナゾCさん・・・！[p]
一体何を伝えたかったんだろう[p]
ナゾCさんの無念を晴らすためにも犯人を突き止めないと・・・！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*kekkon3

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/kekkon.webp"  width="505"  height="357"  x="375"  y="180"  name="img_363"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
生々しい血の跡がナゾCさんの部屋まで続いている[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*think3

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
大浴場まで行くにはどうしたらいいだろう[p]
この時間はぼくは「厨房」にしか行けそうにないな[p]
まずはみんなに話を聞いてみよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*talkB2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾB"  time="300"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="360"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
大浴場か[p]
昨日[font color="red" bold="true"]大浴場に入ったがDと一緒[resetfont]だったな[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*talkD2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="300"  wait="true"  storage="chara/4/ハトタイヨウ.webp"  width="505"  height="357"  left="360"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
そういえば関係ないかもっすけど[p]
昨日[font color="red" bold="true"]休憩室に入れた[resetfont]んで法則を共有するっす[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/room_rule3.webp"  width="678"  height="482"  name="img_394"  x="319"  y="31"  _clickable_img=""  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_doc_1_p6= true"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#ナゾD
休憩室の法則は[font color="red" bold="true"]「真ん中の文字を消す」[resetfont]っていう法則っす[p]
もう一回入ったら戻るはずっす[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_hide  name="ナゾD"  time="1000"  wait="false"  pos_mode="true"  ]
[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*talkE2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="300"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="360"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
え、Aさんの悲鳴を聞いてすぐ駆け付けました[p]
[font color="red" bold="true"]Dさんが食堂のドアを開けた[resetfont]のですが、[font color="red" bold="true"]厨房はわたしもDさんも開けられません[resetfont]でした[p]
[font color="red" bold="true"]わ、わたしが大広間を開けられた[resetfont]のでそこから合流したらあんなことに・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*talkBrown

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="茶々丸"  time="300"  wait="true"  storage="chara/6/茶々丸.webp"  width="522"  height="352"  left="414"  top="79"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
大浴場に行くルートが分かったらボクに伝えるニャ[p]
ルートが分かったニャ？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="分かった"  x="965"  y="180"  width="200"  height=""  _clickable_img=""  target="*understand"  ]
[glink  color="btn_19_black"  storage="scene6.ks"  size="20"  text="もう少し考える"  x="965"  y="300"  width="200"  height=""  _clickable_img=""  target="*more"  ]
[s  ]
*more

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
キミだけじゃ大浴場には行けニャいのニャ[p]
誰と一緒にどういうルートで行けば入れるようにニャるか考えるニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene6.ks"  target="*route"  ]
*understand

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
じゃあ[font color="red" bold="true"]連れていく人とその部屋を選択する[resetfont]ニャ[p]
選択するのは[font color="red" bold="true"]一人だけ[resetfont]ニャ[p]
[font color="red" bold="true"]部屋は訪れる順番に２部屋[resetfont]に入力するニャ[p]
#ナゾA
（今の時間、ぼくは厨房にしか行けない・・・！）[p]
（よし、厨房から考えよう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
*route_daiyokujou
[cm]
[tb_hide_message_window]
[chara_hide_all time="300"]
[freeimage layer="1" time="0"]

; ▼ 変数の初期化（人物、部屋、ステップ数をリセット）
[eval exp="tf.route_step = 0"]
[eval exp="tf.ans1 = ''"]
[eval exp="tf.ans2 = ''"]
[eval exp="tf.person = ''"]

*show_route_ui
[cm]
; ▼ 背景画像
[bg storage="ルート大浴場.webp" time="0"]
[freeimage layer="1" time="0"]

[layopt layer="1" visible="true"]

; ===================================
; ① 人物の選択状態（画像）を表示する
; ===================================
[if exp="tf.person == 'B'"]
[tb_image_show time="0" storage="default/select_b.webp" width="72.7" height="73.9" x="1021.1" y="153.6"]
[elsif exp="tf.person == 'D'"]
[tb_image_show time="0" storage="default/select_d.webp" width="72.7" height="73.9" x="1107.9" y="153.6"]
[elsif exp="tf.person == 'E'"]
[tb_image_show time="0" storage="default/select_e.webp" width="72.7" height="73.9" x="1194.7" y="153.6"]
[endif]


; ===================================
; ② 右側の空欄に選んだ部屋名を表示する
; ===================================
[ptext layer="1" text="&tf.ans1" x="1043.7" y="364" size="30" color="black" bold="true" name="ans1" width="201" align="center"]
[ptext layer="1" text="&tf.ans2" x="1043.7" y="450" size="30" color="black" bold="true" name="ans2" width="201" align="center"]


; ===================================
; ③ MAPの各部屋と人物にクリッカブルを配置する
; ===================================
; ▼ 人物選択ボタン（何度でも押し直せる）
[clickable target="*click_person_B" x="1021.1" y="153.6" width="72.7" height="73.9" color="white" opacity="0"]
[clickable target="*click_person_D" x="1107.9" y="153.6" width="72.7" height="73.9" color="white" opacity="0"]
[clickable target="*click_person_E" x="1194.7" y="153.6" width="72.7" height="73.9" color="white" opacity="0"]

; ▼ 部屋選択ボタン（2つ選び終わるまではMAPをクリックできる）
[if exp="tf.route_step < 2"]
[clickable target="*click_monooki" x="781.1" y="105.5"  width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_shuei"   x="781.1" y="534.4" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_shokudo" x="506.7" y="391.1" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_ohiroma" x="363.6" y="483.8" width="282.8" height="189.1" color="white" opacity="0"]
[clickable target="*click_chubo"   x="363.6" y="391.1" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_A"       x="63.1" y="248.5" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_B"       x="63.1" y="391.1" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_C"       x="63.1" y="534.4" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_D"       x="781.1" y="248.5" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_E"       x="781.1" y="391.1" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_bitikuko"       x="363.6" y="298.4" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_kyukeisitu"     x="506.7" y="298.4" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_daiyokujo"      x="363.6" y="105.5" width="139.5" height="111.5" color="white" opacity="0"]
[clickable target="*click_daiyokujo"      x="503.1" y="105.5" width="143.3" height="74.5" color="white" opacity="0"]
[clickable target="*click_yugisitu"       x="363.6" y="220.4" width="143.3" height="74.5" color="white" opacity="0"]
[clickable target="*click_yugisitu"       x="506.8" y="183.3" width="139.5" height="111.5" color="white" opacity="0"]
[clickable target="*click_kikaiseigyositu" x="63.1" y="105.5" width="165.5" height="139.1" color="white" opacity="0"]
[endif]


; ===================================
; ④ 右下の「決定」「やりなおす」ボタン
; ===================================
[clickable target="*check_answer2" x="1027.9" y="626.9" width="142.8" height="63.9" color="white" opacity="0"] ; 決定ボタン
[clickable target="*route_daiyokujou" x="1184.7" y="626.9" width="80.6" height="63.9" color="white" opacity="0"] ; やりなおす（入力をリセット）

[s]


; ===================================
; ▼ 人物をクリックした時の処理
; ===================================
*click_person_B
[eval exp="tf.person = 'B'"][jump target="*show_route_ui"]
*click_person_D
[eval exp="tf.person = 'D'"][jump target="*show_route_ui"]
*click_person_E
[eval exp="tf.person = 'E'"][jump target="*show_route_ui"]

; ===================================
; ▼ 各部屋をクリックした時の処理
; ===================================
*click_monooki
[eval exp="tf.selected_room = '物置'"][jump target="*process_selection"]
*click_shuei
[eval exp="tf.selected_room = '守衛室'"][jump target="*process_selection"]
*click_shokudo
[eval exp="tf.selected_room = '食堂'"][jump target="*process_selection"]
*click_ohiroma
[eval exp="tf.selected_room = '大広間'"][jump target="*process_selection"]
*click_chubo
[eval exp="tf.selected_room = '厨房'"][jump target="*process_selection"]
*click_A
[eval exp="tf.selected_room = 'Aの部屋'"][jump target="*process_selection"]
*click_B
[eval exp="tf.selected_room = 'Bの部屋'"][jump target="*process_selection"]
*click_C
[eval exp="tf.selected_room = 'Cの部屋'"][jump target="*process_selection"]
*click_D
[eval exp="tf.selected_room = 'Dの部屋'"][jump target="*process_selection"]
*click_E
[eval exp="tf.selected_room = 'Eの部屋'"][jump target="*process_selection"]
*click_daiyokujo
[eval exp="tf.selected_room = '大浴場'"][jump target="*process_selection"]
*click_yugisitu
[eval exp="tf.selected_room = '遊戯室'"][jump target="*process_selection"]
*click_kyukeisitu
[eval exp="tf.selected_room = '休憩室'"][jump target="*process_selection"]
*click_bitikuko
[eval exp="tf.selected_room = '備蓄庫'"][jump target="*process_selection"]
*click_kikaiseigyositu
[eval exp="tf.selected_room = '機械制御室'"][jump target="*process_selection"]

; ===================================
; ▼ 選んだ部屋名を、空いている枠に代入する処理
; ===================================
*process_selection
[if exp="tf.route_step == 0"]
[eval exp="tf.ans1 = tf.selected_room"]
[elsif exp="tf.route_step == 1"]
[eval exp="tf.ans2 = tf.selected_room"]
[endif]

; 代入が終わったらステップを「+1」して、UIの表示へ戻る
[eval exp="tf.route_step = tf.route_step + 1"]
[jump target="*show_route_ui"]


; ===================================
; ▼ 正誤の判定処理（決定ボタンを押した時）
; ===================================
*check_answer2
[cm]

; ▼ 人物が選ばれているか、部屋が2つ選ばれているかをチェック
[if exp="tf.person == '' || tf.route_step < 2"]
[tb_show_message_window]
#
まだすべて選択していないようだ。[p]
[tb_hide_message_window]
@jump target="*show_route_ui"
[endif]

; ▼ 「D」を選び、「食堂」→「休憩室」の順に選んでいるか判定
[if exp="tf.person == 'D' && tf.ans1 == '食堂' && tf.ans2 == '休憩室'"]
@jump target="*route_correct"
[else]
@jump target="*route_incorrect"
[endif]

; ===================================
; ▼ 判定後のジャンプ先
; ===================================
*route_correct
[tb_show_message_window]
[freeimage layer="1" time="0"]
#
これでいけるはずだ！[p]
[tb_hide_message_window]
@jump storage="scene7.ks" target="*todaiyokujou"

*route_incorrect
[tb_show_message_window]
#
いや、これだと上手く行かないな
もう一度考え直そう。[p]
[tb_hide_message_window]
; ▼ 手がかりを探し直せるように、大元の「route」へ戻る！
@jump target="*route"
[_tb_end_tyrano_code]

