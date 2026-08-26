[_tb_system_call storage=system/_hober_test.ks]

[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="守衛室.webp"  ]
[tb_image_show  time="1000"  storage="default/btn_think.webp"  width="164"  height="71"  x="44"  y="444"  _clickable_img=""  ]
[tb_start_tyrano_code]
; （すでに配置済みの背景などの記述）

[layopt layer="1" visible="true"]

; ▼ テストとして最初は「テキスト枠テスト」と表示しておきます（これで文字が出るか確認！）
[ptext layer="1" name="hover_text" text="テキスト枠テスト" x="50" y="50" size="40" color="white" bold="true" edge="0x000000"]

; ▼ ① 背景クリック用はホバー判定がいらないので、clickableのままでOKです
[clickable target="*click_bg" x="0" y="0" width="1280" height="720" opacity="0"]

; ▼ ② モニター（透明ボタンを使って名札を確実につける！）
[button graphic="clear.webp" target="*click_monitor" x="670" y="368" width="155" height="93" name="hover_monitor"]

; ▼ ③ 考える（これも透明ボタンにする）
[button graphic="clear.webp" target="*click_think" x="44" y="444" width="164" height="71" name="hover_think"]

; ===================================
; ▼ JavaScript（いつボタンが出現しても反応する最強の書き方）
; ===================================
[iscript]
// 一度古い命令をリセットする（バグ防止）
$(document).off("mouseenter mouseleave", ".hover_monitor, .hover_think");

// モニターの処理
$(document).on("mouseenter", ".hover_monitor", function(){
    $(".hover_text").text("モニター");
}).on("mouseleave", ".hover_monitor", function(){
    $(".hover_text").text(" ");
});

// 考えるの処理
$(document).on("mouseenter", ".hover_think", function(){
    $(".hover_text").text("考える");
}).on("mouseleave", ".hover_think", function(){
    $(".hover_text").text(" ");
});
[endscript]

[s]
[_tb_end_tyrano_code]

[s  ]
[button  storage="hober_test.ks"  target=""  ]
