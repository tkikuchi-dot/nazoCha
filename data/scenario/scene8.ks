[_tb_system_call storage=system/_scene8.ks]

[call  storage="common_ui.ks"  target="*init"  ]
*start

[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="大浴場中.webp"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="onsen-ryokan-1.mp3"  fadein="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
ナゾCが解けるようになったって？[p]
#ナゾD
うっす！[p]
これがナゾCさんの姿っす[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_show  time="1000"  storage="default/洗浄後.webp"  width="497"  height="352"  x="375"  y="98"  _clickable_img=""  name="img_14"  ]
[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_c_p4 = true"]
[eval exp="f.unlock_clue_3 = true; f.unlock_clue_3_p1 = true"]
[_tb_end_tyrano_code]

[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
なるほど、まずは解いてみるか[p]
#ナゾE
こ、ここ、このナゾが解ければ犯人が分かるかもしれないってことですね[p]
#ナゾD
僕もまだ解けてないから今から解くっす[p]
#茶々丸
ナゾの正誤判定はぼくがやるニャ[p]
分かったら解答するニャ[p]
#
ナゾCの答えを導こう[p]
[_tb_end_text]

*nazo

[glink  color="btn_19_black"  storage="scene8.ks"  size="20"  text="答える"  x="943"  y="285"  width=""  height=""  _clickable_img=""  target="*start_nazo"  ]
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
[iscript]
var ans = f.answer;
if (ans.length > 0) {
var last = ans.slice(-1); // 最後の1文字を取得
var rest = ans.slice(0, -1); // それ以外の文字
// 濁音への変換辞書
var map = {'か':'が','き':'ぎ','く':'ぐ','け':'げ','こ':'ご',
'さ':'ざ','し':'じ','す':'ず','せ':'ぜ','そ':'ぞ',
'た':'だ','ち':'ぢ','つ':'づ','て':'で','と':'ど',
'は':'ば','ひ':'び','ふ':'ぶ','へ':'べ','ほ':'ぼ'};
if (map[last]) f.answer = rest + map[last]; // 変換できればすり替え
}
[endscript]
@jump target="*show_keyboard"

*c_han
[iscript]
var ans = f.answer;
if (ans.length > 0) {
var last = ans.slice(-1);
var rest = ans.slice(0, -1);
// 半濁音への変換辞書
var map = {'は':'ぱ','ひ':'ぴ','ふ':'ぷ','へ':'ぺ','ほ':'ぽ'};
if (map[last]) f.answer = rest + map[last];
}
[endscript]
@jump target="*show_keyboard"

*c_cho
; 伸ばす棒はそのまま追加でOK
[eval exp="f.answer = f.answer + 'ー'"]
@jump target="*show_keyboard"

*mod_small
[iscript]
var ans = f.answer;
if (ans.length > 0) {
var last = ans.slice(-1);
var rest = ans.slice(0, -1);
// 小文字への変換辞書
var map = {'あ':'ぁ','い':'ぃ','う':'ぅ','え':'ぇ','お':'ぉ',
'や':'ゃ','ゆ':'ゅ','よ':'ょ','つ':'っ','わ':'ゎ'};
// 小文字から大文字に戻す辞書（連打した時用）
var rev = {'ぁ':'あ','ぃ':'い','ぅ':'う','ぇ':'え','ぉ':'お',
'ゃ':'や','ゅ':'ゆ','ょ':'よ','っ':'つ','ゎ':'わ'};

if (map[last]) f.answer = rest + map[last];
else if (rev[last]) f.answer = rest + rev[last];
}
[endscript]
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
; ▼ 答え合わせの処理（正解は「らいふ」）
; ===================================
*check_answer
[cm]
[freeimage layer="1" time="0"]
[layopt layer="message0" visible="true"]

[if exp="f.answer == 'らいふ'"]
#
らいふ・・・[p]
; ▼ 正解時のジャンプ
@jump target="*true"
[else]
#
『[emb exp="f.answer"]』……？
#茶々丸
うーん、もう一度考えてみるニャ[p]
; ▼ 不正解時はやり直し
@jump target="*nazo"
[endif]
[s]
[_tb_end_tyrano_code]

*true

[cm  ]
[stopbgm  time="3000"  fadeout="true"  ]
[tb_image_hide  time="1000"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  reflect="false"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  reflect="false"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  reflect="false"  ]
[playbgm  volume="50"  time="4000"  loop="true"  storage="超頭脳バトル.mp3"  fadein="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
えっ[p]
#ナゾB
・・・！[p]
#ナゾE
え、え、あれっ[p]
#茶々丸
正解だニャ～[p]
みんなどうしたニャ？[p]
#ナゾB
た、たた、たしか[p]
#ナゾD
さっき見せてもらったCさんのメモには[p]
#ナゾB
ナゾA[p]
お前の答えが「らいふ」って書かれてたな[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#ナゾA
・・・！[p]
#ナゾE
う、うう、うそ？ですよね？[p]
#ナゾB
おい、茶々丸[p]
どうなんだ[p]
ナゾAの答えは「らいふ」なのか？[p]
判定してくれるんだろ？[p]
#茶々丸
ナゾAの答え？[p]
・・・・・[p]
正解だニャ！[p]
ナゾAの答えは「らいふ」だニャ～[p]
#ナゾD
まじっすか[p]
#ナゾE
うそ・・・[p]
#ナゾB
おいあいつを拘束するぞ[p]
#ナゾA
（まずい、逃げないと・・・！）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="東廊下.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
（とりあえず、どこかの部屋に隠れないと）[p]
（ここは・・・！）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="50"  time="1000"  buf="0"  storage="sei_ge_door_rock01.mp3"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="物置.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
（は、入れた！）[p]
（ここは・・・物置の中か？）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="50"  time="1000"  buf="0"  storage="ドア・ドンドン叩く02.mp3"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
おい！開けろ！[p]
どうやって物置に入った！[p]
出てこい！[p]
#ナゾD
危ないっすよ、まだ凶器とか持ち歩いてるかもっす[p]
開けた瞬間に襲われるかもっすよ[p]
#ナゾB
んなもん関係ねーよ[p]
返り討ちにしてやらー[p]
#ナゾA
・・・！[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="東廊下.webp"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="424"  height="300"  left="166"  top="151"  reflect="false"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="424"  height="300"  left="650"  top="151"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾB
中にいるってことは、物置が特別とは言ってもカギはかかってないはずだ[p]
おいD、せーので開けるぞ[p]
#ナゾD
う、うっす[p]
#ナゾB
せーっの！[p]
[_tb_end_text]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="巨大ロボットが倒れる.mp3"  ]
[chara_move  name="ナゾB"  anim="false"  time="0"  effect="linear"  wait="false"  left="45"  top="160"  width="370"  height="260"  ]
[chara_move  name="ナゾD"  anim="false"  time="0"  effect="linear"  wait="true"  left="457"  top="161"  width="370"  height="260"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ナゾA"  time="1000"  wait="true"  storage="chara/1/反転.webp"  width="370"  height="260"  top="160"  left="869"  reflect="false"  ]
[tb_start_text mode=1 ]
#ナゾA
い、いてて[p]
#ナゾB
・・・！[p]
#ナゾD
え、誰っすか？[p]
#ナゾE
え、えっ[p]
#ナゾA
なに？どうなってるの？[p]
#ナゾB
この声、Aなのは間違いないみたいだな[p]
#茶々丸
ナゾAで間違いニャいのニャ～[p]
#ナゾB
やっぱりか[p]
おい、なんでナゾCを殺したんだ[p]
#ナゾA
そ、それは・・・！[p]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.unlock_nazo_a_p3 = true"]
[_tb_end_tyrano_code]

[glink  color="btn_19_black"  storage="scene8.ks"  size="20"  text="ぼ、僕じゃないです"  x="240"  y="180"  width="220"  height=""  _clickable_img=""  target="*no"  ]
[glink  color="btn_19_black"  storage="scene8.ks"  size="20"  text="やってません"  x="240"  y="300"  width="220"  height=""  _clickable_img=""  target="*no2"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
#ナゾA
ぼ、僕じゃないです！[p]
[_tb_end_text]

[jump  storage="scene8.ks"  target="*continue"  ]
*no2

[cm  ]
[tb_start_text mode=1 ]
#ナゾA
やってません！[p]
[_tb_end_text]

[jump  storage="scene8.ks"  target="*continue"  ]
*continue

[tb_start_text mode=1 ]
#ナゾB
うそつけ[p]
おい茶々丸、ナゾCはダイイングメッセージで犯人を伝えようとしてたんだろ？[p]
#茶々丸
そうだニャ[p]
僕はウソをつかニャいニャ[p]
#ナゾB
だそうだ[p]
やっぱお前で決まりじゃねーか[p]
#ナゾD
Aさんの答えばっちりでちゃってますもんね[p]
犯人じゃなかったら隠れる必要ないですし[p]
#ナゾA
いや、ほんとにやってないですし[p]
隠れたのは何言ってもダメだと思ったからで・・・[p]
#ナゾB
そんなの信じられるか[p]
#ナゾD
そうっすよ[p]
Aさんいいナゾだって思ってたのに[p]
#ナゾA
いや、ほんとに僕じゃないんですって[p]
#茶々丸
しょうがニャいニャ～[p]
じゃあこうするニャ[p]
犯人特定の定番「アリバイ」を探るニャ[p]
#ナゾD
アリバイっすか？[p]
#茶々丸
そうニャ[p]
そもそもキミたちはナゾCが何時ごろ殺されたのか分かっているのニャ？[p]
#ナゾB
・・・・・[p]
#ナゾE
・・・・・[p]
#ナゾD
あー・・・調べてなかったすかね・・・？[p]
#茶々丸
そうだニャ[p]
じゃあまずはニャン時頃まで生きていたのかを考えるニャ～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[eval exp="f.talk_step = 0"]
[_tb_end_tyrano_code]

*kikikomi

[cm  ]
[chara_hide_all  time="0"  wait="true"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think" x="20" y="540"]
[_tb_end_tyrano_code]

[chara_show  name="茶々丸"  time="0"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="0"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  ]
[chara_show  name="ナゾD"  time="0"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  ]
[chara_show  name="ナゾE"  time="0"  wait="false"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[clickable  storage="scene8.ks"  x="0"  y="180"  width="300"  height="202"  target="*talk_Brown"  ]
[clickable  storage="scene8.ks"  x="355"  y="180"  width="243"  height="170"  target="*talkB"  ]
[clickable  storage="scene8.ks"  x="660"  y="180"  width="243"  height="170"  target="*talkD"  ]
[clickable  storage="scene8.ks"  x="965"  y="180"  width="243"  height="170"  target="*talkE"  ]
[s  ]
*think

[cm  ]
[chara_hide_all  time="300"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
何としてでも疑いを晴らさないと[p]
まずはみんなに昨日のことを聞こう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talk_Brown

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="501"  height="337"  left="387"  top="120"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
まずはみんニャに話を聞いてみるニャ[p]
犯行時刻の推理はそこからニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talkB

[tb_start_tyrano_code]
; ===================================
; ▼ Bに話しかけた時の仕分け
; ===================================
*talk_B
[if exp="f.talk_step == 0"]
; まだ聞いていない時
@jump target="*talk_B_first"
[else]
; すでに聞いた後
@jump target="*talk_B_after"
[endif]
[_tb_end_tyrano_code]

*talk_B_first

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
な、ナゾCさんを最後に見たのはいつですか？[p]
#ナゾB
あ？[p]
多分お前と変わんねーよ[p]
いや、お前が殺してるんだからそれも違うか[p]
#
だから僕じゃないんですって[p]
#ナゾB
・・・[p]
まあいいや[p]
最後に見たのは食堂だよ[p]
21時半くらいだったか？[p]
あいつが自分の部屋に戻るまでだ[p]
その時は全員いたろ？[p]
#
なるほど[p]
じゃあ僕が寝た後は何をされてましたか？[p]
#ナゾB
お前が寝た後も遊戯室で遊んでたよ[p]
0時半くらいだったか？に汗を流すために大浴場に入ったな[p]
一時間くらい湯舟でリラックスした後、1時半ごろに大浴場をでたな[p]
そこでナゾDと別れたが、おれもナゾDもそのまますぐ寝たんじゃないか？[p]
ウソだと思うなら、ナゾDにも聞いてくれ[p]
#
いえ、ありがとうございます[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.talk_step = 1"]
[_tb_end_tyrano_code]

[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talk_B_after

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾB"  time="1000"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
さっきも言ったがおれはずっとDと一緒にいてCなんて見てない[p]
疑うならDに聞いてくれ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talkD

[tb_start_tyrano_code]
; ===================================
; ▼ Dに話しかけた時の仕分け
; ===================================
*talk_D
[if exp="f.talk_step == 0"]
; 無視される時
@jump target="*talk_D_ignore"
[elsif exp="f.talk_step == 1"]
; 初めて話を聞く時
@jump target="*talk_D_first"
[else]
; すでに聞いた後
@jump target="*talk_D_after"
[endif]
[_tb_end_tyrano_code]

*talk_D_ignore

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
な、ナゾCさんを最後に見たのはいつですか？[p]
#ナゾD
・・・・・[p]
#ナゾA
（だめだ、話を聞いてくれない）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talk_D_first

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
Bさんとずっと一緒だったって聞きました[p]
お二人ともCさんは見てないんですよね？[p]
#ナゾD
うーん[p]
#ナゾA
お願いします[p]
教えてください[p]
#ナゾD
分かったっす[p]
実は食堂から自分の部屋に帰った後のCさんを見たんすよ[p]
#ナゾA
え、それはいつ頃ですか？[p]
#ナゾD
うーん、何時ごろだったんすかね？[p]
ちょっと思い出しながら順番に話していきます[p]
Aさんが遊戯室を通って自分の部屋に帰ったのは23時半ごろでしたよね？[p]
#
多分それくらいだったと思います[p]
（眠すぎてあんまりおぼえてないや）[p]
#ナゾD
あの後Bさんと1時間くらいはカラオケしてたんじゃないっすかね？[p]
0時半くらいにBさんが「風呂にでも入るか」っていうんで大浴場に入ったっす[p]
僕は早く上がりたかったんすけど[p]
やれ「サウナ対決だ」とか「水風呂我慢大会だ」とかで[p]
Bさんってああ見えて子供っぽいっすよね？[p]
#ナゾA
そ、そうなのかな？[p]
#ナゾD
絶対そうっすよ[p]
僕があがろうとしたらすぐ対決だとか言って引き留めてくるんすもん[p]
結局一時間くらいいましたよ[p]
んで1時半くらいに大浴場をでて自分の部屋に戻って少ししたら、ぼくの部屋をEさんが訪ねてきたんです[p]
#ナゾA
Eさんが？[p]
#ナゾD
ですです[p]
なんでも茶々丸の言ってたことが気がかりで眠れないとかで[p]
んで落ち着くために休憩室に入れるか試してみたら入れたっす[p]
そこでEさんと話しながらのんびりしてたんすけど[p]
#ナゾA
それで？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="600"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[chara_show  name="ナゾC"  time="1000"  wait="true"  storage="chara/3/箱庭.webp"  width="315"  height="222"  left="-500"  top="210"  reflect="false"  ]
[bg  time="0"  method="crossfade"  storage="bg_base.webp"  ]
[tb_image_show  time="1000"  storage="default/休憩室_回想.webp"  width="1541"  height="867"  x="-175"  y="-4"  _clickable_img=""  name="img_149"  ]
[camera  time="16000"  zoom="1.3"  wait="false"  x="70"  ease_type="linear"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_move  name="ナゾC"  anim="true"  time="8000"  effect="linear"  wait="false"  left="1800"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
休憩室には窓があって廊下側が見れるんすよ[p]
で、そこをナゾCさんが通るところを見たっす[p]
#ナゾA
Cさんが？[p]
#ナゾD
間違いないっす[p]
Eさんと一緒に見たんでEさんに聞いてくれてもいいっす[p]
だからあれは・・・[p]
2時前とかじゃないっすかね？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="2000"  ]
[chara_move  name="ナゾC"  anim="true"  time="8000"  effect="linear"  wait="false"  left="-300"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
で、不思議なことにまたすぐに戻っていったんすよ[p]
#ナゾA
戻った？[p]
#ナゾD
はい[p]
窓の外を遊戯室の方から大広間の方に向かったと思ったら[p]
1分か2分くらいですぐまた同じ道を引き返してたんす[p]
#ナゾA
それは・・・[p]
不思議だな[p]
#ナゾD
でしょ？[p]
僕とEさんも不思議に思ってて、今日何してたのか聞こうと思ってたんすけど[p]
まさかこんなことになるなんて・・・[p]
#ナゾA
・・・[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[reset_camera  time="0"  wait="false"  ]
[tb_image_hide  time="0"  ]
[chara_hide  name="ナゾC"  time="0"  wait="false"  pos_mode="false"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[bg  time="0"  method="crossfade"  storage="東廊下.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[wait  time="2000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
まあ、僕からの情報はこんなもんっす[p]
Aさんが本当に犯人かどうかは分かんないっすけど[p]
Cさんの無念を晴らすためにも絶対に真相を突き止めるっす[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.talk_step = 2"]
[_tb_end_tyrano_code]

[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talk_D_after

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾD"  time="1000"  wait="true"  storage="chara/4/バードつみき.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
Cさんは何しにここを通ったんすかね[p]
Eさんにも聞いてみてください[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talkE

[tb_start_tyrano_code]
; ===================================
; ▼ Eに話しかけた時の仕分け
; ===================================
*talk_E
[if exp="f.talk_step < 2"]
; 無視される時（Bとだけ話した状態も含むため < 2 にしています）
@jump target="*talk_E_ignore"
[elsif exp="f.talk_step == 2"]
; 初めて話を聞く時
@jump target="*talk_E_first"
[else]
; すでに聞いた後
@jump target="*talk_E_after"
[endif]
[_tb_end_tyrano_code]

*talk_E_ignore

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
な、ナゾCさんを最後に見たのはいつですか？[p]
#ナゾE
・・・・・[p]
#ナゾA
（ダメだ。完全に軽蔑されている）[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*kikikomi"  ]
*talk_E_first

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="ナゾE"  time="1000"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
Dさんから、休憩室でCさんを見たって聞きました[p]
#ナゾE
・・・・・[p]
#ナゾA
教えて下さい！[p]
#ナゾE
・・・・・[p]
・・・本当に犯人じゃないんですか？[p]
#ナゾA
僕じゃありません[p]
#ナゾE
・・・・・[p]
・・・分かりました。信じます[p]
#ナゾA
ありがとうございます[p]
#ナゾE
でもEさんから聞いたんなら、私から言えることはあまりないかもです[p]
確かに私はDさんと一緒にCさんがこの廊下を通るのを見ました[p]
#ナゾA
それはCさんで間違いないんですね？[p]
#ナゾE
ま、間違いありません[p]
2回も通ったのでしっかり確認しました[p]
あ、あれは間違いなくCさんでした[p]
#ナゾA
（本当に2回通ったみたいだ）[p]
（Cさんは何をしにこの廊下を通ったんだ？）[p]
#ナゾE
そ、それと[p]
#ナゾA
何です？[p]
#ナゾE
その時はまだ「箱庭」でした[p]
こ、これって何か役に立ちますか？[p]
#ナゾA
うーん、役に立つかは分かりませんが[p]
情報ありがとうございます！[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
*time

[cm  ]
[tb_image_hide  time="0"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
みんニャだいたい話は聞けたようニャ[p]
じゃあ犯行時刻を推理するニャ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think2" x="20" y="540"]
[_tb_end_tyrano_code]

[clickable  storage="scene8.ks"  x="0"  y="180"  width="300"  height="202"  target="*talk_Brown2"  ]
[clickable  storage="scene8.ks"  x="355"  y="180"  width="243"  height="170"  target="*talkB"  ]
[clickable  storage="scene8.ks"  x="660"  y="180"  width="243"  height="170"  target="*talkD"  ]
[clickable  storage="scene8.ks"  x="965"  y="180"  width="243"  height="170"  target="*talkE"  ]
[s  ]
*think2

[cm  ]
[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
みんなの話を総合しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
*talkB2

[cm  ]
[chara_hide_all  time="600"  wait="true"  ]
[chara_show  name="ナゾB"  time="600"  wait="true"  storage="chara/2/混戦.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾB
さっきも言ったがおれは[p]
21時半ごろ、Cが自分の部屋に戻って以降、あいつは見てないぜ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾB"  time="300"  wait="true"  pos_mode="true"  ]
[jump  storage="scene8.ks"  target="*time"  ]
*talkD2

[cm  ]
[chara_hide_all  time="600"  wait="true"  ]
[chara_show  name="ナゾD"  time="600"  wait="true"  storage="chara/4/バードつみき.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾD
休憩室の前を通ったの見ましたよ[p]
あれは大浴場を出たのが1時半だったと思うんでそれ以降っすね[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾD"  time="300"  wait="true"  pos_mode="true"  ]
[jump  storage="scene8.ks"  target="*time"  ]
*talkE2

[cm  ]
[chara_hide_all  time="600"  wait="true"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="505"  height="357"  left="375"  top="108"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾE
Dさんと一緒に休憩室にいるときに見ました[p]
あ、あれは確かもうすぐ2時になるくらいだったと思います[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide  name="ナゾE"  time="300"  wait="true"  pos_mode="true"  ]
[jump  storage="scene8.ks"  target="*time"  ]
*talk_Brown2

[cm  ]
[chara_hide_all  time="600"  wait="true"  ]
[chara_show  name="茶々丸"  time="600"  wait="true"  storage="chara/6/茶々丸.webp"  width="501"  height="337"  left="387"  top="120"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
犯行時刻が分かったのかニャ？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[glink  color="btn_19_black"  storage="scene8.ks"  size="20"  text="もう少し考える"  x="900"  y="300"  width=""  height=""  _clickable_img=""  target="*start_time_nazo"  ]
[glink  color="btn_19_black"  storage="scene8.ks"  size="20"  text="分かった"  x="900"  y="200"  width="165"  height=""  _clickable_img=""  target="*start_time_nazo2"  ]
[s  ]
[tb_start_tyrano_code]
*start_time_nazo2
[cm]
[tb_hide_message_window]
[freeimage layer="1" time="0"]

; ▼ 変数を空っぽにする
[eval exp="f.time_ans = ''"]
[eval exp="tf.h = ''"]
[eval exp="tf.m = ''"]

; ▼ 背景画像の表示
[tb_image_show time="0" storage="default/テンキー.webp" x="0" y="154" name="tenkey_bg"]

; ▼ 時間（時・分）の初期テキスト配置
[ptext name="ans_text_h" layer="1" x="983" y="380" size="70" color="black" text="&tf.h"]
[ptext name="ans_text_m" layer="1" x="1140" y="380" size="70" color="black" text="&tf.m"]

*show_time_keyboard2
[cm]
; ▼ 時と分を切り分ける
[eval exp="tf.h = f.time_ans.substring(0, 2)"]
[eval exp="tf.m = f.time_ans.substring(2, 4)"]

; ▼ 文字だけを上書き更新
[ptext name="ans_text_h" layer="1" x="983" y="380" size="70" color="black" text="&tf.h" overwrite="true"]
[ptext name="ans_text_m" layer="1" x="1140" y="380" size="70" color="black" text="&tf.m" overwrite="true"]

; ===================================
; ▼ クリッカブルマップ（直接各数字のラベルへ飛ばす）
; ===================================
; 【1段目】
[clickable x="228" y="209" width="85" height="85" target="*add_7" color="blue" opacity="30"]
[clickable x="355" y="209" width="85" height="85" target="*add_8" color="blue" opacity="30"]
[clickable x="482" y="209" width="85" height="85" target="*add_9" color="blue" opacity="30"]
[clickable x="606" y="209" width="85" height="85" target="*del_all2" color="blue" opacity="30"]

; 【2段目】
[clickable x="228" y="334" width="85" height="85" target="*add_4" color="blue" opacity="30"]
[clickable x="355" y="334" width="85" height="85" target="*add_5" color="blue" opacity="30"]
[clickable x="482" y="334" width="85" height="85" target="*add_6" color="blue" opacity="30"]
[clickable x="606" y="334" width="85" height="85" target="*del_one2" color="blue" opacity="30"]

; 【3段目】
[clickable x="228" y="458" width="85" height="85" target="*add_1" color="blue" opacity="30"]
[clickable x="355" y="458" width="85" height="85" target="*add_2" color="blue" opacity="30"]
[clickable x="482" y="458" width="85" height="85" target="*add_3" color="blue" opacity="30"]
[clickable x="606" y="458" width="85" height="85" target="*do_return2" color="blue" opacity="30"]

; 【4段目】
[clickable x="355" y="583" width="85" height="85" target="*add_0" color="blue" opacity="30"]
[clickable x="479" y="583" width="215" height="85" target="*check_answer2" color="blue" opacity="30"]

[s]


; ===================================
; ▼ 各数字の処理（ここで初めて数字を変数に入れる）
; ===================================
*add_7
[eval exp="tf.n='7'"]
@jump target="*add_num2"
*add_8
[eval exp="tf.n='8'"]
@jump target="*add_num2"
*add_9
[eval exp="tf.n='9'"]
@jump target="*add_num2"
*add_4
[eval exp="tf.n='4'"]
@jump target="*add_num2"
*add_5
[eval exp="tf.n='5'"]
@jump target="*add_num2"
*add_6
[eval exp="tf.n='6'"]
@jump target="*add_num2"
*add_1
[eval exp="tf.n='1'"]
@jump target="*add_num2"
*add_2
[eval exp="tf.n='2'"]
@jump target="*add_num2"
*add_3
[eval exp="tf.n='3'"]
@jump target="*add_num2"
*add_0
[eval exp="tf.n='0'"]
@jump target="*add_num2"


; ▼ 数字を追加して画面を更新する処理
*add_num2
[if exp="f.time_ans.length < 4"]
[eval exp="f.time_ans = f.time_ans + tf.n"]
[endif]
[playse storage="click.mp3"]
@jump target="*show_time_keyboard2"


; ===================================
; ▼ その他のボタンの処理
; ===================================
*del_one2
[if exp="f.time_ans.length > 0"]
[eval exp="f.time_ans = f.time_ans.substring(0, f.time_ans.length - 1)"]
[endif]
[playse storage="click.mp3"]
@jump target="*show_time_keyboard2"

*del_all2
[eval exp="f.time_ans = ''"]
[playse storage="click.mp3"]
@jump target="*show_time_keyboard2"

*do_return2
[cm]
[freeimage layer="1" time="0"]
[tb_image_hide time="0"]
[jump storage="scene8.ks" target="*time"]

*check_answer2
[cm]
[playse storage="click.mp3"]
[tb_show_message_window]

[if exp="f.time_ans == '0200'"]
#主人公
そうか！犯行時刻は02時00分以降だ！[p]

[freeimage layer="1" time="0"]
[tb_image_hide time="0"]
@jump target="*true2"
[else]
#茶々丸
もう一度考えてみるニャ[p]

[eval exp="f.time_ans = ''"]
[tb_hide_message_window]
[jump storage="scene8.ks" target="*time"]
[endif]
[_tb_end_tyrano_code]

*true2

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_image_hide  time="1000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="茶々丸"  time="600"  wait="false"  storage="chara/6/茶々丸.webp"  width="300"  height="202"  left="30"  top="180"  ]
[chara_show  name="ナゾB"  time="600"  wait="false"  storage="chara/2/混戦.webp"  width="243"  height="170"  left="355"  top="180"  ]
[chara_show  name="ナゾD"  time="600"  wait="false"  storage="chara/4/バードつみき.webp"  width="243"  height="170"  left="660"  top="180"  ]
[chara_show  name="ナゾE"  time="600"  wait="true"  storage="chara/5/杖賛成.webp"  width="243"  height="170"  left="965"  top="180"  ]
[wait  time="1500"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
みんニャの話を総合するとそうニャりそうだニャ[p]
じゃあその時間のアリバイを考えるニャ[p]
#ナゾB
って言ってもその時間はみんな寝てたんじゃないのか？[p]
#
（僕は寝てたからアリバイを証明できないな・・・）[p]
#ナゾE
わ、わたしも、へ、部屋で寝てましたっ[p]
#ナゾB
そうなるとアリバイがあるやつはいないってことだよな[p]
#ナゾD
あの、ちょっといいっすか？[p]
#ナゾB
なんだ？[p]
#ナゾD
ぼく昨日Eさんと2時ごろに分かれて自分の部屋に入った後[p]
全然眠れなくて起きてたんすけど[p]
Eさんの部屋から部屋を出入りする音は聞こえなかったんで[p]
たぶんEさんのアリバイはぼくが証明できるっす[p]
#ナゾB
なるほどな[p]
Cが襲われる音は聞こえなかったのか？[p]
#ナゾD
それは聞こえなかったっすね[p]
Aさんの悲鳴は聞こえてきたんすけど[p]
#ナゾB
まあCは喉を切られてたみたいだしな[p]
犯行時の音が聞こえなくても不思議じゃないか[p]
一番怪しいAは何かアリバイを証明できるものはないのか？[p]
#
い、いえ・・・[p]
昨日は急に眠くなってしまったのでそのまま倒れこむようにベッドで寝てました[p]
朝起きて部屋を出たらあんなことに・・・[p]
#ナゾB
てことはアリバイ無しってことだな[p]
もうAで決まりでいいんじゃないか？[p]
#
そ、そんな！ほんとに僕じゃないんです！[p]
#ナゾB
どうだかな[p]
自分じゃないってんなら証明してみな[p]
#
・・・っ！[p]
#茶々丸
じゃあそれぞれ自分のアリバイを証明するために色々探索してみるニャ～[p]
全員の個室のカギも解放したから行ってみるといいニャ～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="true"  ]
*explore

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[bg  time="1000"  method="crossfade"  storage="東廊下.webp"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
あんなに急に眠くなるのはおかしい・・・[p]
何か眠くなった原因があるはずだ[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="555"  height="374"  left="383"  top="82"  reflect="false"  ]
[clickable  storage="scene8.ks"  x="383"  y="82"  width="555"  height="374"  target="*talk_brown2"  ]
[tb_start_tyrano_code]
[button graphic="btn_think.webp" target="*think3" x="20" y="400"]
[button graphic="btn_item.webp" target="*open_item" x="20" y="480"]
[button graphic="btn_map.webp" target="*open_map" x="20" y="560"]
[_tb_end_tyrano_code]

[s  ]
*talk_brown2

[cm  ]
[chara_hide_all  time="600"  wait="false"  ]
[tb_image_hide  time="600"  ]
[chara_show  name="茶々丸"  time="1000"  wait="true"  storage="chara/6/茶々丸.webp"  width="555"  height="374"  left="383"  top="82"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#茶々丸
アリバイを証明するために頑張るのニャ～[p]
[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="600"  wait="true"  ]
[jump  storage="scene8.ks"  target="*explore"  ]
*think3

[cm  ]
[chara_hide_all  time="600"  wait="false"  ]
[tb_image_hide  time="600"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#ナゾA
アリバイを証明するって言ってもな[p]
とりあえず行けるところに行って色々探索しよう[p]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  storage="scene8.ks"  target="*explore"  ]
[tb_start_tyrano_code]
*open_item
; ▼ jump ではなく call を使う！
[call storage="item.ks" target="*start_item"]

; ▼ item.ks で [return] が実行されると、自動的に「ここ」に帰ってきます！
; 帰ってきたら、元の部屋の背景などを再表示してあげる
[bg storage="東廊下.webp" time="0"]
@jump target="*explore" ;（元のクリック待ちラベルなどへ飛ぶ）
[_tb_end_tyrano_code]

*open_map

[chara_hide_all  time="600"  wait="false"  ]
[tb_image_hide  time="1000"  ]
[tb_start_tyrano_code]
; ▼ ここが重要！「の *start に戻ってきてね」と変数にメモを残す
[eval exp="f.return_file = 'scene8.ks'"]
[eval exp="f.return_label = '*explore'"]

; メモを残してからMAPへジャンプ！
[jump storage="map2.ks" target="*start"]
[_tb_end_tyrano_code]

