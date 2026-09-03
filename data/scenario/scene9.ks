[_tb_system_call storage=system/_scene9.ks]

[call  storage="common_ui.ks"  target="*init"  ]
*start

[tb_start_text mode=1 ]
#ナゾA
・・・！[p]
まさか・・・[p]
いや、だがこれならEさんも眠くなるはず[p]
Eさんに話を聞きに行こう[p]
Eさんは今・・・守衛室にいるのか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[bg  time="1000"  method="crossfade"  storage="守衛室.webp"  ]
*syuei

[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/家賛成.webp"  width="284"  height="200"  left="900"  top="314"  reflect="false"  ]
[clickable  storage="scene9.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round_s"  ]
[clickable  storage="scene9.ks"  x="348"  y="350"  width="319"  height="153"  target="*monitor"  _clickable_img=""  ]
[clickable  storage="scene9.ks"  x="473"  y="138"  width="194"  height="131"  target="*monitor"  _clickable_img=""  ]
[clickable  storage="scene9.ks"  x="828"  y="365"  width="157"  height="108"  target="*monitor"  _clickable_img=""  ]
[clickable  storage="scene9.ks"  x="665"  y="364"  width="150"  height="93"  target="*movie"  _clickable_img=""  ]
[clickable  storage="scene9.ks"  x="900"  y="314"  width="284"  height="200"  target="*talkE"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think" x="20" y="400"]
[_tb_end_tyrano_code]

[s  ]
*round_s

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
守衛室[p]
この館に不釣り合いな機器が並んでいる[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*syuei"  ]
*think

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
加湿器の水に睡眠薬が入っていたなら[r]同じ食堂にいたEさんも眠くなっているはず[p]
Eさんに話を聞こう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*syuei"  ]
*monitor

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
モニターには何も映っていない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*syuei"  ]
*movie

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
このモニターだけ映像が映っている[p]
大浴場の前の扉のようだ[p]
巻き戻してみると[p]
19時30分ごろにDとEが探索に来た時と、0時半ごろにBとDが入っていく様子、そして[p]
1時半ごろに出ていく様子が映し出されている[p]
どうやら茶々丸が時間を止めるまで、それ以外の出入りはなさそうだ[p]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.unlock_clue_4 = true; f.unlock_clue_4_p1 = true"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*syuei"  ]
*talkE

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/家賛成.webp"  width="507"  height="360"  left="399"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ちょっと聞きたいことがあるんですが・・・[p]
#ナゾE
な、何でしょうか？[p]
#ナゾA
Eさんって昨日Dさんの部屋を訪ねたみたいですが、それまでは何をされてたんですか？[p]
#ナゾE
あ、その、私今日何が起こるのかすごい不安で・・・[p]
Aさんと別れたあとも全然眠れなくて・・・[p]
そ、それで隣の部屋にDさんが帰ってきた音がしたから、部屋をノックしました[p]
Dさんと話したあとはちょっと落ち着いて、すぐに眠れたと思います[p]
#ナゾA
そうですか・・・[p]
（やはり。あの時食堂には睡眠薬の成分が部屋中に蔓延していたはずだ。）[p]
（それなのに眠くならないなんておかしい）[p]
（何か秘密があるはずだ）[p]
（Eさんの部屋を調べよう）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="false"  ]
*room_e

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="0"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="個室.webp"  ]
[clickable  storage="scene9.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round_e"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="400"]
[button graphic="btn_trushbox.webp" target="*check_trash" x="750" y="600" width="60" hight="60"]
[_tb_end_tyrano_code]

[s  ]
*round_e

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
この部屋に何か決定的な証拠が残されているかもしれない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*room_e"  ]
*think2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
Eさんが眠くならなかった秘密がこの部屋に隠されているかもしれない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*room_e"  ]
*check_trash

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[chara_hide_all  time="300"  wait="false"  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/btn_trushbox.webp"  width="175"  height="272"  x="551"  y="208"  _clickable_img=""  name="img_94"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ゴミ箱だ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/trushbox.webp"  width="371"  height="371"  x="441"  y="116"  _clickable_img=""  name="img_99"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
中にはマスクが入っている[p]
昨日着けていたものだろうか[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/mask.webp"  width="470"  height="254"  x="402"  y="172"  _clickable_img=""  name="img_104"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
マスクの裏には何やらフィルターのようなものが付いている[p]
マスクに洗剤を・・・[p]
[_tb_end_text]

[glink  color="btn_19_black"  storage="scene9.ks"  size="20"  text="かける"  x="906"  y="220"  width="130"  height="52"  _clickable_img=""  target="*do"  ]
[glink  color="btn_19_black"  storage="scene9.ks"  size="20"  text="かけない"  x="906"  y="333"  width="130"  height="52"  _clickable_img=""  target="*room_e"  ]
[s  ]
*do

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[tb_image_show  time="1000"  storage="default/mask_purple.webp"  width="470"  height="254"  x="402"  y="172"  _clickable_img=""  name="img_114"  ]
[wait  time="1500"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_doc_7_p2 = true"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
マスクが紫色に変色した[p]
・・・！[p]
まさか・・・！[p]
まさか本当にナゾEさんが僕に睡眠薬を仕込んだ？[p]
でもいったい何のために？[p]
#茶々丸
ちゃちゃーん！[p]
みんなそろそろ捜査は終わったかニャ？[p]
大広間に集まるニャ～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="大広間中.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
みんニャ集まったニャ～[p]
じゃあアリバイに関して主張できるナゾはいるかニャ～[p]
#ナゾA
あの、いいですか？[p]
#茶々丸
犯人第一候補のナゾAくんだニャ[p]
じゃあ主張するニャ[p]
#ナゾA
えと、ぼくは睡眠薬で眠らされた可能性があります[p]
#ナゾB
はあ？[p]
#ナゾD
睡眠薬っすか？[p]
#ナゾE
・・・⁉[p]
#ナゾA
ナゾBさんとナゾDさんが遊戯室に行った後、ナゾEさんが食堂の加湿器をつけました[p]
その加湿器の水に睡眠薬が仕込まれていたんです[p]
#ナゾD
ま、まじっすか[p]
#ナゾB
だがその話がほんとならEもお前と同様に強烈な眠気に襲われるんじゃないか？[p]
#ナゾE
わ、わわ、わたし、すごく眠くなってましたっ[p]
#ナゾA
いえ、Eさんには睡眠薬は効かなかったんです[p]
#ナゾD
どういう意味っすか？[p]
#ナゾA
これが何か分かりますか？[p]
[_tb_end_text]

[tb_image_show  time="500"  storage="default/mask_normal.webp"  width="485"  height="189"  x="391"  y="113"  _clickable_img=""  name="img_129"  ]
[tb_start_text mode=1 ]
#ナゾE
そ、それは、き、昨日つけてたマスクですっ[p]
#ナゾD
うわ、Aさん使用済みマスク回収するとかちょっとキモイっすね[p]
#ナゾA
・・・・・[p]
見てほしいのはこちらの面です[p]
[_tb_end_text]

[tb_image_hide  time="500"  ]
[wait  time="200"  ]
[tb_image_show  time="500"  storage="default/mask_purple.webp"  width="421"  height="227"  x="425"  y="71"  _clickable_img=""  ]
[tb_start_text mode=1 ]
#ナゾE
・・・！[p]
#ナゾB
⁉[p]
#ナゾD
え、むらさき？[p]
#ナゾA
これが今回使用されたと思われる睡眠薬です[p]
こちらは備蓄庫にありました[p]
この薬品は「アルカリ性のものと反応して紫色に変色」します[p]
つまり、このマスクの内側のフィルターが紫色に変色しているのは[p]
そのフィルターが「睡眠薬の成分」を吸い込む前に回収してたからです[p]
[_tb_end_text]

[tb_image_hide  time="500"  ]
[tb_start_text mode=1 ]
#ナゾD
え、じゃあEさんが・・・[p]
#ナゾE
い、いや、ち、違いますっ！[p]
#ナゾB
見かけによらないもんだな[p]
#ナゾD
まあ「攻撃」って書いてるくらいですし[p]
#ナゾE
あ、あの、違いますっ[p]
私もなぜか眠くなってたんです[p]
#ナゾA
いえ、あなたは眠れないという理由でナゾDさんの部屋を訪ねていました[p]
#ナゾE
あ、あの、そのっ[p]
た、確かに睡眠薬は仕込みました[p]
で、ですが、それは命令されたからで・・・[p]
#ナゾA
それは誰にですか？[p]
#ナゾE
そ、それは、言えません・・・[p]
#ナゾB
じゃあ当てになんねーじゃねーか[p]
#ナゾE
で、ですがっ[p]
私にはアリバイがありますっ！[p]
Dさんが証明してくれています！[p]
#ナゾD
まあ確かにそれはそうですが・・・[p]
#ナゾE
ほ、ほんとうに私じゃありません！[p]
信じてください！[p]
#ナゾB
だが実際、Aは眠らされていた[p]
そして現状一番怪しいやつにアリバイがあるってなると[p]
捜査は振出しになったんじゃないか？[p]
#ナゾA
・・・・・[p]
#ナゾD
まあ、そうかもっすね[p]
#茶々丸
ニャ～[p]
捜査が進まニャくニャってきたニャ[p]
じゃあ、見事自分のピンチを脱したAに免じてご褒美ニャ[p]
物置と機械制御室の法則を公開しちゃうニャ～[p]
これだニャ！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/物置法則.webp"  width="390"  height="390"  x="430"  y="100"  _clickable_img=""  name="img_130"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
なるほど[p]
確かにAは館に入る前は「ドレミの歌」って書いてあったが、館に入って「数字」に変わってたからな[p]
条件を満たしてたからさっき入れたってことか[p]
#ナゾD
だから黒塗りの部分が左右入れ替わっちゃったんですね[p]
最初誰か分かんなかったっすよ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_show  time="1000"  storage="default/機械制御室法則.webp"  width="390"  height="390"  x="430"  y="100"  name="img_135"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
物置の法則と似てるっすね[p]
#ナゾB
だな[p]
物置は見た目で、こっちは答えなのか[p]
#ナゾD
それと左右か上下かって感じですね[p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_hide_message_window  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
法則は理解できたかニャ？[p]
物置にはもう入ってたのをみんニャ見てたニャ[p]
機械制御室にはドアディスプレイ用の電源があるニャ[p]
それがONになれば操作が進むと思うニャ[p]
じゃああとは頑張るニャ～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="600"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/バードつみき.webp"  width="482"  height="337"  left="395"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
あの・・・Aさん・・・[p]
#
なんでしょうか？[p]
#ナゾD
すみません、ぼく正直Aさんのこと疑ってました[p]
お詫びになるかは分かりませんが、Ａさんの捜査を手伝わせてください！[p]
#
あ、いえ、ありがとうございます[p]
であれば機械制御室に一緒に行ってくれませんか？[p]
僕の黒塗りは「左右」に分かれているという判定みたいなので[p]
#ナゾD
もちろんっす！[p]
お供します！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="300"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[wait  time="1000"  ]
[playse  volume="150"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[bg  time="1000"  method="crossfade"  storage="機械制御室_中.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
*machine

[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/D_反対.webp"  width="284"  height="200"  left="821"  top="223"  reflect="false"  ]
[clickable  storage="scene9.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round_m"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think3" x="20" y="400"]
[_tb_end_tyrano_code]

[clickable  storage="scene9.ks"  x="821"  y="223"  width="284"  height="200"  target="*talkD"  ]
[clickable  storage="scene9.ks"  x="491"  y="456"  width="75.6"  height="85"  target="*battery"  ]
[s  ]
*talkD

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/D_反対.webp"  width="507"  height="360"  left="399"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
茶々丸はここに来ると操作が進展するって言ってましたね[p]
手がかりを見つけましょう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="false"  ]
[jump  storage="scene9.ks"  target="*machine"  ]
*round_m

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
機械制御室[p]
名前の通り色々な機械を制御していそうな部屋だ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*machine"  ]
*think3

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ここに来ると捜査が進展する理由・・・[p]
とにかく色々調べてみよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*machine"  ]
*battery

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_show  time="1000"  storage="default/電源.webp"  width="331"  height="374"  x="464"  y="124"  _clickable_img=""  name="img_200"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
ドアディスプレイ用と書かれている[p]
#ナゾD
これって茶々丸が言ってたやつっすかね[p]
確かにカギを開けた回数が分かれば捜査が進みそうっすね[p]
#ナゾA
プラスドライバーで外せそうです[p]
外してみますね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[tb_image_show  time="1000"  storage="default/電源2.webp"  width="331"  height="374"  x="464"  y="124"  name="img_205"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
開きました・・・ってなんすかこれ[p]
#ナゾA
配線が切断されてますね[p]
#ナゾD
これじゃディスプレイの電源を入れるのは不可能っすね[p]
#ナゾA
（一時的にでも金属で繋いで電源を復活させられないだろうか）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="300"  ]
*ready

[bg  time="1000"  method="crossfade"  storage="機械制御室_中2.webp"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/D_反対.webp"  width="284"  height="200"  left="821"  top="223"  reflect="false"  ]
[clickable  storage="scene9.ks"  x="0"  y="0"  width="1280"  height="720"  target="*round_m2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think4" x="20" y="400"]
[button graphic="btn_map.webp" target="*open_map3" x="20" y="560"]
[_tb_end_tyrano_code]

[clickable  storage="scene9.ks"  x="821"  y="223"  width="284"  height="200"  target="*talkD2"  ]
[clickable  storage="scene9.ks"  x="518"  y="414"  width="75.6"  height="85"  target="*battery2"  _clickable_img=""  ]
[s  ]
*talkD2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="300"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/D_反対.webp"  width="507"  height="360"  left="399"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
どうにかして電源を復活させられないっすかね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="false"  ]
[jump  storage="scene9.ks"  target="*ready"  ]
*round_m2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
機械制御室[p]
名前の通り色々な機械を制御していそうな部屋だ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*ready"  ]
*think4

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
金属製品でつなげれば電源が復活するかもしれない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*ready"  ]
*battery2

[cm  ]
[playse  volume="50"  time="1000"  buf="0"  storage="選択8.mp3"  ]
[tb_image_hide  time="300"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[tb_image_show  time="1000"  storage="default/電源2.webp"  width="331"  height="374"  x="464"  y="124"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
配線が切断されている[p]
金属製品でつなげれば電気が通るかもしれない[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene9.ks"  target="*ready"  ]
[tb_start_tyrano_code]
; ===================================
; ▼ MAPへ
; ===================================
*open_map3
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'scene9.ks'"]
[eval exp="f.return_label = '*ready"]
; メモを残してからMAPへジャンプ！
[jump storage="map3.ks" target="*start"]
[_tb_end_tyrano_code]

