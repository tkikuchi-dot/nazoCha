[_tb_system_call storage=system/_scene5.ks]
[call storage="common_ui.ks" target="*init"]

*1

[tb_start_text mode=1 ]
#ナゾB
その前に一応確認だ[p]
黒塗り部分にあるんだろうから変わってることはないだろうが・・・[p]
#ナゾD
変わってなさそうっすね[p]
#ナゾC
そのようね[p]
黒塗りの中が変わった感じよ[p]
#ナゾE
よし、それならOKだ[p]
中に入ってみるか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/time_20.webp"  width="1280"  height="720"  name="img_4"  ]
[bg  time="1000"  method="fadeInDown"  storage="食堂中料理.webp"  cross="true"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/空気清浄機.webp"  width="50"  height="54"  x="393"  y="460"  _clickable_img=""  name="img_7"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="66"  top="180"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="false"  storage="chara/3/箱庭.webp"  width="284"  height="200"  top="180"  left="477"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="284"  height="200"  left="855"  top="180"  reflect="false"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="452"  height="304"  left="-800"  top="117"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
うっひょー！[p]
料理がたくさん！うまそうっすね！[p]
#ナゾC
・・・・・・[p]
毒とか入ってないでしょうね？[p]
#ナゾB
あの得体のしれない茶々丸が用意してたんなら・・・[p]
あるかもな[p]
[_tb_end_text]

[chara_move  name="ナゾB"  anim="true"  time="1000"  effect="linear"  wait="false"  left="477"  ]
[chara_move  name="ナゾC"  anim="true"  time="1000"  effect="linear"  wait="false"  left="855"  ]
[chara_move  name="ナゾD"  anim="true"  time="1000"  effect="linear"  wait="true"  left="1500"  ]
[chara_move  name="茶々丸"  anim="true"  time="1000"  effect="linear"  wait="true"  left="30"  ]
[tb_start_text mode=1 ]
#茶々丸
キミたち・・・・[p]
だいぶ失礼だニャ[p]
#ナゾC
・・・聞いてたの？[p]
#茶々丸
ぼくは常にキミたちの動きを把握してるニャ[p]
それにしてもキミたちはぼくをちっとも信用してないようだニャ？[p]
#ナゾB
お前みたいな得体のしれないやつを信用する方がどうかしてるだろ[p]
#茶々丸
ニャ～[p]
ひどいのニャ～[p]
せっかくみんニャのために一生懸命料理を準備して待ってたニョに・・・[p]
そんニャに信用できニャいのニャらもう食べニャくていいニャ！[p]
[_tb_end_text]

[chara_move  name="ナゾC"  anim="true"  time="1000"  effect="linear"  wait="false"  left="1500"  ]
[chara_move  name="ナゾD"  anim="true"  time="1000"  effect="linear"  wait="true"  left="855"  ]
[tb_start_text mode=1 ]
#ナゾD
はいはいはい！[p]
おれは信用してるっす！[p]
#茶々丸
ニャ～[p]
キミはいい子だニャ～[p]
他のみんニャも覚えておくニャ！[p]
ボクは絶対に嘘をつかニャいニャ[p]
だからボクからの情報は信用して大丈夫だニャ[p]
分かったらナゾからご飯を食べていいニャ[p]
#ナゾD
Bさんこの料理めちゃくちゃうまいっすよ！[p]
（ﾓｸﾞﾓｸﾞﾓｸﾞﾓｸﾞ）[p]
#ナゾB
あいつ・・・[p]
分かったよ[p]
信じればいいんだろ？[p]
#茶々丸
そうニャ[p]
特に明日にニャったらボクの情報が大事にニャるのニャ～[p]
[_tb_end_text]

[chara_move  name="ナゾD"  anim="true"  time="1000"  effect="linear"  wait="false"  left="1500"  ]
[chara_move  name="ナゾC"  anim="true"  time="1000"  effect="linear"  wait="true"  left="855"  ]
[tb_start_text mode=1 ]
#ナゾC
明日は何があるの？[p]
#茶々丸
・・・・・・[p]
ウソつけニャいから逃げるのニャ[p]
[_tb_end_text]

[chara_hide  name="茶々丸"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
#ナゾB
あ、また消えやがった[p]
[_tb_end_text]

[chara_move  name="ナゾB"  anim="true"  time="1000"  effect="linear"  wait="false"  left="66"  ]
[chara_move  name="ナゾC"  anim="true"  time="1000"  effect="linear"  wait="false"  left="477"  ]
[chara_move  name="ナゾD"  anim="true"  time="1000"  effect="linear"  wait="true"  left="855"  ]
[tb_start_text mode=1 ]
#ナゾC
とりあえず信用してご飯でも食べて落ち着きましょう[p]
#ナゾD
それがいいっすよ[p]
早くしないと料理無くなっちゃいますよ[p]
#ナゾB
・・・・・・[p]
そうだな[p]
飯にするか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*eat

[tb_image_show  time="1000"  storage="default/黒背景.webp"  width="1280"  height="720"  name="img_35"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1500"  ]
[tb_ptext_show  x="307.00001525878906"  y="319.00001525878906"  size="60"  color="0xffffff"  time="1000"  text="5人で食べながら話した"  face="sans-serif,'メイリオ'"  edge="undefined"  shadow="0x362424"  anim="true"  fadeout="false"  wait="true"  in_effect="fadeIn"  out_effect="fadeOut"  ]
[wait  time="2500"  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/time_21.5.webp"  width="1280"  height="720"  name="img_41"  ]
[wait  time="1500"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="284"  height="200"  left="66"  top="180"  reflect="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="false"  storage="chara/3/箱庭.webp"  width="284"  height="200"  top="180"  left="477"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="284"  height="200"  left="855"  top="180"  reflect="false"  ]
[chara_show  name="茶々丸"  time="1000"  wait="false"  storage="chara/6/茶々丸.webp"  width="523"  height="352"  left="-600"  top="165"  reflect="false"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/家賛成.webp"  width="284"  height="200"  left="1500"  top="180"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/空気清浄機.webp"  width="69"  height="75"  x="389"  y="439"  _clickable_img=""  name="img_49"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾC
じゃあ私はもう自分の部屋に戻るわ[p]
#ナゾD
え～もう寝ちゃうんですか？[p]
寂しいっすよー[p]
#ナゾC
もう今日は何も起きないみたいだしね疲れちゃったから部屋で休むわ[p]
#ナゾB
答えが分かったらどうすればいいんだ？[p]
#ナゾC
そうね[p]
休むといってもまだ起きてはいると思うから[p]
部屋をノックしてくれれば聞くわよ[p]
#ナゾB
それならいい[p]
#ナゾC
じゃあおやすみ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="1000"  storage="default/time_22.webp"  width="1280"  height="720"  name="img_53"  ]
[chara_move  name="ナゾC"  anim="true"  time="1000"  effect="linear"  wait="true"  left="-600"  ]
[chara_move  name="ナゾD"  anim="true"  time="1000"  effect="linear"  wait="false"  left="477"  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="true"  left="855"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="0"  storage="default/空気清浄機.webp"  width="69"  height="75"  x="389"  y="439"  _clickable_img=""  name="img_58"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
いまBさんと遊戯室でダーツとかして遊ぼうって話になってるんですけど[p]
お二人もどうっすか？[p]
#ナゾE
あ、わわ、私は大丈夫ですぅ～[p]
#
ぼくも行かなくていいかな[p]
#ナゾB
んだよ[p]
動かないから全然答え分かんないじゃねーか[p]
#ナゾD
まあまあいいじゃないっすか[p]
明日何かしら起こるみたいなんで[p]
それまで気長に待ちましょうよ[p]
#ナゾB
分かったよ[p]
ほら、行くぞ[p]
[_tb_end_text]

[chara_move  name="ナゾB"  anim="true"  time="1000"  effect="linear"  wait="false"  left="-1000"  ]
[chara_move  name="ナゾD"  anim="true"  time="1000"  effect="linear"  wait="true"  left="-500"  ]
[wait  time="1500"  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="true"  left="385"  width="373"  height="260"  top="180"  ]
[tb_start_text mode=1 ]
#ナゾE
な、なんだか気を遣わせてしまったみたいですみません　コホッ[p]
#
いえ、大丈夫ですよ[p]
それより風邪ですか？[p]
#ナゾE
はい、ちょっと風邪気味で・・・[p]
それにここの館ちょっと埃っぽくて・・・[p]
あの、加湿器をつけてもいいですか？[p]
#
はい大丈夫ですよ[p]
#ナゾE
ありがとうございます　コホッ[p]
ついでに何かお飲み物でもお注ぎしましょうか？[p]
#
ありがとうございます[p]
じゃあお水いただきます[p]
#ナゾE
分かりました[p]
注いできますね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="true"  left="-1000"  width="373"  height="260"  top="180"  ]
[wait  time="1500"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/空気清浄機.webp"  width="284"  height="310"  x="472"  y="80"  _clickable_img=""  name="img_70"  ]
[playse  volume="50"  time="0"  buf="0"  storage="vsqse-0603-kitchen-01-water_Lfrh6bFR.mp3"  ]
[tb_image_show  time="1000"  storage="default/黒背景.webp"  width="1280"  height="720"  name="img_72"  ]
[wait  time="500"  ]
[playse  volume="50"  time="0"  buf="0"  storage="kMKWclXC.mp3"  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="true"  left="385"  width="373"  height="260"  top="180"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="0"  storage="default/空気清浄機.webp"  width="69"  height="75"  x="389"  y="439"  _clickable_img=""  name="img_176"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
お待たせしました[p]
お水です[p]
#
ありがとうございます[p]
#ナゾE
Aさんは何か思い出してきましたか？[p]
#
過去のことですね[p]
いや、まだ何も[p]
#ナゾE
そうですか・・・[p]
なんだか不安です・・・[p]
それにここ妙だと思いませんか？[p]
#
妙と言うと？[p]
#ナゾE
この館どこにも窓がないんです[p]
強いて言えば休憩室にありはしたんですけど[p]
あれは廊下につながってるだけですし[p]
外につながる窓がないのは不自然です[p]
#
確かに言われてみればそうだな[p]
#茶々丸
ちゃちゃーん！[p]
[_tb_end_text]

[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="false"  left="650"  width="505"  height="357"  top="108"  ]
[chara_move  name="茶々丸"  anim="true"  time="1000"  effect="linear"  wait="true"  left="60"  width="523"  height="352"  top="108"  ]
[tb_start_text mode=1 ]
#
ちゃ、茶々丸・・・！[p]
#茶々丸
窓のことでニャやんでたニャ？[p]
#ナゾE
え、ええ、そ、そうです[p]
#茶々丸
そんニャに怖がらニャくていいニャ[p]
ボクはとってもチャーミングだニャ？[p]
#
ウソ・・・ではないのか？[p]
#茶々丸
お前ちょっと失礼だニャ[p]
まあいいニャ[p]
窓のことニャ[p]
窓は別にあってもいいニャけど[p]
あったらそこから出入りできることを考えるニャ？[p]
特にキミらは薄っぺらいし出入りできそうニャ[p]
だからそういう余計ニャことを考えニャくていいように最初からつけてニャいのニャ[p]
#
なんで出入り出来たらまずいんですか？[p]
#茶々丸
それは明日の出来事に深くかかわってくるから言えニャいニャ[p]
#
（窓での出入りが深くかかわってくる・・・？）[p]
（一体どういうことだ？）[p]
#茶々丸
それとキミたちの過去についてもニャやんでたニャ？[p]
実はキミたち5人の中にすべてを知るニャゾがいるニャ[p]
#
・・・・！[p]
すべてを知るニャゾ・・・？[p]
#茶々丸
お前ちょっとバカにしてるニャ[p]
すべてとはほんとにすべてニャ[p]
そいつは館の法則も明日ニャにが起こるのかもみんニャの答えも全部知ってるニャ[p]
#
一体誰なんですか？[p]
#茶々丸
それを教えたら面白くニャいニャ[p]
#ナゾE
そ、そそ、そのナゾの目的は何なんでしょうか？[p]
#茶々丸
うーんそれも教えニャいニャ[p]
ボクはウソをつけニャいからニャ～[p]
じゃああとは自分たちで考えるニャ[p]
[_tb_end_text]

[chara_hide  name="茶々丸"  time="1000"  wait="true"  pos_mode="true"  ]
[chara_move  name="ナゾE"  anim="true"  time="1000"  effect="linear"  wait="true"  left="370"  width="505"  height="357"  top="108"  ]
[tb_start_text mode=1 ]
#ナゾE
き、消えちゃいましたね・・・[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*before_sleep

[tb_start_tyrano_code]
[cm]

; 3つのフラグがONなら、別のシナリオファイルにジャンプする！
[if exp="f.talk_E_4 == 1 && f.talk_A_4 == 1 && f.air == 1 && f.check_env4 == 1"]
; ▼ storageで飛び先のファイル名を指定します
@jump storage="scene5.ks" target="*sleep"
[endif]

; （以下、通常のボタン配置...）
[_tb_end_tyrano_code]

[tb_image_show  time="300"  storage="default/btn_think.webp"  width="164"  height="71"  x="52"  y="445"  _clickable_img=""  name="img_191"  ]
[tb_image_show  time="300"  storage="default/空気清浄機.webp"  width="69"  height="75"  x="389"  y="439"  _clickable_img=""  name="img_7"  ]
[chara_show  name="ナゾE"  time="300"  wait="true"  storage="chara/5/家賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[clickable  storage="scene5.ks"  x="0"  y="0"  width="1280"  height="720"  target="*syokudo2"  ]
[clickable  storage="scene5.ks"  x="370"  y="108"  width="505"  height="357"  target="*talkE2"  ]
[clickable  storage="scene5.ks"  x="52"  y="445"  width="164"  height="71"  target="*talkA2"  ]
[clickable  storage="scene5.ks"  x="389"  y="439"  width="69"  height="75"  target="*air2"  ]
[s  ]
*syokudo2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[camera  time="8000"  zoom="1"  wait="false"  layer="base"  ease_type="linear"  x="200"  ]
[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
食堂[p]
豪華な料理が並んでいた[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="1000"  wait="false"  layer="base"  ease_type="ease"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_eval  exp="f.check_env4=1"  name="check_env4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene5.ks"  target="*before_sleep"  ]
*talkE2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/家賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
す、すべてを知るナゾって一体どなたなんでしょう・・・？[p]
[_tb_end_text]

[chara_hide  name="ナゾB"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.talk_E_4=1"  name="talk_E_4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene5.ks"  target="*before_sleep"  ]
*talkA2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
茶々丸が言っていたこと・・・[p]
すべてを知るナゾの目的は一体何だろう？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_eval  exp="f.talk_A_4=1"  name="talk_A_4"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene5.ks"  target="*before_sleep"  ]
*air2

[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/空気清浄機.webp"  width="366"  height="397"  x="429"  y="62"  _clickable_img=""  name="img_242"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
一般的な加湿器だ[p]
ちゃんと稼働している[p]
[_tb_end_text]

[tb_image_hide  time="300"  ]
[tb_hide_message_window  ]
[tb_eval  exp="f.air=1"  name="air"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[jump  storage="scene5.ks"  target="*before_sleep"  ]
[cm  ]
*sleep

[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/黒背景.webp"  width="1280"  height="720"  name="img_253"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_image_show  time="1000"  storage="default/time_23.5.webp"  width="1280"  height="720"  name="img_255"  ]
[wait  time="2500"  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="300"  storage="default/空気清浄機.webp"  width="50"  height="54"  x="393"  y="460"  _clickable_img=""  name="img_7"  ]
[chara_show  name="ナゾE"  time="300"  wait="true"  storage="chara/5/家賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ふあ～あ[p]
（なんだか急に眠くなってきたな・・・）[p]
#ナゾE
え、Aさんお疲れですか？[p]
きょ、今日はもう寝ますか？[p]
#
そうだね[p]
明日何か起こるみたいだし僕はもう寝ようかな[p]
#ナゾE
そ、それでしたら、あの[p]
BさんとDさんにお伝えしたほうが良いかもしれません[p]
あのお二人は食堂開けられるか分かりませんし・・・[p]
#
たしかにそうだね[p]
じゃあ遊戯室に寄ってから戻るよ[p]
おやすみ～[p]
#ナゾE
はい、おやすみなさい[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="遊戯室中.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="1500"  ]
[chara_show  name="ナゾB"  time="1000"  wait="false"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="80"  top="108"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="505"  height="357"  left="650"  top="108"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
お、Aさんも次歌いますか？[p]
#
（カラオケしてたのか）[p]
（全然聞こえなかったな）[p]
いや、もう寝るからいいですよ[p]
なんだか急に眠くなっちゃって[p]
#ナゾD
えー、遊びに来たんじゃないんですか～？[p]
#
いや、2人は食堂開けられないと思ったので[p]
一応報告に[p]
#ナゾB
なるほどな[p]
別にもう食堂行くことはないかな[p]
#ナゾD
そっすね[p]
ちょっと運動したりして汗かいたんで大浴場には行くかもっすけど[p]
#ナゾB
もう少し遊んでからだな[p]
#
じゃあぼくは構わず寝ちゃいますね[p]
おやすみなさい[p]
#ナゾB
おう[p]
#ナゾD
Aさんおやすみっす[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
一体明日何が起こるんだろう？[p]
そしてすべてを知るナゾの目的は何なんだろう[p]
まあ・・いいや・・・[p]
そんな・・・ことより・・・・[p]
ね・・・・むい・・・[p]
・・・・・・・・[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[jump  storage="scene6.ks"  target="*morning"  ]
