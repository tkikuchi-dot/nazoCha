[_tb_system_call storage=system/_item.ks]

[tb_start_tyrano_code]
[_tb_system_call storage=system/_item.ks]

*start_item
[cm]
[tb_hide_message_window]
[layopt layer="1" visible="true"]

; ▼ 所持フラグ初期化
[if exp="f.item_driver == null"][eval exp="f.item_driver = false"][endif]
[if exp="f.item_pills == null"][eval exp="f.item_pills = false"][endif]
[if exp="f.item_detergent == null"][eval exp="f.item_detergent = false"][endif]
[if exp="f.item_necklace == null"][eval exp="f.item_necklace = false"][endif]

; ▼ 背景パネルは1回だけ生成（z-indexを下げて暗くなるのを防止）
[iscript]
if ($("#menu_green_overlay").length == 0) {
var root = $("#root_layer_game");
root.find(".layer:visible").each(function () {
$(this).children().each(function () { $(this).addClass("menu_blur_target"); });
});
root.find(".menu_blur_target").css("filter", "blur(6px)");

root.append('<div id="menu_green_overlay" style="position:absolute;left:0;top:0;width:100%;height:100%;z-index:3;background:rgba(40,90,50,0.22);pointer-events:none;"></div>');
root.append(
'<div id="menu_text_panels" style="position:absolute;left:0;top:0;width:100%;height:100%;z-index:4;pointer-events:none;">' +
'<div style="position:absolute;left:70px;top:108px;width:290px;height:430px;background:rgba(0,0,0,0.75);"></div>' +
'<div style="position:absolute;left:372px;top:108px;width:910px;height:550px;background:rgba(0,0,0,0.78);"></div>' +
'</div>'
);
}
[endscript]

; ▼ 最初に表示するアイテムの判定
[if exp="f.item_driver == true"]
[eval exp="tf.item_title = 'プラスドライバー'"]
[eval exp="tf.item_desc = '先端が十字になっているドライバー。ネジを外すのに使えそうだ。'"]
[eval exp="tf.item_image = 'item_driver.webp'"]
[elsif exp="f.item_detergent == true"]
[eval exp="tf.item_title = '洗剤'"]
[eval exp="tf.item_desc = '業務用の強力な洗剤。アルカリ性のようだ。'"]
[eval exp="tf.item_image = 'item_detergent.webp'"]
[elsif exp="f.item_pills == true"]
[eval exp="tf.item_title = '睡眠薬'"]
[eval exp="tf.item_desc = '強力な睡眠作用がある薬。アルカリ性のものと反応して紫色になると書かれている。'"]
[eval exp="tf.item_image = 'item_pills.webp'"]
[elsif exp="f.item_necklace == true"]
[eval exp="tf.item_title = 'ネックレス'"]
[eval exp="tf.item_desc = 'ナゾDさんの部屋に落ちていたネックレス。銀でできている。'"]
[eval exp="tf.item_image = 'btn_necklace.webp'"]
[else]
[eval exp="tf.item_title = '未所持'"]
[eval exp="tf.item_desc = '現在、所持しているアイテムはありません。'"]
[eval exp="tf.item_image = ''"]
[endif]


*draw_ui
[cm]
[free name="item_ui" layer="1" time="0"]

; ▼ 固定テキスト＆閉じるボタン
[ptext name="item_ui" layer="1" x="90" y="120" size="28" color="white" text="アイテム一覧" bold="true"]
[button name="item_ui" graphic="btn_return.webp" folder="image" x="1060" y="560" target="*close"]

; ▼ 左側のリスト（4つ目を追加してy座標を調整）
[if exp="f.item_driver == true"]
[glink color="btn_19_black" text="プラスドライバー" x="90" y="180" size="20" width="240" height="48" target="*click_driver"]
[else]
[ptext name="item_ui" layer="1" x="110" y="192" size="24" color="white" text="？？？"]
[endif]

[if exp="f.item_detergent == true"]
[glink color="btn_19_black" text="洗剤" x="90" y="236" size="20" width="240" height="48" target="*click_detergent"]
[else]
[ptext name="item_ui" layer="1" x="110" y="248" size="24" color="white" text="？？？"]
[endif]

[if exp="f.item_pills == true"]
[glink color="btn_19_black" text="睡眠薬" x="90" y="292" size="20" width="240" height="48" target="*click_pills"]
[else]
[ptext name="item_ui" layer="1" x="110" y="304" size="24" color="white" text="？？？"]
[endif]

[if exp="f.item_necklace == true"]
[glink color="btn_19_black" text="ネックレス" x="90" y="348" size="20" width="240" height="48" target="*click_necklace"]
[else]
[ptext name="item_ui" layer="1" x="110" y="360" size="24" color="white" text="？？？"]
[endif]

; ▼ 右側の詳細エリア
[ptext name="item_ui" layer="1" x="390" y="120" size="28" color="white" text="&'【' + tf.item_title + '】'" bold="true"]
[ptext name="item_ui" layer="1" x="390" y="474" size="22" color="white" text="&tf.item_desc"]

; ▼ 画像表示（エンジニア仕様の比率維持＆パネルの手前に表示）
[iscript]
$("#menu_preview_image").remove();
if (TYRANO.kag.variable.tf.item_image != '') {
var imgSrc = "./data/image/" + TYRANO.kag.variable.tf.item_image;
$("#root_layer_game").append('<img id="menu_preview_image" src="' + encodeURI(imgSrc) + '" style="position:absolute;left:390px;top:170px;width:500px;height:280px;z-index:20;object-fit:contain;pointer-events:none;" />');
}
[endscript]

[s]

; =====================================
; アイテム選択時の処理
; =====================================
*click_driver
[eval exp="tf.item_title = 'プラスドライバー'"]
[eval exp="tf.item_desc = '先端が十字になっているドライバー。ネジを外すのに使えそうだ。'"]
[eval exp="tf.item_image = 'item_driver.webp'"]
@jump target="*draw_ui"

*click_detergent
[eval exp="tf.item_title = '洗剤'"]
[eval exp="tf.item_desc = '業務用の強力な洗剤。アルカリ性のようだ。'"]
[eval exp="tf.item_image = 'item_detergent.webp'"]
@jump target="*draw_ui"

*click_pills
[eval exp="tf.item_title = '睡眠薬'"]
[eval exp="tf.item_desc = '強力な睡眠作用がある薬。アルカリ性のものと反応して紫色になると書かれている。'"]
[eval exp="tf.item_image = 'item_pills.webp'"]
@jump target="*draw_ui"

*click_necklace
[eval exp="tf.item_title = 'ネックレス'"]
[eval exp="tf.item_desc = 'ナゾDさんの部屋に落ちていたネックレス。銀でできている。'"]
[eval exp="tf.item_image = 'btn_necklace.webp'"]
@jump target="*draw_ui"

; =====================================
; 閉じる処理
; =====================================
*close
[cm]
[free name="item_ui" layer="1" time="0"]
[iscript]
$("#root_layer_game").find(".menu_blur_target").css("filter", "").removeClass("menu_blur_target");
$("#menu_green_overlay").remove();
$("#menu_text_panels").remove();
$("#menu_preview_image").remove();
[endscript]
[awakegame]
[_tb_end_tyrano_code]

