[_tb_system_call storage=system/_menu_data.ks]

[tb_start_tyrano_code]
; メニューの文章・画像パスのみ。座標やボタンは document.ks。
; シナリオタブの「ティラノスクリプト」部品で編集する。
; image は data/fgimage/ からの相対パス。空文字なら img の文字を出す。
; 1=ナゾA, 2=ナゾB, 3=ナゾC, 4=ナゾD, 5=ナゾE
; ページ数は可変。menuNazoPages に 2: { ... } 3: { ... } を足せばページが増える。
; 開放フラグは f.unlock_nazo_a_p1, p2, p3 ... とページ番号に合わせる。

[iscript]
window.makeNazoPlaceholder = function (title, pageNo) {
return {
title: title,
text1: title + " " + pageNo + "ページ目（未設定）",
text2: "",
text3: "",
text4: "",
prefix: "",
red: "",
suffix: "",
img: "画像：" + title + " " + pageNo + "ページ目（未設定）",
image: ""
};
};
window.makeDocPlaceholder = function (title, pageNo) {
return {
title: title,
text1: title + " " + pageNo + "ページ目（未設定）",
text2: "",
img: "画像：" + title + " " + pageNo + "ページ目（未設定）",
image: ""
};
};

window.menuNazoPages = {
1: {
1: {
title: "ナゾA",
text1: "このゲームの主人公であるごく普通の公演小謎？",
text2: "招待状が来たことでナゾの半分が黒塗りになってしまった",
prefix: "探偵・",
red: "櫂 利飛太",
suffix: "に真相究明と犯人捜しを依頼した。",
img: "画像：ナゾA",
image: "chara/1/音階.webp"
},
2: {
title: "ナゾA",
text1: "このゲームの主人公であるごく普通の公演小謎？",
text2: "17：50ごろ、館の大広間に入ったことで",
text3: "「ドレミの歌」→「数字」へと変化した。",
img: "画像：ナゾA",
image: "chara/1/数字.webp"
},
3: {
title: "ナゾA",
text1: "このゲームの主人公であるごく普通の公演小謎？",
text2: "19:00時ごろ、物置に入ったことで黒塗りの位置が左右反転してしまった",
img: "画像：ナゾA",
image: "chara/1/反転.webp"
},
},
2: {
1: {
title: "ナゾB",
text1: "強気な性格のナゾ",
text2: "楽しいことが好きだが、退屈は嫌い",
img: "画像：ナゾB（未設定）",
image: "chara/2/混戦.webp"
},
2: window.makeNazoPlaceholder("ナゾB", 2),
3: window.makeNazoPlaceholder("ナゾB", 3)
},
3: {
1: {
title: "ナゾC",
text1: "ナゾCの説明テキスト（仮）",
text2: "ここに詳細を書きます。",
text3: "",
img: "画像：ナゾC（未設定）",
image: ""
},
2: window.makeNazoPlaceholder("ナゾC", 2),
3: window.makeNazoPlaceholder("ナゾC", 3)
},
4: {
1: {
title: "ナゾD",
text1: "ナゾDの説明テキスト（仮）",
text2: "ここに詳細を書きます。",
text3: "",
img: "画像：ナゾD（未設定）",
image: ""
},
2: window.makeNazoPlaceholder("ナゾD", 2),
3: window.makeNazoPlaceholder("ナゾD", 3)
},
5: {
1: {
title: "ナゾE",
text1: "ナゾEの説明テキスト（仮）",
text2: "ここに詳細を書きます。",
text3: "",
img: "画像：ナゾE（未設定）",
image: ""
},
2: window.makeNazoPlaceholder("ナゾE", 2),
3: window.makeNazoPlaceholder("ナゾE", 3)
}
};

window.menuDocPages = {
1: {
1: {
title: "資料1",
text1: "資料1の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料1（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料1", 2),
3: window.makeDocPlaceholder("資料1", 3)
},
2: {
1: {
title: "資料2",
text1: "資料2の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料2（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料2", 2),
3: window.makeDocPlaceholder("資料2", 3)
},
3: {
1: {
title: "資料3",
text1: "資料3の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料3（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料3", 2),
3: window.makeDocPlaceholder("資料3", 3)
},
4: {
1: {
title: "資料4",
text1: "資料4の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料4（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料4", 2),
3: window.makeDocPlaceholder("資料4", 3)
},
5: {
1: {
title: "資料5",
text1: "資料5の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料5（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料5", 2),
3: window.makeDocPlaceholder("資料5", 3)
},
6: {
1: {
title: "資料6",
text1: "資料6の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料6（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料6", 2),
3: window.makeDocPlaceholder("資料6", 3)
},
7: {
1: {
title: "資料7",
text1: "資料7の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料7（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料7", 2),
3: window.makeDocPlaceholder("資料7", 3)
},
8: {
1: {
title: "資料8",
text1: "資料8の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料8（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料8", 2),
3: window.makeDocPlaceholder("資料8", 3)
},
9: {
1: {
title: "資料9",
text1: "資料9の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料9（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料9", 2),
3: window.makeDocPlaceholder("資料9", 3)
},
10: {
1: {
title: "資料10",
text1: "資料10の説明テキスト（仮）",
text2: "ここに詳細を書きます。",
img: "画像：資料10（未設定）",
image: ""
},
2: window.makeDocPlaceholder("資料10", 2),
3: window.makeDocPlaceholder("資料10", 3)
}
};
[endscript]
[return]

[_tb_end_tyrano_code]

