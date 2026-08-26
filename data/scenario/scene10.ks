[_tb_system_call storage=system/_scene10.ks]
[call storage="common_ui.ks" target="*init"]

*start

[tb_start_text mode=1 ]
#茶々丸
ちゃちゃーん！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="476"  height="320"  left="84"  top="125"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
無事にドアディスプレイの電源を復活させることができたようだニャ[p]
じゃあ、大広間に行って全員でカウントを確認するニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="大広間中.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[playbgm  volume="50"  time="3000"  loop="true"  storage="Surviving_Cyber.mp3"  fadein="true"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
全員揃ったニャ[p]
なんとナゾAとナゾDの力でドアディスプレイが復活したニャ[p]
これでナゾCが死ぬ直前にリセットボタンを押してから、ぼくが館の時間を止めるまでの間に[p]
各部屋何回カギを開けたかが分かるニャ[p]
きっと真相解明の役に立つニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="1000"  storage="default/count.webp"  width="849"  height="479"  x="217"  y="13"  _clickable_img=""  name="img_19"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
お、Aさん0っすね[p]
これはアリバイが証明されたんじゃないっすか？[p]
#ナゾB
たしかにそれはそうだが・・・[p]
これはナゾBが殺されてからだから2時以降の話だろ？[p]
Dは「2時以降、Eが部屋を出た音がしなかった」って言ってたのに[p]
DもEも2回ずつ出入りしてんじゃねーか[p]
てめーら共犯だろ？[p]
#ナゾD
ち、違うっすよ[p]
自分は2時以降一回も自分の部屋から出てないですし[p]
Eさんが出た音も聞こえませんでした[p]
#ナゾE
わ、わわ、私も違いますっ！[p]
#ナゾB
違うだあ？[p]
おい、茶々丸[p]
この数字は合ってるんだろうな？[p]
#茶々丸
ちゃんと合ってるニャ[p]
[_tb_end_text]

*restart

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
この数字は「ナゾCが死んでから翌朝僕が時間を止めるまでの回数」ニャ[p]
僕が時間を止めたのは死体発見現場にみんなが集まってからニャ[p]
#ナゾB
ほらみろ[p]
数字が正しいってことはお前らがウソついてるってことだ[p]
おい、茶々丸これで事件は解決だ[p]
ここから出せ[p]
#
（・・・・・）[p]
（本当にそうだろうか？）[p]
（・・・いや違う！）[p]
（みんな勘違いしている！）[p]
（この事件は・・・）[p]
[_tb_end_text]

[tb_start_tyrano_code]
*start_reasoning
[cm]
[tb_hide_message_window]

; ▼ 選択中の言葉を入れる変数を初期化（最初は空欄にしておく）
[eval exp="tf.word1 = '＿＿＿＿'"]
[eval exp="tf.word2 = '＿＿＿＿'"]

*show_reasoning_ui
[cm]
[freeimage layer="1" time="0"]

; ▼ 背景画像（※実際の推理画面の背景に変更してください）
[bg storage="大広間中.webp" time="0"]

; ===================================
; ① 現在選んでいる言葉を画面上部に表示
; ===================================
; 【前半の言葉】
[ptext layer="1" x="250" y="100" size="30" color="black" text="「" overwrite="true" name="txt"]
[ptext layer="1" x="290" y="100" size="30" color="red" bold="true" text="&tf.word1" overwrite="true" name="txt"]
[ptext layer="1" x="500" y="100" size="30" color="black" text="」" overwrite="true" name="txt"]

; 【後半の言葉】
[ptext layer="1" x="550" y="100" size="30" color="black" text="「" overwrite="true" name="txt"]
[ptext layer="1" x="590" y="100" size="30" color="blue" bold="true" text="&tf.word2" overwrite="true" name="txt"]
[ptext layer="1" x="800" y="100" size="30" color="black" text="」" overwrite="true" name="txt"]


; ===================================
; ② 言葉を選ぶボタン（glinkタグ）
; ===================================
; --- 前半の言葉の選択肢 ---
[glink target="*select_w1_1" text="犯行現場が" x="200" y="250" size="24" width="200" color="black"]
[glink target="*select_w1_2" text="凶器が"     x="200" y="330" size="24" width="200" color="black"]
[glink target="*select_w1_3" text="ナゾCは"    x="200" y="410" size="24" width="200" color="black"]
[glink target="*select_w1_4" text="犯行時刻が" x="200" y="490" size="24" width="200" color="black"]

; --- 後半の言葉の選択肢 ---
[glink target="*select_w2_1" text="間違っている" x="650" y="250" size="24" width="200" color="black"]
[glink target="*select_w2_2" text="消えている"   x="650" y="330" size="24" width="200" color="black"]
[glink target="*select_w2_3" text="生きている"   x="650" y="410" size="24" width="200" color="black"]

; ===================================
; ③ 決定ボタン
; ===================================
[glink target="*submit_answer" text="この推理で決定する" x="425" y="600" size="24" width="250" color="red"]

[s]


; ===================================
; ▼ 各ボタンを押した時の処理（変数に文字を入れて再描画）
; ===================================
*select_w1_1
[eval exp="tf.word1 = '犯行現場が'"][jump target="*show_reasoning_ui"]
*select_w1_2
[eval exp="tf.word1 = '凶器が'"][jump target="*show_reasoning_ui"]
*select_w1_3
[eval exp="tf.word1 = 'ナゾCは'"][jump target="*show_reasoning_ui"]
*select_w1_4
[eval exp="tf.word1 = '犯行時刻が'"][jump target="*show_reasoning_ui"]

*select_w2_1
[eval exp="tf.word2 = '間違っている'"][jump target="*show_reasoning_ui"]
*select_w2_2
[eval exp="tf.word2 = '消えている'"][jump target="*show_reasoning_ui"]
*select_w2_3
[eval exp="tf.word2 = '生きている'"][jump target="*show_reasoning_ui"]


; ===================================
; ▼ 決定ボタンを押した時の判定処理
; ===================================
*submit_answer
[cm]

; ▼ もし空欄が残っている場合
[if exp="tf.word1 == '＿＿＿＿' || tf.word2 == '＿＿＿＿'"]
[tb_show_message_window]
#
まだ言葉が揃っていない。[p]
[tb_hide_message_window]
@jump target="*show_reasoning_ui"
[endif]


; ▼ 【超重要】仕分け処理（解答のチェック）
; 画面上のテキスト（ptext）やボタンを消去する
[freeimage layer="1" time="0"]

; ① 正解：「犯行時刻が」＋「間違っている」
[if exp="tf.word1 == '犯行時刻が' && tf.word2 == '間違っている'"]
@jump target="*true"

; ② 特殊ダミー：「ナゾCは」＋「生きている」
[elsif exp="tf.word1 == 'ナゾCは' && tf.word2 == '生きている'"]
@jump target="*fool"

; ③ 上記以外のすべての組み合わせ
[else]
@jump target="*false"
[endif]
[_tb_end_tyrano_code]

*true

[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
（それを裏付けるのは・・・）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="600"  storage="default/手がかり.webp"  width="910"  height="250"  x="189"  y="189"  name="img_32"  ]
[clickable  storage="scene10.ks"  x="189"  y="189"  width="242.6"  height="242.6"  target="*false"  ]
[clickable  storage="scene10.ks"  x="516"  y="189"  width="242.6"  height="242.6"  target="*false"  ]
[clickable  storage="scene10.ks"  x="848.4"  y="189"  width="242.6"  height="242.6"  target="*true2"  ]
[s  ]
*fool

[cm  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
みんな勘違いしている！[p]
ナゾCさんは生きている！[p]
#茶々丸
死んでるニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*restart"  ]
*false

[cm  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
もう一度考え直すニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*restart"  ]
*true2

[cm  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[font color="red" bold="true"]それは違うよ！[resetfont][p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ビシッとツッコミ1.mp3"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="tactics.mp3"  ]
[tb_start_text mode=1 ]
#ナゾB
！[p]
#ナゾD
え？[p]
#ナゾE
・・・⁉[p]
#ナゾB
おい、どういうことだ[p]
数字が本当ってことはこいつらがウソついてるに決まってるじゃねーか[p]
#
違います[p]
2人はウソをついていません[p]
間違っているのは「犯行時刻」の方だったんです！[p]
ナゾCさんは2時より前に殺されていたんです[p]
#ナゾD
なんやて！？[p]
#ナゾE
う、うそっ　でも・・・[p]
#ナゾB
おもろいこと言うやないか探偵さん[p]
今導き出してる2時以降っていう犯行時刻は[p]
他でもない「生きているナゾC」を見た時刻や[p]
それをお前は2時より前に殺されとったっていうんか[p]
#
はい[p]
守衛室には、大浴場につながる防犯カメラの映像が映っていました[p]
これには[p]
①19時半ごろに館を探索していた時に出入りしていたDさんとEさん[p]
②0時半ごろに汗を流しに来たBさんとDさん、そして1時間後にそこから出ていく様子[p]
③ナゾCさんの血を洗うために入っていく僕とDさんの姿[p]
が映されていました[p]
この内③は茶々丸がカウントを止めた後なので、大浴場のカウントである「1」には含まれていません[p]
であればリセットボタンは①と②の間に押されている[p]
つまり②で大浴場に入った0時半より前にナゾCさんは殺されていることになります[p]
#ナゾD
Aさんほんとに探偵みたいっす[p]
#ナゾE
す、すごいです・・・[p]
#
僕が自分の部屋に入る時、ナゾCさんは殺されていなかったので[p]
犯行時刻は[font color="red" bold="true"]23時半から0時半[resetfont]となります[p]
#ナゾB
お前が寝るまでに殺されてないってなんで断言できるんだ！[p]
証拠がないだろ証拠が[p]
#
ではなぜあなたの部屋のカウントは1になっているんですか？[p]
#ナゾB
・・・っ！[p]
#
Bさん、あなたの部屋はナゾCさんが倒れていた場所の目の前です[p]
ナゾCさんが死ぬ直前、リセットボタンがあの場所で押されていたとしたら[p]
当然あなたも自分の部屋に入る前に気づくはずです！[p]
ナゾCさんが死んでいると[p]
答えてください[p]
どうしてあなたの部屋のカウントは1なんですか？[p]
#ナゾB
ぐぬぬぬぬぬ！[p]
[_tb_end_text]

[tb_hide_message_window  ]
*syotai

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
だが待て！[p]
じゃあDとEが見たっていうナゾCは何なんだ？[p]
まさか死体が蘇ったとでもいうのか？[p]
#
（確かに不可解な現象だ）[p]
（ナゾCさんがそれ以前に殺されていたことは間違いない）[p]
（であればあのナゾCさんの正体は・・・）[p]
[font color="red" bold="true"]タッチで指名しよう！[resetfont][p]
[_tb_end_text]

[tb_hide_message_window  ]
[clickable  storage="scene10.ks"  x="30"  y="180"  width="300"  height="202"  target="*cha"  ]
[clickable  storage="scene10.ks"  x="355"  y="180"  width="284"  height="200"  target="*b"  ]
[clickable  storage="scene10.ks"  x="660"  y="180"  width="284"  height="200"  target="*d"  ]
[clickable  storage="scene10.ks"  x="965"  y="180"  width="284"  height="200"  target="*e"  ]
[s  ]
*cha

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
違うニャ[p]
#
・・・・・[p]
（もう一度考え直そう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*syotai"  ]
*d

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
僕じゃないっすよ[p]
僕はEさんと一緒に見てたんで[p]
#
・・・・・[p]
（もう一度考え直そう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*syotai"  ]
*e

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
わ、わわ、私じゃないですっ[p]
私はDさんと一緒に見てましたっ[p]
#
・・・・・[p]
（もう一度考え直そう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*syotai"  ]
*b

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
休憩室の前に現れたナゾCさんの正体は・・・[p]
[font color="red" bold="true"]ナゾBさん[resetfont]！あなただ！[p]
#ナゾE
えっ！[p]
#ナゾB
・・・っ！[p]
#ナゾD
それは本当かねナゾAくん！[p]
#
ええ、本当です[p]
ナゾBさんはナゾCさんになりすますことで、DさんとEさんの前に現れ[p]
あたかもそれまでCさんが生きているかのように見せていたんです[p]
#ナゾB
おいおいおい[p]
一体おれがどうやってナゾCなんかになりすましたっていうんだよ[p]
#
あなたがナゾCさんになりすました方法[p]
それは・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="遊戯室を使った"  x="965"  y="80"  width="240"  height=""  _clickable_img=""  target="*no"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="大広間を使った"  x="965"  y="150"  width="240"  height=""  _clickable_img=""  target="*no"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="機械制御室を使った"  x="965"  y="220"  width="240"  height=""  _clickable_img=""  target="*yes"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="備蓄庫を使った"  x="965"  y="290"  width="240"  height=""  _clickable_img=""  target="*no"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="物置を使った"  x="965"  y="360"  width="240"  height=""  _clickable_img=""  target="*no"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="厨房を使った"  x="965"  y="430"  width="240"  height=""  _clickable_img=""  target="*no"  ]
[s  ]
*no

[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
それで一体どうやってなりすますっすか？[p]
#
うっ[p]
間違えました[p]
#ナゾB
おどかしやがって[p]
#
（もう一度考えてみよう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*b"  ]
*yes

[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
機械制御室の法則を使ってナゾCさんになりすましたんです！[p]
つまり、こういうことです[p]
（パワポでMAP上のアイコンを動かす動画で説明する）[p]
#ナゾB
ぐぬぬぬぬぬ！[p]
#ナゾD
なるほど[p]
確かに僕らが見たCさんは上の部分「C」って書かれてる部分は見えませんでした[p]
あれはBさんがなりすましていたとは思わなかったっす[p]
#ナゾE
そ、そんな[p]
ということは、は、犯人は・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
*hanninha

[wait  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
つまり[font color="red" bold="true"]ナゾCさんを殺した犯人は[resetfont][p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="ナゾBさんだ！"  x="965"  y="200"  width="240"  height=""  _clickable_img=""  target="*yes2"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="ナゾBさんではない！"  x="965"  y="350"  width="240"  height=""  _clickable_img=""  target="*noyes"  ]
[s  ]
*yes2

[cm  ]
[tb_show_message_window  ]
[stopbgm  time="1000"  ]
[tb_start_text mode=1 ]
#
つまり[font color="red" bold="true"]ナゾCさんを殺した犯人[resetfont]は[p]
[font color="red" bold="true"]ナゾBさん[resetfont]　あなただ！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="0"  storage="ビシッとツッコミ1.mp3"  ]
[wait  time="500"  ]
[tb_start_text mode=1 ]
#ナゾB
違います[p]
#茶々丸
違うニャ[p]
（ここエンディング分岐か迷っています）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*hanninha"  ]
*noyes

[cm  ]
[tb_start_text mode=1 ]
#
いいえ[font color="red" bold="true"]ナゾCさんを殺した犯人[resetfont]は[p]
ナゾBさんでは[font color="red" bold="true"]ありません[resetfont]　[p]
#ナゾB
おう！[p]
たまにはいいこと言うじゃねーか[p]
そうだそうだバカやろー[p]
#茶々丸
黙るニャ[p]
お前はもう発言権無しニャ[p]
#ナゾB
・・・・・・・[p]
[_tb_end_text]

[chara_hide  name="ナゾB"  time="600"  wait="true"  pos_mode="true"  ]
[chara_move  name="茶々丸"  anim="true"  time="600"  effect="linear"  wait="false"  left="4"  top="167"  width="429"  height="289"  ]
[chara_move  name="ナゾD"  anim="true"  time="600"  effect="linear"  wait="false"  left="484"  top="200"  width="332"  height="234"  ]
[chara_move  name="ナゾE"  anim="true"  time="600"  effect="linear"  wait="true"  left="879"  top="200"  width="332"  height="234"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
気を取り直して進めるニャ[p]
なんでナゾBは犯人じゃニャいニャ？[p]
#
まずアリバイです[p]
大浴場の入り口を映した映像とドアのカウントから[p]
ナゾCさんは23時半～0時半の間に殺されていることが分かりました[p]
しかし、ナゾBさんはその間アリバイがあります[p]
#ナゾD
あ、僕と遊戯室でカラオケしてたっす[p]
#
そう[p]
さらにナゾCさんが残したダイイングメッセージの説明も付きません[p]
#ナゾE
し、Cさんが・・・最後に残したメッセージ・・・[p]
#ナゾD
それを無視するわけにはいかないっすね[p]
あれ、でもそれなら犯人はAさんってことになりません？[p]
[_tb_end_text]

[tb_hide_message_window  ]
*shinhanninha

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
（アリバイ、ダイイングメッセージ、移動の経路・・・）[p]
（これらを考慮するとこの事件の犯人は・・・）[p]
[font color="red" bold="true"]タッチして指名しよう[resetfont][p]
[_tb_end_text]

[clickable  storage="scene10.ks"  x="4"  y="167"  width="429"  height="289"  target="*chacha"  ]
[clickable  storage="scene10.ks"  x="484"  y="200"  width="332"  height="234"  target="*dd"  ]
[clickable  storage="scene10.ks"  x="879"  y="200"  width="332"  height="234"  target="*e_true"  ]
[s  ]
*chacha

[cm  ]
[tb_start_text mode=1 ]
#
[font color="red" bold="true"]茶々丸[resetfont]・・・！[p]
あなただ！[p]
#茶々丸
違うニャ[p]
#
・・・くっ！[p]
（もう一度考え直してみよう）[p]
[_tb_end_text]

[jump  storage="scene10.ks"  target="*shinhanninha"  ]
*dd

[cm  ]
[tb_start_text mode=1 ]
#
[font color="red" bold="true"]ナゾDさん[resetfont]・・・！[p]
あなただ！[p]
#ナゾD
いや、僕もBさんと同じでアリバイがあるっすよ[p]
それにダイイングメッセージも僕が犯人だとするとよく分かんないですし・・・[p]
#
・・・くっ！[p]
（もう一度考え直してみよう）[p]
[_tb_end_text]

[jump  storage="scene10.ks"  target="*shinhanninha"  ]
*e_true

[cm  ]
[tb_start_text mode=1 ]
#
[font color="red" bold="true"]ナゾEさん[resetfont]・・・！[p]
あなただ！[p]
#ナゾE
ち、ちち、違いますっ！[p]
#ナゾD
そ、そうっすよ[p]
それにダイイングメッセージはどうなるんですか？[p]
#ナゾE
ちゃ、茶々丸さん！[p]
ダイイングメッセージは「ナゾCさんが犯人を示そうとして『らいふ』という答えに変化した」ものなんですよね？[p]
#茶々丸
間違いニャいニャ[p]
それにナゾCがダイイングメッセージを残したあと、犯人の手によって工作された形跡もニャいニャ[p]
#ナゾD
てことはやっぱり・・・[p]
自分が助かろうとしてEさんを犯人に仕立て上げるのはよくないっすよ[p]
#
（ナゾEさんがCさんを殺して「らいふ」と残させた方法・・・）[p]
（それは・・・）[p]
答えが分かったら茶々丸に5文字で解答しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="600"  wait="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
*ans_shinhannin

[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think" x="20" y="540"]
[_tb_end_tyrano_code]

[clickable  storage="scene10.ks"  x="30"  y="180"  width="300"  height="202"  target="*talk_Brown"  ]
[clickable  storage="scene10.ks"  x="355"  y="180"  width="284"  height="200"  target="*talkB"  ]
[clickable  storage="scene10.ks"  x="660"  y="180"  width="284"  height="200"  target="*talkD"  ]
[clickable  storage="scene10.ks"  x="965"  y="180"  width="284"  height="200"  target="*talkE"  ]
[s  ]
*talkD

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/D_反対.webp"  width="473"  height="335"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
もう何が何だか分かんなくなってきたっす[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="true"  ]
[jump  storage="scene10.ks"  target="*ans_shinhannin"  ]
*talkB

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="473"  height="335"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
まさかおれの完ぺきな[font color="red" bold="true"]なりすまし[resetfont]がバレるとはな[p]
やるじゃねーか[p]
#
あなたは事件の真相を知ってるんですか？[p]
#ナゾB
知っちゃあいるが[p]
茶々丸にどやされるからな[p]
おれからは言わねーよ[p]
自分で考えな[p]
#
（茶々丸に・・・？）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="true"  ]
[jump  storage="scene10.ks"  target="*ans_shinhannin"  ]
*talkE

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖賛成.webp"  width="473"  height="335"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
・・・・・[p]
#
（自分が犯人だと疑われて怒ってる）[p]
（これ以上は近づかないほうが良いな）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="true"  ]
[jump  storage="scene10.ks"  target="*ans_shinhannin"  ]
*think

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ナゾEさんがCさんを殺して「らいふ」と残させた方法・・・[p]
答えが分かったら茶々丸に5文字で解答しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*ans_shinhannin"  ]
*talk_Brown

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="476"  height="320"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
答えが分かったのかニャ？[p]
[font color="red" bold="true"]5文字[resetfont]で解答するのニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="答える"  x="965"  y="200"  width="140"  height=""  _clickable_img=""  target="*start_nazo"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="まだ考える"  x="965"  y="320"  width="140"  height=""  _clickable_img=""  target="*ans_shinhannin"  ]
[s  ]
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
; ▼ 答え合わせの処理（正解は「なりすまし」）
; ===================================
*check_answer
[cm]
[freeimage layer="1" time="0"]
[layopt layer="message0" visible="true"]

[if exp="f.answer == 'なりすまし'"]
; ▼ 正解時のジャンプ
@jump target="*true_ans"
[else]
#茶々丸
『[emb exp="f.answer"]』……？
うーんもう一度考えてみるのニャ[p]
; ▼ 不正解時はやり直し
@jump target="*ans_shinhannin"
[endif]
[s]
[_tb_end_tyrano_code]

*true_ans

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="true"  ]
[wait  time="1000"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
[font color="red" bold="true"]なりすまし[resetfont]・・・[p]
そう[font color="red" bold="true"]なりすまし[resetfont]を使ったんです！[p]
#ナゾD
えぇ！またっすか！[p]
でもいったいどうやって[p]
#
ナゾEさんは僕になりすますことで[p]
ナゾCさんに犯人はナゾAだと思い込ませて、誤ったダイイングメッセージを残させたんです[p]
その時、ナゾCさんを殺害する際に通ったルートは・・・[p]
(ルートが分かったら茶々丸に話しかけよう)[p]
[_tb_end_text]

*last_ans

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[wait  time="600"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="540"]
[_tb_end_tyrano_code]

[clickable  storage="scene10.ks"  x="30"  y="180"  width="300"  height="202"  target="*talk_brown2"  ]
[clickable  storage="scene10.ks"  x="355"  y="180"  width="284"  height="200"  target="*talkB2"  ]
[clickable  storage="scene10.ks"  x="660"  y="180"  width="284"  height="200"  target="*talkD2"  ]
[clickable  storage="scene10.ks"  x="965"  y="180"  width="284"  height="200"  target="*talkE2"  ]
[s  ]
*talkD2

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/D_反対.webp"  width="473"  height="335"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
EさんがAさんになりすましてたってことですか？[p]
ほんとにそんなことできるんすかね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*last_ans"  ]
*talkB2

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="473"  height="335"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
・・・・・[p]
#
（何も話してくれない。茶々丸から釘を刺されているのだろうか）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*last_ans"  ]
*talkE2

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖賛成.webp"  width="473"  height="335"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
・・・・・！[p]
#
（めちゃくちゃにらまれてる・・・）[p]
（これ以上は近づかないほうが良いな）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*last_ans"  ]
*think2

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ナゾEさんが僕になりすます方法[p]
MAPとこの館の法則を使って考えよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene10.ks"  target="*last_ans"  ]
*talk_brown2

[cm  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="476"  height="320"  left="408"  top="103"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
ルートが分かったのかニャ？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="答える"  x="965"  y="200"  width="140"  height=""  _clickable_img=""  target="*start_route_puzzle"  ]
[glink  color="btn_19_black"  storage="scene10.ks"  size="20"  text="まだ考える"  x="965"  y="320"  width="140"  height=""  _clickable_img=""  target="*true_ans"  ]
[s  ]
[tb_start_tyrano_code]
*start_route_puzzle
[cm]
[tb_hide_message_window]
[chara_hide_all time="300"]
[freeimage layer="1" time="0"]

; ▼ 変数の初期化（選んだ部屋の名前と、現在のステップ数をリセット）
[eval exp="tf.route_step = 0"]
[eval exp="tf.ans1 = ''"]
[eval exp="tf.ans2 = ''"]
[eval exp="tf.ans3 = ''"]
[eval exp="tf.ans4 = ''"]
[eval exp="tf.ans5 = ''"]

*show_route_ui
[cm]
; ▼ 背景画像（新しい route.webp に変更！）
[bg storage="route.webp" time="0"]
[freeimage layer="1" time="0"]

; ▼ 【追加】レイヤー1を確実に表示状態にする（これがないと文字が透明になる場合があります）
[layopt layer="1" visible="true"]

; ===================================
; ① 右側の空欄に選んだ部屋名を表示する（中央揃え版）
; ===================================
[ptext layer="1" text="&tf.ans1" x="1043.7" y="107" size="30" color="black" bold="true" name="ans1" width="201" align="center"]
[ptext layer="1" text="&tf.ans2" x="1043.7" y="192" size="30" color="black" bold="true" name="ans2" width="201" align="center"]
[ptext layer="1" text="&tf.ans3" x="1043.7" y="278" size="30" color="black" bold="true" name="ans3" width="201" align="center"]
[ptext layer="1" text="&tf.ans4" x="1043.7" y="364" size="30" color="black" bold="true" name="ans4" width="201" align="center"]
[ptext layer="1" text="&tf.ans5" x="1043.7" y="450" size="30" color="black" bold="true" name="ans5" width="201" align="center"]


; ===================================
; ② MAPの各部屋にクリッカブルを配置する
; ===================================
; ▼ 5つ選び終わるまでは部屋をクリックできる
[if exp="tf.route_step < 5"]
; 【正解ルートの部屋】
[clickable target="*click_monooki" x="781.1" y="105.5"  width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_shuei"   x="781.1" y="534.4" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_shokudo" x="506.7" y="391.1" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_ohiroma" x="363.6" y="483.8" width="282.8" height="189.1" color="white" opacity="0"]
[clickable target="*click_chubo"   x="363.6" y="391.1" width="139.7" height="89" color="white" opacity="0"]

; 【ダミーの部屋】
[clickable target="*click_A"       x="63.1" y="248.5" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_B"       x="63.1" y="391.1" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_C"       x="63.1" y="534.4" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_D"       x="781.1" y="248.5" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_E"       x="781.1" y="391.1" width="165.5" height="139.1" color="white" opacity="0"]
[clickable target="*click_bitikuko"       x="363.6" y="298.4" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_kyukeisitu"       x="506.7" y="298.4" width="139.7" height="89" color="white" opacity="0"]
[clickable target="*click_daiyokujo"       x="363.6" y="105.5" width="139.5" height="111.5" color="white" opacity="0"]
[clickable target="*click_daiyokujo"       x="503.1" y="105.5" width="143.3" height="74.5" color="white" opacity="0"]
[clickable target="*click_yugisitu"       x="363.6" y="220.4" width="143.3" height="74.5" color="white" opacity="0"]
[clickable target="*click_yugisitu"       x="506.8" y="183.3" width="139.5" height="111.5" color="white" opacity="0"]
[clickable target="*click_kikaiseigyositu"       x="63.1" y="105.5" width="165.5" height="139.1" color="white" opacity="0"]
[endif]


; ===================================
; ③ 右下の「決定」「やりなおす」ボタン
; ===================================
[clickable target="*check_answer2" x="1027.9" y="626.9" width="142.8" height="63.9" color="white" opacity="0"] ; 決定ボタン
[clickable target="*start_route_puzzle" x="1184.7" y="626.9" width="80.6" height="63.9" color="white" opacity="0"] ; やりなおすボタン

[s]


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

; ダミー
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
[elsif exp="tf.route_step == 2"]
[eval exp="tf.ans3 = tf.selected_room"]
[elsif exp="tf.route_step == 3"]
[eval exp="tf.ans4 = tf.selected_room"]
[elsif exp="tf.route_step == 4"]
[eval exp="tf.ans5 = tf.selected_room"]
[endif]

; 代入が終わったらステップを「+1」して、UIの表示へ戻る
[eval exp="tf.route_step = tf.route_step + 1"]
[jump target="*show_route_ui"]


; ===================================
; ▼ 正誤の判定処理（決定ボタンを押した時）
; ===================================
*check_answer2
[cm]

; ▼ まず「5つすべて選ばれているか」をチェック
[if exp="tf.route_step < 5"]
[tb_show_message_window]
#
まだルートをすべて選択していないようだ。[p]
[tb_hide_message_window]
@jump target="*show_route_ui"
[endif]


; ▼ 前半3つが順不同、後半2つが固定の判定
[if exp="([tf.ans1, tf.ans2, tf.ans3].indexOf('物置') != -1) && ([tf.ans1, tf.ans2, tf.ans3].indexOf('守衛室') != -1) && ([tf.ans1, tf.ans2, tf.ans3].indexOf('食堂') != -1) && tf.ans4 == '大広間' && tf.ans5 == '厨房'"]
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
間違いない。これがEさんが通ったルートだ！[p]
[tb_hide_message_window]
@jump target="*after"

*route_incorrect
[tb_show_message_window]
#
いや、これだと上手く行かないなもう一度考え直そう。[p]
[tb_hide_message_window]
; 自動的にリセットしてやり直し
@jump storage="scene10.ks" target="*last_ans"
[_tb_end_tyrano_code]

*after

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="大広間中.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
これがEさんが通ったルートになります[p]
（動画で説明）[p]
#ナゾD
でもこれは可能ってだけで[p]
ほんとはやってないんすよね？[p]
#
いえ、部屋のカウントと辻褄が合います[p]
Eさんが犯人で間違いないかと[p]
#ナゾE
ええそうよ[p]
私がやったの[p]
#ナゾD
そんな・・・[p]
でもなんで・・・[p]
なんでCさんを殺したんすか！[p]
#ナゾE
なんでって[p]
そう言われたからよ[p]
#ナゾD
ああそうか[p]
なるほど[p]
#
・・・⁈[p]
#茶々丸
困惑しているようだニャ[p]
#
茶々丸・・・[p]
#茶々丸
ナゾを解き明かしたご褒美ニャ[p]
全部教えてあげるニャ[p]
この世界はぼくがこの謎解きのためだけに作った世界ニャ[p]
だからナゾたちはぼくの思い通りに動くニャ[p]
キミ以外は[p]
#
・・・・！[p]
#茶々丸
だから動機ニャンてものは存在しニャいし、キミたちの過去もニャいニャ[p]
このナゾ解きのためだけに生まれたナゾニャのニャ[p]
#
そのためだけにナゾCさんは殺されたっていうのか？[p]
#茶々丸
ぼくはただ画面の向こうにいるキミに楽しんでほしかっただけニャのニャ[p]
だからあんまりキャラクターとかの死に過敏になる必要はニャいニャ[p]
ちなみに分岐エンディングとかニャいニャ[p]
BADENDかーとか考えニャくていいニャ[p]
じゃあまた会えるのを楽しみにしてるニャ[p]
ばいばいニャ～[p]
（終わり方迷走中）[p]
[_tb_end_text]

[tb_hide_message_window  ]
