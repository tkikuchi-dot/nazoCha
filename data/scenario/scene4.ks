[_tb_system_call storage=system/_scene4.ks]

[call  storage="common_ui.ks"  target="*init"  ]
*start

[bg  time="0"  method="crossfade"  storage="大広間中.webp"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="texture2.mp3"  fadein="true"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="80"  top="108"  ]
[chara_show  name="ナゾD"  time="1000"  wait="false"  storage="chara/4/ハートつみき.webp"  width="533"  height="379"  left="650"  top="108"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/家賛成.webp"  width="533"  height="379"  left="1500"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
あんまりうかつに動けないことは分かったが[p]
部屋の法則を突き止めるためにも探索はしないといけないな[p]
せっかくだし探索ついでにゲームしようぜ[p]
#ナゾD
おー！ゲームいいっすね！[p]
何するんですか？[p]
#ナゾB
そりゃ、「全員の答えを当てたやつの勝ち」ってゲームだ[p]
#ナゾD
めっちゃ面白そうじゃないっすか！[p]
でもぼくとBさんは割と答え出そうですけど[p]
AさんとEさんは黒塗りの面積大きいから当てるの難しそうですよ[p]
#ナゾB
そこが面白いんじゃねーか[p]
部屋の法則もあるし、色々移動してたらそのうち答え分かるだろ[p]
#ナゾD
それもそうっすね[p]
景品とかはあるんですか？[p]
#ナゾB
あー、なんも考えてなかったな[p]
「まとめナゾで文字をいっぱい拾ってもらえる」とかでいいんじゃねーか？[p]
#ナゾD
よしそれにしましょう！[p]
燃えてきたぞ～[p]
#ナゾB
おい、Ｅお前マスク取れ[p]
[_tb_end_text]

[chara_move  name="ナゾD"  anim="true"  time="500"  effect="linear"  wait="true"  top="108"  left="1500"  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="easeOutQuad"  wait="true"  left="650"  top="108"  ]
[tb_start_text mode=1 ]
#ナゾE
ひ、ひぇ～[p]
勘弁してください～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="50"  time="1000"  buf="0"  storage="ドア・大扉開ける01.mp3"  ]
[wait  time="1500"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="533"  height="379"  left="340"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾC
・・・・・[p]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_c = true; f.unlock_nazo_c_p1 = true"]
[_tb_end_tyrano_code]

[wait  time="1500"  ]
[chara_move  name="ナゾC"  anim="true"  time="1000"  effect="easeOutQuad"  wait="false"  left="66"  top="180"  width="284"  height="200"  ]
[chara_show  name="ナゾD"  time="1000"  wait="false"  left="855"  top="180"  width="284"  height="200"  storage="chara/4/ハートつみき.webp"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  top="180"  width="284"  height="200"  left="477"  storage="chara/2/混戦.webp"  ]
[tb_start_text mode=1 ]
#ナゾD
あれ、まだだれか来るんですね[p]
てっきり茶々丸が扉閉めてると思ってたっす[p]
#ナゾB
出ようとしたら閉めるって言ってたろ[p]
#ナゾD
あーそういえばそうでしたね[p]
#ナゾC
・・・・・[p]
茶々丸・・・？[p]
これはどういう集まりなの？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1500"  ]
[tb_image_show  time="1000"  storage="default/説明した.webp"  width="1280"  height="720"  name="img_28"  ]
[wait  time="1500"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾC
なるほど、だいたい分かりました[p]
#ナゾD
で、今みんなのナゾの答えを当てようって話になってるんですけど[p]
Cさんもどうですか？[p]
#ナゾC
ごめんなさい[p]
そういうことには興味ないの[p]
#ナゾB
じゃあ審判ならどうだ？[p]
答えがあってるか判定する役だ[p]
それくらいだったら別にいいだろ？[p]
#ナゾC
別にいいわよ[p]
#ナゾB
よし、じゃあ決まりだ[p]
みんなCに自分の答えを教えてやれ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
*tell_ans

[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="300"  top="150"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="false"  storage="chara/3/箱庭.webp"  width="284"  height="200"  left="85"  top="290"  reflect="false"  ]
[chara_show  name="ナゾE"  time="1000"  wait="false"  storage="chara/5/家賛成.webp"  width="284"  height="200"  left="850"  top="150"  reflect="false"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/ハートつみき.webp"  width="284"  height="200"  left="600"  top="290"  reflect="false"  ]
[tb_start_tyrano_code]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="205" y="210"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="420" y="70"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="720" y="210"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="970" y="70"  time="1000" wait="true"]
[_tb_end_tyrano_code]

[clickable  storage="scene4.ks"  x="300"  y="150"  width="284"  height="200"  target="*talkB"  ]
[clickable  storage="scene4.ks"  x="85"  y="290"  width="284"  height="200"  target="*talkC"  ]
[clickable  storage="scene4.ks"  x="600"  y="290"  width="284"  height="200"  target="*talkD"  ]
[clickable  storage="scene4.ks"  x="850"  y="150"  width="284"  height="200"  target="*talkE"  ]
[s  ]
*talkB

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾB"  time="600"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="350"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
お前も早く自分の答えを教えろよ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾB"  time="300"  wait="true"  pos_mode="true"  ]
[jump  storage="scene4.ks"  target="*tell_ans"  ]
*talkD

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/ハートつみき.webp"  width="533"  height="379"  left="350"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
Aさんの答えまじで分かんないっすね[p]
ヒントとかないんすか？[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  target="*hint"  text="うーん"  x="970"  y="150"  width="140"  height="51"  _clickable_img=""  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  target="*hint2"  text="えーっと"  x="970"  y="300"  width="140"  height="51"  _clickable_img=""  ]
[s  ]
*hint

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_start_text mode=1 ]
#ナゾA
うーん、ないかな[p]
#ナゾＤ
えー、残念っす[p]
[_tb_end_text]

[chara_hide  name="ナゾD"  time="300"  wait="true"  pos_mode="true"  ]
[tb_hide_message_window  ]
[jump  storage="scene4.ks"  target="*tell_ans"  ]
*hint2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_start_text mode=1 ]
#ナゾA
えーっと、ないかな[p]
#ナゾＤ
えー、残念っす[p]
[_tb_end_text]

[chara_hide  name="ナゾD"  time="300"  wait="true"  pos_mode="true"  ]
[tb_hide_message_window  ]
[jump  storage="scene4.ks"  target="*tell_ans"  ]
*talkE

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/家賛成.webp"  width="533"  height="379"  left="350"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
わ、わたしはもう伝えました[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾE"  time="300"  wait="true"  pos_mode="true"  ]
[jump  storage="scene4.ks"  target="*tell_ans"  ]
*talkC

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾC"  time="600"  wait="true"  storage="chara/3/箱庭.webp"  width="533"  height="379"  left="350"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾC
・・・・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  x="965"  y="180"  width="140"  height="52"  text="教える"  _clickable_img=""  target="*true"  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  x="965"  y="300"  width="140"  height="52"  text="教えない"  _clickable_img=""  target="*false"  ]
[s  ]
*false

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[wait  time="1200"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾC
何しに来たの？[p]
#ナゾA
・・・・・・[p]
[_tb_end_text]

[chara_hide  name="ナゾC"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_hide_message_window  ]
[jump  storage="scene4.ks"  target="*tell_ans"  ]
*true

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
（ここに来る前後で謎が変わっちゃったけど）[p]
（Cさんは変化したの知らないし）[p]
（答えも変わってないから答えだけ伝えればいいか）[p]
ぼくの答えは・・・・・[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[wait  time="1500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#ナゾA
です[p]
#ナゾC
はい、分かりました[p]
[_tb_end_text]

[chara_hide  name="ナゾC"  time="300"  wait="true"  pos_mode="true"  ]
[tb_hide_message_window  ]
[wait  time="1500"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="80"  top="108"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/ハートつみき.webp"  width="533"  height="379"  left="650"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
みんな自分の答えは伝えたな[p]
#ナゾD
伝えたっす[p]
#ナゾB
よし、じゃあ館内を探索するか[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/MAP_west.webp"  width="674"  height="474"  x="306"  y="39"  _clickable_img=""  name="img_123"  ]
[tb_start_text mode=1 ]
#ナゾB
まずは館の西側から探索するか[p]
西側に部屋があるA、おれ、Cの3人で行こう[p]
DとEは大広間で待っていててくれ[p]
#ナゾD
オッケーっす[p]
#ナゾE
お、お留守番…[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/time_19.webp"  width="1280"  height="720"  name="img_127"  ]
[wait  time="1500"  ]
[tb_image_hide  time="1000"  ]
[wait  time="1500"  ]
[bg  time="2000"  method="fadeInLeft"  storage="西廊下.webp"  cross="true"  ]
[wait  time="1500"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="342"  top="124"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
よし、じゃあ手前側の自分たちの部屋から各自探索を開始しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
; =====================================
; ▼ 探索開始 カットイン演出
; =====================================
[layopt layer="1" visible="true"]

; folder="image" を削除し、デフォルトの fgimage フォルダを読ませます
[image layer="1" name="obi" storage="default/obi.webp" x="1280" y="300"]
[image layer="1" name="text" storage="default/text_tansakukaisi.webp" x="1400" y="340"]

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

[chara_hide  name="ナゾB"  time="1000"  wait="true"  pos_mode="true"  ]
*start_explore_west

[wait  time="1500"  ]
[tb_start_tyrano_code]
[image storage="default/混戦.webp" layer="1" page="fore" visible="true" x="100" y="160" width="284" height="200" time="1000" wait="false"]
[image storage="default/箱庭.webp" layer="1" page="fore" visible="true" x="550" y="160" width="284" height="200" time="1000" wait="false"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="210" y="80"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="660" y="80"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="600" y="400"  time="1000" wait="true"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
どこを探索する？[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  x="965"  y="100"  width="140"  height="51"  text="Aの部屋"  _clickable_img=""  target="*roomA"  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  x="965"  y="200"  width="140"  height="51"  text="Bの部屋"  _clickable_img=""  target="*roomB"  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  x="965"  y="300"  width="140"  height="51"  text="Cの部屋"  _clickable_img=""  target="*roomC"  ]
[tb_image_show  time="200"  storage="default/btn_think.webp"  width="164"  height="71"  x="56"  y="400"  _clickable_img=""  name="img_148"  ]
[clickable  storage="scene4.ks"  x="0"  y="0"  width="1280"  height="720"  target="*rouka"  ]
[clickable  storage="scene4.ks"  x="100"  y="160"  width="284"  height="200"  target="*talkB2"  ]
[clickable  storage="scene4.ks"  x="550"  y="160"  width="284"  height="200"  target="*talkC2"  ]
[clickable  storage="scene4.ks"  x="56"  y="400"  width="164"  height="71"  target="*think_rouka"  ]
[s  ]
*talkB2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="370"  top="85"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
まずは手前側の探索だ[p]
各々で自分の部屋を調べろよ[p]
[_tb_end_text]

[chara_hide  name="ナゾB"  time="1000"  wait="true"  pos_mode="true"  ]
[jump  storage="scene4.ks"  target="*start_explore_west"  ]
*talkC2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="533"  height="379"  left="370"  top="85"  ]
[tb_start_text mode=1 ]
#ナゾC
めんどくさいけど早く終わらせましょ[p]
[_tb_end_text]

[chara_hide  name="ナゾC"  time="1000"  wait="true"  pos_mode="true"  ]
[jump  storage="scene4.ks"  target="*start_explore_west"  ]
*rouka

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[camera  time="8000"  zoom="1"  wait="false"  x="150"  layer="base"  ease_type="linear"  ]
[tb_start_text mode=1 ]
館の西側にある廊下だ[p]
ぼくの部屋はこの廊下に面している[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="0"  wait="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[jump  storage="scene4.ks"  target="*start_explore_west"  ]
*think_rouka

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[tb_start_text mode=1 ]
#
まずは自分の部屋を調べないと[p]
[_tb_end_text]

[jump  storage="scene4.ks"  target="*start_explore_west"  ]
*roomB

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="370"  top="85"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
人の部屋勝手に見る前に自分の部屋調べろよ[p]
#
ご、ごめんなさい…[p]
[_tb_end_text]

[chara_hide  name="ナゾB"  time="1000"  wait="true"  pos_mode="true"  ]
[jump  storage="scene4.ks"  target="*start_explore_west"  ]
*roomC

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="533"  height="379"  left="370"  top="85"  ]
[tb_start_text mode=1 ]
#ナゾC
…何してるの？[p]
#
す、すみません…[p]
[_tb_end_text]

[chara_hide  name="ナゾC"  time="1000"  wait="true"  pos_mode="true"  ]
[jump  storage="scene4.ks"  target="*start_explore_west"  ]
*roomA

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ここがぼくの部屋か[p]
とくに気になるところはないな[p]
廊下に戻って二人と合流しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="西廊下.webp"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="66"  top="180"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="284"  height="200"  left="477"  top="180"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
各自自分の部屋は確認したか？[p]
#ナゾC
ええ、確認したけど[p]
普通の個室って感じで特に何もなかったわ[p]
#ナゾA
ぼくの方もそうでした[p]
#ナゾB
おれもそうだ[p]
じゃあこの手前側から奥に向かって進んでいくか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="scene_transition_footstep_lowbit_01_slow.ogg"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="66"  top="180"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="284"  height="200"  left="477"  top="180"  ]
[tb_image_show  time="1000"  storage="default/door/厨房.webp"  width="262"  height="481"  x="834"  y="43"  _clickable_img=""  name="img_230"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
まずは厨房か[p]
おれはこれと同じ枠が無いから…[p]
[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="doornob2.ogg"  ]
[tb_start_text mode=1 ]
#ナゾB
開けられないな[p]
#ナゾC
私もこの枠はないわね[p]
[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="doornob2.ogg"  ]
[tb_start_text mode=1 ]
#ナゾC
…一応試しにやってみてもやっぱり開かないわ[p]
#ナゾB
あとはあからさまに見えてる部分にその枠があるAか[p]
#ナゾA
あ、開けてみますね[p]
[_tb_end_text]

[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="不気味な出現音2.mp3"  ]
[tb_image_show  time="1000"  storage="default/法則：厨房.webp"  width="581"  height="413"  x="350"  y="95"  _clickable_img=""  name="img_241"  ]
[wait  time="1000"  ]
[tb_alert_dialog  label_ok="OK"  text="「法則：厨房」を入手しました"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_doc_1_p3 = true"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#ナゾA
あ、開きました[p]
#ナゾB
姿はどうだ？[p]
[_tb_end_text]

[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/数字.webp"  width="533"  height="379"  x="389"  y="100"  _clickable_img=""  name="img_248"  ]
[tb_start_text mode=1 ]
#ナゾC
変わってなさそうね[p]
#ナゾB
「植物」の部分にそのまま「植物」が入った感じだな[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="fadeInRight"  storage="厨房中.webp"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="433"  height="306"  left="153"  top="132"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="433"  height="306"  left="664"  top="132"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
中はこんな感じか[p]
#ナゾC
調理器具や食材なんかが並んでるわね[p]
#ナゾB
次の部屋に行くか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="scene_transition_footstep_lowbit_01_slow.ogg"  ]
[bg  time="300"  method="crossfade"  storage="西廊下.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="433"  height="306"  left="153"  top="132"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="433"  height="306"  left="664"  top="132"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
次は備蓄庫だな[p]
まずおれからだ[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="doornob2.ogg"  ]
[tb_start_text mode=1 ]
#ナゾB
開けられないな[p]
#ナゾA
ぼくもこの枠はないから[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="doornob2.ogg"  ]
[tb_start_text mode=1 ]
#ナゾA
開けられないですね[p]
#ナゾC
私は開けられるんじゃないかしら[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[tb_start_text mode=1 ]
#ナゾC
開いたわね[p]
#ナゾB
姿はどうだ・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/犯人.webp"  width="505"  height="357"  left="370"  top="108"  reflect="false"  ]
[wait  time="3000"  ]
[tb_show_message_window  ]
*tyubo_rule

[tb_start_text mode=1 ]
#ナゾB
なんか物騒な言葉になったな[p]
#
つまりこれは[p]
[_tb_end_text]

[chara_hide  name="ナゾC"  time="300"  wait="true"  pos_mode="true"  ]
[chara_show  name="ナゾC"  time="300"  wait="true"  storage="chara/3/犯人.webp"  width="505"  height="357"  left="150"  top="108"  reflect="false"  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  text="「2文字目と4文字目が『ん』に変わった」ってことですよね？"  target="*true2"  x="808"  y="200"  width="418"  height="72"  _clickable_img=""  ]
[glink  color="btn_19_black"  storage="scene4.ks"  size="20"  text="「ナゾCさんが何かしらの犯人」ってことですよね？"  target="*faise2"  x="806"  y="350"  width="418"  height="72"  _clickable_img=""  ]
[s  ]
*faise2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_start_text mode=1 ]
#ナゾC
・・・ふざけてるの？[p]
#ナゾA
すみません・・・[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="scene4.ks"  target="*tyubo_rule"  ]
*true2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_start_text mode=1 ]
#ナゾA
「2文字目と4文字目が『ん』に変わった」ってことですよね？[p]
#ナゾB
そうだろうな[p]
中はどうだ？[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="備品庫中.webp"  ]
[wait  time="3000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/犯人.webp"  width="505"  height="357"  left="675"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
中は食品とか生活用品とか雑多なものがいっぱい置いてあるな[p]
ん？これは・・・？[p]
#ナゾC
何かあったの？[p]
#ナゾB
いや、なんでもない[p]
ただの薬品だ[p]
Cの方こそ、何か見つけてた感じだったが？[p]
#ナゾC
いえ、何でもないわ[p]
次の部屋に行きましょう[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="scene_transition_footstep_lowbit_01_slow.ogg"  ]
[bg  time="300"  method="crossfade"  storage="西廊下.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/犯人.webp"  width="505"  height="357"  left="675"  top="108"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
次の部屋「遊戯室」に行くか[p]
#ナゾC
その前に物騒な言葉でいやだから元に戻すわ[p]
[_tb_end_text]

[chara_hide  name="ナゾC"  time="1000"  wait="true"  pos_mode="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="505"  height="357"  left="675"  top="108"  reflect="false"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_c_p2 = true"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#ナゾC
待たせたわね[p]
行きましょう[p]
#ナゾB
次は遊戯室か[p]
その前にちょっと茶々丸が言ってたこの部屋が気になるな[p]
#ナゾC
何の話？[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
そうか、その時はいなかったのか[p]
茶々丸が言ってたんだよ[p]
この機械制御室に関してあいつは特別って言ってた[p]
#ナゾC
そうなの・・・[p]
そもそもその「茶々丸」っていうのもまだ会ってないんだけどね[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[chara_show  name="茶々丸"  time="500"  wait="true"  storage="chara/6/茶々丸.webp"  width="615"  height="415"  left="350"  top="1000"  reflect="false"  ]
[chara_move  name="茶々丸"  anim="true"  time="1000"  effect="easeInOutBounce"  wait="true"  left="350"  width="615"  height="415"  top="60"  ]
[playbgm  volume="50"  time="2000"  loop="true"  storage="奇妙な案内人.mp3"  fadein="true"  ]
[tb_start_text mode=1 ]
#茶々丸
呼んだかニャ～？[p]
#ナゾC
・・・・・・[p]
これがみんなが言ってた茶々丸？[p]
#茶々丸
「これ」とは失礼ニャ[p]
キミが会いたがってたから会いに来たのニャ[p]
#ナゾC
別に会いたがってはないけど[p]
#茶々丸
辛らつだニャ～[p]
まあいいニャ[p]
たしかにこの部屋は特別ニャ[p]
今はこの館にいる誰も開けられニャいニャ[p]
#ナゾB
なんだと？[p]
じゃあ探索しても意味ないってことか[p]
#茶々丸
意味がニャいかは分からニャいニャ[p]
それと、「今」入れニャいだけで条件を満たせば入れるようにニャるかもしれニャいニャ[p]
#ナゾB
どうせ条件は教えるつもりはないんだろ？[p]
#茶々丸
うーんそれはどうしようか考え中ニャ[p]
まあそういうことだからあとは自分たちで頑張るニャ[p]
[_tb_end_text]

[chara_hide  name="茶々丸"  time="1000"  wait="true"  pos_mode="true"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[playbgm  volume="50"  time="2000"  loop="true"  storage="texture2.mp3"  fadein="true"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="505"  height="357"  left="675"  top="108"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
逃げやがった[p]
#ナゾC
一応開けれるか試してみましょうか[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="doornob2.ogg"  ]
[wait  time="2000"  ]
[tb_start_text mode=1 ]
#ナゾB
全員開かねえな[p]
じゃあ最後に遊戯室を調べるか[p]
まずはおれからか[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[tb_start_text mode=1 ]
#ナゾB
開いたな[p]
姿は変わっていないみたいだ[p]
他のやつはどうだ？[p]
#ナゾA
ぼくは・・・[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="doornob2.ogg"  ]
[tb_start_text mode=1 ]
#ナゾA
開きません[p]
#ナゾC
私はこの枠もってるから[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[tb_start_text mode=1 ]
#ナゾC
やっぱり開くわね[p]
#ナゾB
見た目は変わってないな[p]
「明日」がそのまま「明日」になってるってことか[p]
中も一応見てみるか[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="遊戯室中.webp"  ]
[wait  time="3000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="505"  height="357"  left="675"  top="108"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
中はダーツにビリヤード、カラオケまであるじゃねーか[p]
#ナゾC
ほんとに遊戯室って感じね[p]
カラオケがあるってことは防音なのかしら？[p]
#ナゾB
だろうな[p]
思ったより本格的に遊べそうだな、これは[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="scene_transition_footstep_lowbit_01_slow.ogg"  ]
[bg  time="300"  method="crossfade"  storage="西廊下.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_start_text mode=1 ]
#ナゾB
よし、西側の探索はこれで終わりだな[p]
じゃあ一度大広間に戻るか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="大広間中.webp"  ]
[wait  time="1500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="80"  top="108"  reflect="false"  ]
[chara_show  name="ナゾE"  time="1000"  wait="false"  storage="chara/5/家賛成.webp"  width="533"  height="379"  top="108"  left="-1000"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/ハートつみき.webp"  width="533"  height="379"  left="675"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
西側の探索は終わったぞ[p]
あとは東側を頼む[p]
#ナゾD
りょーかいっす[p]
Eちゃんと仲良くちゃちゃっと探索してくるんで[p]
Eちゃんよろしくっす[p]
[_tb_end_text]

[chara_move  name="ナゾB"  anim="true"  time="300"  effect="linear"  wait="true"  left="-1000"  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="true"  left="80"  ]
[tb_start_text mode=1 ]
#ナゾE
ひ、ひぃ～～[p]
#
（大丈夫かなあの二人・・・）[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="300"  ]
*wait

[tb_start_tyrano_code]
[cm]

; 3つのフラグがONなら、別のシナリオファイルにジャンプする！
[if exp="f.talk_B_2 == 1 && f.talk_C_2 == 1 && f.talk_A_2 == 1 && f.check_env2 == 1"]
; ▼ storageで飛び先のファイル名を指定します
@jump storage="scene4.ks" target="*finish"
[endif]

; （以下、通常のボタン配置...）
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image storage="default/混戦.webp" layer="1" page="fore" visible="true" x="300" y="180" width="284" height="200" time="1000" wait="false"]
[image storage="default/箱庭.webp" layer="1" page="fore" visible="true" x="700" y="180" width="284" height="200" time="1000" wait="false"]
[image storage="default/btn_think.webp" layer="1" page="fore" visible="true" x="56" y="400" width="164" height="71" time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="410" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="810" y="100"  time="1000" wait="false"]
[image storage="default/click_icon1.webp" layer="1" page="fore" visible="true" x="600" y="500"  time="1000" wait="true"]
[_tb_end_tyrano_code]

[clickable  storage="scene4.ks"  x="0"  y="0"  width="1280"  height="720"  target="*hiroma"  ]
[clickable  storage="scene4.ks"  x="300"  y="180"  width="284"  height="200"  target="*talkB4"  ]
[clickable  storage="scene4.ks"  x="700"  y="180"  width="284"  height="200"  target="*talkC4"  ]
[clickable  storage="scene4.ks"  x="56"  y="400"  width="164"  height="71"  target="*think"  ]
[s  ]
*talkB4

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="300"  ]
[chara_show  name="ナゾB"  time="600"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="373"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
あいつらの探索が終わるまではここで待つぞ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_eval  exp="f.talk_B_2=1"  name="talk_B_2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene4.ks"  target="*wait"  ]
*talkC4

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="300"  ]
[chara_show  name="ナゾC"  time="600"  wait="true"  storage="chara/3/箱庭.webp"  width="533"  height="379"  left="373"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾC
自由に行動できないのはつらいわね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_eval  exp="f.talk_C_2=1"  name="talk_C_2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene4.ks"  target="*wait"  ]
*think

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
あの二人が探索を終えるのを待とう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_eval  exp="f.talk_A_2=1"  name="talk_A_2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene4.ks"  target="*wait"  ]
*hiroma

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
大広間[p]
そんなに特徴はなさそうだ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.check_env2=1"  name="check_env2"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene4.ks"  target="*wait"  ]
*finish

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_image_hide  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾE"  time="1000"  wait="false"  storage="chara/5/杖反対.webp"  width="284"  height="200"  top="180"  left="855"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="284"  height="200"  left="477"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
探索終わったっすよ[p]


[_tb_end_text]

[chara_show  name="ナゾC"  time="1000"  wait="false"  storage="chara/3/箱庭.webp"  width="284"  height="200"  top="180"  left="66"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="-1000"  top="180"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾC
Eちゃん大丈夫？[p]
何もされなかった？[p]
#ナゾE
だ、大丈夫です～[p]
#ナゾC
そう、よかった[p]
#ナゾD
ひどいっす[p]


[_tb_end_text]

[chara_move  name="ナゾC"  anim="true"  time="300"  effect="linear"  wait="true"  left="-1000"  ]
[chara_move  name="ナゾB"  anim="true"  time="1000"  effect="linear"  wait="true"  left="66"  ]
[tb_start_text mode=1 ]
#ナゾB
で、探索はどうだったんだ？[p]

[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/MAP_east.webp"  width="533"  height="379"  x="370"  y="106"  _clickable_img=""  name="img_495"  ]
[tb_start_text mode=1 ]
#ナゾD
まず僕らは奥の方から調べたっす[p]
物置はどっちも開けられなかったんですけど、そのあと試した大浴場は自分が開けられました[p]
遊戯室、休憩室は二人とも開けられなかったっすけど、食堂はEさんが開けられました[p]
個人の部屋にはそれぞれちゃんと入れました[p]
守衛室にはEちゃんが入れました[p]
中には監視カメラ映像とかがあったんすけど、ひとつを除いてどれももう作動してない感じでした[p]
#ナゾB
その一つっていうのは？[p]
#ナゾD
大浴場の扉を映した映像っす[p]
巻き戻せるみたいで、僕らが入った瞬間も見れましたっす[p]
これで僕らの報告は終わりっす[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_start_text mode=1 ]
#ナゾB
じゃあ現状分かってることをまとめるとこういうことだな[p]
[_tb_end_text]

[tb_hide_message_window  ]
*rule1

[tb_image_hide  time="0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="page.mp3"  ]
[tb_image_show  time="1000"  name="img_503"  storage="default/room_rule1.webp"  width="590"  height="420"  x="346"  y="61"  _clickable_img=""  ]
[glink  color="btn_20_lime"  storage="scene4.ks"  size="20"  x="780"  y="524"  width="102"  height="51"  text="次へ"  _clickable_img=""  target="*rule2"  ]
[s  ]
*rule2

[playse  volume="100"  time="1000"  buf="0"  storage="page.mp3"  ]
[cm  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="1000"  storage="default/room_rule2.webp"  width="590"  height="420"  x="346"  y="61"  name="img_510"  ]
[glink  color="btn_20_lime"  storage="scene4.ks"  size="20"  x="780"  y="524"  width="102"  height="51"  text="次へ"  _clickable_img=""  target="*Last"  ]
[glink  color="btn_20_lime"  storage="scene4.ks"  size="20"  x="380"  y="524"  width="102"  height="51"  text="戻る"  _clickable_img=""  target="*rule1"  ]
[s  ]
*Last

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="1000"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_d_p2 = true"]
[eval exp="f.unlock_nazo_e_p2 = true"]
[eval exp="f.unlock_doc_1_p4 = true"]
[eval exp="f.unlock_doc_1_p5 = true"]
[_tb_end_tyrano_code]

[wait  time="600"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="172"  left="66"  top="207"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="false"  storage="chara/3/箱庭.webp"  width="243"  height="172"  top="207"  left="367"  reflect="false"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="243"  height="172"  left="680"  top="207"  reflect="false"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖反対.webp"  width="243"  height="172"  left="997"  top="206"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
よし、一通り探索も終わったし食堂で飯でも食うか[p]
#ナゾD
やったー[p]
ぼくもうお腹ぺこぺこっす[p]
#ナゾC
食堂にはEちゃんが入れたのよね？[p]
#ナゾE
は、はい！[p]
あ、開けますねっ！[p]
[_tb_end_text]

[playse  volume="50"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[chara_mod  name="ナゾE"  time="600"  cross="true"  storage="chara/5/杖賛成.webp"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_e_p3 = true"]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#ナゾD
よっしゃー飯っすー[p]
[_tb_end_text]

[jump  storage="scene5.ks"  target="*1"  ]
