[_tb_system_call storage=system/_scene3.ks]
[call storage="common_ui.ks" target="*init"]

[bg  time="1000"  method="crossfade"  storage="館外観.webp"  ]
[tb_image_show  time="1000"  storage="default/time_17.5.webp"  width="1280"  height="720"  name="img_1"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1500"  ]
[tb_image_hide  time="1000"  ]
[playbgm  volume="50"  time="3000"  loop="true"  storage="shinigamitowaltz.mp3"  fadein="true"  ]
[chara_show  name="ナゾA"  time="1000"  wait="true"  storage="chara/1/音階.webp"  width="505"  height="357"  left="400"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
この場所で…あってるよな…？[p]
なんだか緊張してきたぞ[p]
おや、もうだれか来てるみたいだ[p]
ナゾ見知りだから緊張するな～[p]
[_tb_end_text]

[chara_hide  name="ナゾA"  time="300"  wait="true"  pos_mode="false"  ]
[tb_hide_message_window  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  width="505"  height="357"  left="654"  top="108"  storage="chara/4/ハートつみき.webp"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
（ほかのナゾも黒くなってる。やっぱりこの招待状が原因なんだ。）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
なんだあんたも招待されたのか？[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
え、あ、はい[p]
み、皆さんもですか？[p]
（やばい、緊張する～）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
そうなんすよ[p]
でもみんなはじめましてなんで[p]
Aさんもよろしくっす[p]
あ、Aさんって呼んでいいっすか？[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
あ、はい大丈夫です[p]
（なんかチャラいな）[p]
[_tb_end_text]

[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="600"  wait="false"  storage="chara/5/家賛成.webp"  width="505"  height="357"  left="400"  top="108"  ]
[tb_hide_message_window  ]
[wait  time="500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
（あの子も招待されたのかな？）[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾE
ひ、ひぇ～[p]
あんまり見ないでください～[p]
[_tb_end_text]

[chara_hide  name="ナゾE"  time="300"  wait="true"  pos_mode="true"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  width="505"  height="357"  left="654"  top="108"  storage="chara/4/ハートつみき.webp"  ]
[tb_start_text mode=1 ]
#ナゾB
まだ18時にはなってないけど入るか[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
勝手に入っていいんすかね？[p]
まあ招待されてる立場だし問題ないのか[p]
[_tb_end_text]

[chara_hide  name="ナゾD"  time="300"  wait="true"  pos_mode="false"  ]
[chara_show  name="ナゾA"  time="600"  wait="true"  storage="chara/1/音階.webp"  width="505"  height="357"  left="654"  top="108"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
おい、お前なにおれの顔じろじろ見てんだよ[p]
気に入らねえ。お前が開けろ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
え、そんな、すみませんっ！[p]
（ひえー、怖いナゾを怒らせちゃったよ）[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/大広間.webp"  width="227"  height="441"  x="526"  y="25"  _clickable_img=""  name="img_35"  ]
[tb_start_text mode=1 ]
#
じゃあ、開けてみますね…[p]

[_tb_end_text]

[tb_start_text mode=1 ]
ガチャ[p]
[_tb_end_text]

[tb_image_hide  time="100"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="不気味な出現音2.mp3"  ]
[tb_image_show  time="1000"  storage="default/法則：大広間.webp"  width="581"  height="413"  x="350"  y="95"  _clickable_img=""  name="img_40"  ]
[wait  time="1000"  ]
[tb_alert_dialog  label_ok="OK"  text="「法則：大広間」を入手しました"  ]
[tb_start_text mode=1 ]
#
ん？[p]
なんだ今の感覚は？[p]
[_tb_end_text]

[tb_image_hide  time="600"  ]
[tb_start_text mode=1 ]
#ナゾD
お、開いたっすね[p]
#ナゾB
入ろうぜ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾE
え、あ、あれ、ナゾAさんちょっと変わりました…？[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/数字.webp"  width="505"  height="357"  x="406"  y="108"  name="img_47"  ]
[tb_start_text mode=1 ]
#ナゾB
ほんとだ、ちょっと変わってんじゃん[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
Aさん早速イメチェンっすか？[p]
おれらまだ出会ったばっかっすよ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
いや、そんなつもりはないけど…[p]
（さっきの感覚と関係あるのか？）[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_start_tyrano_code]
[tb_image_show time="300" storage="default/音階.webp" width="505" height="357" x="80" y="108" wait="false" ]
[tb_image_show time="300" storage="default/数字.webp" width="505" height="357" x="700" y="108" wait="true" ]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#
（「ドレミの歌」が「数字」に変わってるのか）[p]
[_tb_end_text]

[wait  time="2000"  ]
[chara_hide  name="ナゾA"  time="600"  wait="false"  pos_mode="false"  ]
[tb_image_hide  time="600"  ]
[tb_hide_message_window  ]
[stopbgm  time="5000"  fadeout="true"  ]
[wait  time="500"  ]
[bg  time="1000"  method="fadeInDown"  storage="大広間中.webp"  cross="true"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="texture2.mp3"  fadein="true"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/ハートつみき.webp"  width="505"  height="357"  top="108"  left="654"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
中は思ったよりも広いな[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
なんか暗くて不気味っすね[p]
[_tb_end_text]

[chara_hide  name="ナゾB"  time="300"  wait="true"  pos_mode="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/家賛成.webp"  width="505"  height="357"  left="80"  top="108"  ]
[tb_start_text mode=1 ]
#ナゾE
こ、ここ、怖いですぅ～[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
（確かに不気味だな…）[p]
[_tb_end_text]

[chara_hide_all  time="300"  wait="true"  ]
[stopbgm  time="5000"  fadeout="true"  ]
[tb_start_text mode=1 ]
#？？？
ちゃちゃーーん！！！[p]
[_tb_end_text]

[chara_show  name="茶々丸"  time="600"  wait="true"  storage="chara/6/茶々丸.webp"  width="615"  height="415"  left="350"  top="1000"  reflect="false"  ]
[chara_move  name="茶々丸"  anim="true"  time="1000"  effect="easeInOutBounce"  wait="true"  left="350"  width="615"  height="415"  top="60"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="奇妙な案内人.mp3"  ]
[tb_start_text mode=1 ]
#？？？
いらっしゃいニャ～[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
！？[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾE
ひ、ひぇ～～[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
顔だけって何すかこいつ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
バケモンじゃねーか[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#茶々丸
みんニャ失礼だニャ！[p]
ぼくのニャ前は茶々丸。みんニャを招待したこの館の管理人だニャ。[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
なんでおれたちを集めた？[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
この黒塗りもあんたの仕業っすか？[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#茶々丸
みんニャ適応が早いニャ～[p]
1つずつ答えるニャ[p]
まず、みんニャを集めたのは明日ここでおもしろいことが起こるからニャ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
おもしろいことってなんだ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#茶々丸
それは明日にニャれば分かるニャ[p]
そして黒塗りだけど、ぼくの仕業で間違いニャいニャ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
なんのために黒塗りにしたんだ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#茶々丸
質問が多いニャ～[p]
黒塗りにしたのはみんニャにお互いのことを知ろうとしてほしいからニャ[p]
分からニャい部分があると、それを知ろうとするものニャ[p]
だからみんニャ明日までにニャかよくニャるニャ[p]
ちニャみに明日にニャらニャいとこの館からは出られニャいニャ[p]
だから今日はゆっくりこの館で楽しむニャ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾD
と、閉じ込められたってことっすか？[p]
#ナゾE
ふざけやがって[p]
#茶々丸
閉じ込めてはいニャいニャ[p]
出ようとすると僕が不思議な力でドアをふさぐだけニャ[p]
だから今日は館から出ることは考えずに、みんニャニャかよくニャることを考えるニャ[p]
#ナゾＤ
出られないのは不本意っすけど[p]
仲良くなるのは賛成っすね[p]
みんなのこともっと知りたいし[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾB
おれとDは隠れている部分が少ないが、AとEは隠れてる部分の方が多いんだから知るのは難しいだろ[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#茶々丸
Dくんはいい心意気だニャ[p]
この館の法則を使えば、黒塗りの中を想像することはできるニャ[p]
これが館の法則ニャ[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="false"  ]
[tb_hide_message_window  ]
*page1

[tb_image_hide  time="0"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="page.mp3"  ]
[tb_image_show  time="1000"  name="img_98"  storage="default/rule1.webp"  width="590"  height="420"  x="346"  y="61"  _clickable_img=""  ]
[glink  color="btn_20_lime"  storage="scene3.ks"  size="20"  text="次へ"  x="781"  y="525"  width="102"  height="51"  _clickable_img=""  target="*page2"  ]
[s  ]
*page2

[playse  volume="100"  time="1000"  buf="0"  storage="page.mp3"  ]
[cm  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="1000"  storage="default/rule2.webp"  width="590"  height="420"  x="346"  y="61"  name="img_105"  ]
[glink  color="btn_20_lime"  storage="scene3.ks"  size="20"  text="次へ"  x="781"  y="525"  width="102"  height="51"  _clickable_img=""  target="*page3"  ]
[glink  color="btn_20_blue"  storage="scene3.ks"  size="20"  text="戻る"  x="380"  y="523"  width="102"  height="51"  _clickable_img=""  target="*page1"  ]
[s  ]
*page3

[playse  volume="100"  time="1000"  buf="0"  storage="page.mp3"  ]
[cm  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="1000"  storage="default/rule3.webp"  width="590"  height="420"  x="346"  y="61"  name="img_113"  ]
[glink  color="btn_20_lime"  storage="scene3.ks"  size="20"  text="次へ"  x="781"  y="525"  width="102"  height="51"  _clickable_img=""  target="*page4"  ]
[glink  color="btn_20_blue"  storage="scene3.ks"  size="20"  text="戻る"  x="380"  y="523"  width="102"  height="51"  _clickable_img=""  target="*page2"  ]
[s  ]
*page4

[playse  volume="100"  time="1000"  buf="0"  storage="page.mp3"  ]
[cm  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="1000"  storage="default/rule4.webp"  width="590"  height="420"  x="346"  y="61"  name="img_121"  ]
[glink  color="btn_20_lime"  storage="scene3.ks"  size="20"  text="次へ"  x="781"  y="525"  width="102"  height="51"  _clickable_img=""  target="*page5"  ]
[glink  color="btn_20_blue"  storage="scene3.ks"  size="20"  text="戻る"  x="380"  y="523"  width="102"  height="51"  _clickable_img=""  target="*page3"  ]
[s  ]
*page5

[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/rule_room1.webp"  width="590"  height="420"  x="346"  y="61"  name="img_127"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
そしてこれが大広間と食堂の法則ニャ[p]
ほんとは各部屋の法則は最初にカギを開けたナゾだけが分かるようにしてるんニャけど[p]
今回は特別に食堂も教えるニャ[p]
ちなみに法則は共有可能にニャってるニャ[p]
#
（なるほど）[p]
（大広間のドアを開けたときの感覚は、法則が分かった時のものだったのか）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
つまり、大広間の扉を開けたからナゾAは、同じ枠で書かれている「ドレミの歌」から「数字」に変わったのか[p]
#茶々丸
そういうことニャ[p]
この法則は「入るたびに『変化する』、『元に戻る』が切り替わるもの」や「時間ごとにかわるもの」の2種類があるから要注意ニャ[p]
[_tb_end_text]

[tb_image_hide  time="600"  ]
[chara_show  name="茶々丸"  time="1000"  wait="false"  storage="chara/6/茶々丸.webp"  width="501"  height="337"  left="50"  top="119"  reflect="false"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="1500"  top="108"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/ハートつみき.webp"  width="533"  height="379"  left="654"  top="108"  ]
[tb_start_text mode=1 ]
#ナゾD
大広間の17時台は「数字」って書いてあるから枠内がそのまま「数字」って文字に変わったってことっすね[p]
#茶々丸
そういうことニャ[p]
そもそも同じ枠を持ってなかったり、変化後にナゾが成立しない場合はカギが開くことはニャいニャ[p]
ただしナゾが入っている部屋にはカギがかからニャいニャ[p]
だから扉を開けたとしても変化することはニャいし、同じ枠を持ってないナゾでも自由に出入りできるニャ[p]
[_tb_end_text]

[chara_move  name="ナゾD"  anim="true"  time="600"  effect="linear"  wait="true"  left="1500"  ]
[chara_move  name="ナゾB"  anim="true"  time="600"  effect="linear"  wait="true"  left="654"  ]
[tb_start_text mode=1 ]
#ナゾB
部屋の出入りするときは考えて動く必要がありそうだな[p]
廊下とかはどうなんだ？[p]
#茶々丸
廊下には自由に出入りできるニャ[p]
それと、みんニャにはそれぞれ個室を用意してるニャ[p]
この個室は自分以外は開けることができニャいし、それは自分が部屋に入ってる場合も同様ニャ[p]
[_tb_end_text]

[chara_move  name="ナゾB"  anim="true"  time="600"  effect="linear"  wait="true"  left="1500"  ]
[chara_move  name="ナゾD"  anim="true"  time="600"  effect="linear"  wait="true"  left="654"  ]
[tb_start_text mode=1 ]
#ナゾD
セキュリティは万全ってことですね[p]
#茶々丸
そうニャ[p]
だから他の人の部屋には、本人から入れてもらう以外は絶対に入れニャいニャ[p]
それと上にある「物置」と「機械制御室」は特別ニャ部屋ニャ[p]
だれも同じ枠は持ってニャいけど、条件を満たせば入れるようにニャるニャ[p]
説明は終わりニャ[p]
あとは自分たちで考えるニャ[p]
[_tb_end_text]

[chara_hide  name="ナゾB"  time="0"  wait="false"  pos_mode="true"  ]
[chara_hide  name="茶々丸"  time="1000"  wait="false"  pos_mode="true"  ]
[stopbgm  time="3000"  fadeout="true"  ]
[playbgm  volume="50"  time="1000"  loop="true"  fadein="true"  storage="texture2.mp3"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  left="-500"  top="108"  ]
[chara_move  name="ナゾB"  anim="true"  time="600"  effect="linear"  wait="true"  left="80"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
き、消えたっすね[p]
#ナゾB
なんだったんだ、一体[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
*explore_start

[tb_start_tyrano_code]
[cm]

; 3つのフラグがONなら、別のシナリオファイルにジャンプする！
[if exp="f.talk_B_1 == 1 && f.talk_D_1 == 1 && f.talk_E_1 == 1 && f.check_env == 1"]
; ▼ storageで飛び先のファイル名を指定します
@jump storage="scene4.ks" target="*start"
[endif]

; （以下、通常のボタン配置...）
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[image storage="default/混戦.webp" layer="1" page="fore" visible="true" x="66" y="245" width="284" height="200" time="1000" wait="false"]
[image storage="default/ハートつみき.webp" layer="1" page="fore" visible="true" x="477" y="245" width="284" height="200" time="1000" wait="false"]
[image storage="default/家賛成.webp" layer="1" page="fore" visible="true" x="855" y="245" width="284" height="200" time="1000" wait="true"]
[_tb_end_tyrano_code]

[clickable  storage="scene3.ks"  x="0"  y="0"  width="1280"  height="720"  target="*check_env"  _clickable_img=""  ]
[tb_start_tyrano_code]
; ▼ 探索中だけ表示する「FILE」ボタン
[button graphic="file_btn.webp" x="1000" y="20" storage="file.ks" target="*start_file" role="sleepgame"]
[_tb_end_tyrano_code]

[clickable  storage="scene3.ks"  x="66"  y="245"  width="284"  height="200"  target="*talk_B"  ]
[clickable  storage="scene3.ks"  x="477"  y="245"  width="284"  height="200"  target="*talk_D"  ]
[clickable  storage="scene3.ks"  x="855"  y="245"  width="284"  height="200"  target="*talk_E"  ]
[s  ]
*talk_B

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="533"  height="379"  top="108"  left="373"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
とりあえず考えながら動かないといけないな[p]
#
なんで？[p]
#ナゾB
あ？適当に動いて元の場所に戻れなくなったら面倒だろうが[p]
ちょっと考えたら分かるだろ[p]
#
うっ！確かに…[p]
（そんな言い方しなくてもいいのに）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾB"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_eval  exp="f.talk_B_1=1"  name="talk_B_1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene3.ks"  target="*explore_start"  ]
*talk_D

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/ハートつみき.webp"  width="533"  height="379"  top="108"  left="373"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
変化するってどんな感覚なんすか？[p]
#
いや、特にそんなに変わらないかな…？[p]
#ナゾD
ふーん、そんなもんなんすね[p]
なんかガッカリ[p]
#
（なんか勝手にガッカリされた…）[p]
でもその部屋の法則が急に頭に入ってくる感じはあるよ[p]
#ナゾD
そうなんすね[p]
#
（そこはあんまり興味ないのか・・・）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾD"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_eval  exp="f.talk_D_1=1"  name="talk_D_1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene3.ks"  target="*explore_start"  ]
*talk_E

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/家賛成.webp"  width="533"  height="379"  top="108"  left="373"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
あ、あの…[p]
#
どうしました？[p]
#ナゾE
ナゾAさんって招待状が来るまでの記憶ってありますか…？[p]
[_tb_end_text]

[stopbgm  time="500"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="horror_piano3.mp3"  ]
[l  ]
[tb_start_text mode=1 ]
#
（たしかに、言われてみればそうだ）[p]
（公演小謎だと思っていたけどなんの記憶もない）[p]
（一体どういうことだ）[p]
[_tb_end_text]

[playbgm  volume="50"  time="1000"  loop="true"  storage="norowaretayakata.mp3"  ]
[tb_start_text mode=1 ]
ない…ですね[p]
#ナゾE
Aさんもでしたか[p]
でもみんな同じようなデザインなのは気になりますね…[p]
#
確かにみんな似たようなデザインですね[p]
同じ公演に出ていたんでしょうか？[p]
[_tb_end_text]

[stopbgm  time="3000"  fadeout="true"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="555"  height="374"  top="1000"  left="56"  reflect="false"  ]
[chara_move  name="茶々丸"  anim="true"  time="1000"  effect="linear"  wait="false"  left="56"  top="111"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="奇妙な案内人.mp3"  fadein="true"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/家賛成.webp"  width="533"  height="379"  top="108"  left="650"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
みんニャ今日が初対面だから違うニャ[p]
#
！？[p]
聞いてたのか？[p]
#茶々丸
ぼくはみんニャの動きは常に把握してるニャ[p]
過去の記憶がニャいのは理由があるけど、それは言わニャいニャ[p]
[_tb_end_text]

[chara_hide  name="茶々丸"  time="1000"  wait="true"  pos_mode="true"  ]
[stopbgm  time="2000"  fadeout="true"  ]
[playbgm  volume="50"  time="1000"  loop="true"  fadein="true"  storage="texture2.mp3"  ]
[l  ]
[chara_move  name="ナゾE"  anim="true"  time="300"  effect="linear"  wait="true"  top="108"  left="373"  ]
[tb_start_text mode=1 ]
#ナゾE
い、一体どういうことなんでしょう？[p]
#
さあ？[p]
でも茶々丸の言うことを信じるなら僕らは初対面ってことになりますね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾE"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_eval  exp="f.talk_E_1=1"  name="talk_E_1"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene3.ks"  target="*explore_start"  ]
*check_env

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="1000"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
大広間[p]
そんなに特徴はなさそうだ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.check_env=1"  name="check_env"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene3.ks"  target="*explore_start"  ]
