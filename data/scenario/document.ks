[_tb_system_call storage=system/_document.ks]

*start

[cm]
[tb_hide_message_window]
[eval exp="tf.menu_tab = 'nazo'"]

; セーブ/ロードで保持されるf変数側を参照
[if exp="f.unlock_nazo_a == null"][eval exp="f.unlock_nazo_a = false"][endif]
[if exp="f.unlock_nazo_b == null"][eval exp="f.unlock_nazo_b = false"][endif]
[if exp="f.unlock_nazo_c == null"][eval exp="f.unlock_nazo_c = false"][endif]
[if exp="f.unlock_nazo_d == null"][eval exp="f.unlock_nazo_d = false"][endif]
[if exp="f.unlock_nazo_e == null"][eval exp="f.unlock_nazo_e = false"][endif]
[if exp="f.unlock_doc_1 == null"][eval exp="f.unlock_doc_1 = false"][endif]
[if exp="f.unlock_doc_2 == null"][eval exp="f.unlock_doc_2 = false"][endif]
[if exp="f.unlock_doc_3 == null"][eval exp="f.unlock_doc_3 = false"][endif]
[if exp="f.unlock_doc_4 == null"][eval exp="f.unlock_doc_4 = false"][endif]
[if exp="f.unlock_doc_5 == null"][eval exp="f.unlock_doc_5 = false"][endif]
[if exp="f.unlock_doc_6 == null"][eval exp="f.unlock_doc_6 = false"][endif]
[if exp="f.unlock_doc_7 == null"][eval exp="f.unlock_doc_7 = false"][endif]
[if exp="f.unlock_doc_8 == null"][eval exp="f.unlock_doc_8 = false"][endif]
[if exp="f.unlock_doc_9 == null"][eval exp="f.unlock_doc_9 = false"][endif]
[if exp="f.unlock_doc_10 == null"][eval exp="f.unlock_doc_10 = false"][endif]
[if exp="f.unlock_map == null"][eval exp="f.unlock_map = false"][endif]

[iscript]
// 直前画面の表示物にだけぼかしをかける（これ以降に出すメニューUIは対象外）
var root = $("#root_layer_game");
root.find(".menu_blur_target").css("filter", "").removeClass("menu_blur_target");
root.find(".layer:visible").each(function () {
    $(this).children().each(function () {
        $(this).addClass("menu_blur_target");
    });
});
root.find(".menu_blur_target").css("filter", "blur(6px)");

// 半透明の緑オーバーレイ
$("#menu_green_overlay").remove();
root.append(
    '<div id="menu_green_overlay" style="position:absolute;left:0;top:0;width:100%;height:100%;z-index:10;background:rgba(40,90,50,0.22);pointer-events:none;"></div>'
);

// ナゾ/資料のページデータ（1=現在ページ、2/3=予備ページ）
var makeNazoPlaceholder = function (title, pageNo) {
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
var makeDocPlaceholder = function (title, pageNo) {
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
        1: { title: "志岐間 春恵", text1: "職業 主婦", text2: "撞木橋近くの屋敷に住む主婦。", text3: "約1年前に11歳の息子・修一を誘拐された末に亡くしている。", text4: "騒動をもみ消された挙げ句、犯人不明に苛立っている。", prefix: "探偵・", red: "櫂 利飛太", suffix: "に真相究明と犯人捜しを依頼した。", img: "画像：ナゾA", image: "chara/1/shigima_harue.png" },
        2: makeNazoPlaceholder("ナゾA", 2),
        3: makeNazoPlaceholder("ナゾA", 3)
    },
    2: { 1: { title: "ナゾB", text1: "ナゾBの説明テキスト（仮）", text2: "ここに詳細を書きます。", text3: "", text4: "", prefix: "", red: "", suffix: "", img: "画像：ナゾB（未設定）", image: "" }, 2: makeNazoPlaceholder("ナゾB", 2), 3: makeNazoPlaceholder("ナゾB", 3) },
    3: { 1: { title: "ナゾC", text1: "ナゾCの説明テキスト（仮）", text2: "ここに詳細を書きます。", text3: "", text4: "", prefix: "", red: "", suffix: "", img: "画像：ナゾC（未設定）", image: "" }, 2: makeNazoPlaceholder("ナゾC", 2), 3: makeNazoPlaceholder("ナゾC", 3) },
    4: { 1: { title: "ナゾD", text1: "ナゾDの説明テキスト（仮）", text2: "ここに詳細を書きます。", text3: "", text4: "", prefix: "", red: "", suffix: "", img: "画像：ナゾD（未設定）", image: "" }, 2: makeNazoPlaceholder("ナゾD", 2), 3: makeNazoPlaceholder("ナゾD", 3) },
    5: { 1: { title: "ナゾE", text1: "ナゾEの説明テキスト（仮）", text2: "ここに詳細を書きます。", text3: "", text4: "", prefix: "", red: "", suffix: "", img: "画像：ナゾE（未設定）", image: "" }, 2: makeNazoPlaceholder("ナゾE", 2), 3: makeNazoPlaceholder("ナゾE", 3) }
};

window.menuDocPages = {
    1: { 1: { title: "資料1", text1: "資料1の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料1（未設定）", image: "" }, 2: makeDocPlaceholder("資料1", 2), 3: makeDocPlaceholder("資料1", 3) },
    2: { 1: { title: "資料2", text1: "資料2の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料2（未設定）", image: "" }, 2: makeDocPlaceholder("資料2", 2), 3: makeDocPlaceholder("資料2", 3) },
    3: { 1: { title: "資料3", text1: "資料3の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料3（未設定）", image: "" }, 2: makeDocPlaceholder("資料3", 2), 3: makeDocPlaceholder("資料3", 3) },
    4: { 1: { title: "資料4", text1: "資料4の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料4（未設定）", image: "" }, 2: makeDocPlaceholder("資料4", 2), 3: makeDocPlaceholder("資料4", 3) },
    5: { 1: { title: "資料5", text1: "資料5の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料5（未設定）", image: "" }, 2: makeDocPlaceholder("資料5", 2), 3: makeDocPlaceholder("資料5", 3) },
    6: { 1: { title: "資料6", text1: "資料6の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料6（未設定）", image: "" }, 2: makeDocPlaceholder("資料6", 2), 3: makeDocPlaceholder("資料6", 3) },
    7: { 1: { title: "資料7", text1: "資料7の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料7（未設定）", image: "" }, 2: makeDocPlaceholder("資料7", 2), 3: makeDocPlaceholder("資料7", 3) },
    8: { 1: { title: "資料8", text1: "資料8の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料8（未設定）", image: "" }, 2: makeDocPlaceholder("資料8", 2), 3: makeDocPlaceholder("資料8", 3) },
    9: { 1: { title: "資料9", text1: "資料9の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料9（未設定）", image: "" }, 2: makeDocPlaceholder("資料9", 2), 3: makeDocPlaceholder("資料9", 3) },
    10: { 1: { title: "資料10", text1: "資料10の説明テキスト（仮）", text2: "ここに詳細を書きます。", img: "画像：資料10（未設定）", image: "" }, 2: makeDocPlaceholder("資料10", 2), 3: makeDocPlaceholder("資料10", 3) }
};

window.menuApplyNazoPage = function (selected, page) {
    var tf = TYRANO.kag.variable.tf;
    var pages = window.menuNazoPages[selected] || {};
    var total = Object.keys(pages).length || 1;
    if (page < 1) page = 1;
    if (page > total) page = total;
    var data = pages[page] || pages[1] || makeNazoPlaceholder("ナゾ", 1);
    tf.menu_nazo_selected = selected;
    tf.menu_nazo_page = page;
    tf.menu_nazo_page_total = total;
    tf.menu_nazo_page_label = page + "/" + total;
    tf.menu_nazo_title = data.title;
    tf.menu_nazo_text1 = data.text1;
    tf.menu_nazo_text2 = data.text2;
    tf.menu_nazo_text3 = data.text3;
    tf.menu_nazo_text4 = data.text4;
    tf.menu_nazo_prefix = data.prefix;
    tf.menu_nazo_red = data.red;
    tf.menu_nazo_suffix = data.suffix;
    tf.menu_nazo_img = data.img;
    tf.menu_nazo_image = data.image;
};

window.menuApplyDocPage = function (selected, page) {
    var tf = TYRANO.kag.variable.tf;
    var pages = window.menuDocPages[selected] || {};
    var total = Object.keys(pages).length || 1;
    if (page < 1) page = 1;
    if (page > total) page = total;
    var data = pages[page] || pages[1] || makeDocPlaceholder("資料", 1);
    tf.menu_doc_selected = selected;
    tf.menu_doc_page = page;
    tf.menu_doc_page_total = total;
    tf.menu_doc_page_label = page + "/" + total;
    tf.menu_doc_title = data.title;
    tf.menu_doc_text1 = data.text1;
    tf.menu_doc_text2 = data.text2;
    tf.menu_doc_img = data.img;
    tf.menu_doc_image = data.image;
};
[endscript]

[if exp="f.unlock_nazo_a == true"]
[jump target="*nazo_a"]
[else]
[jump target="*set_nazo_default"]
[endif]

; -----------------------------
; 画面描画
; -----------------------------
*refresh_menu
[cm]
[tb_hide_message_window]
[chara_hide_all time="0" wait="true"]
[freeimage layer="0" time="0"]
[freeimage layer="1" time="0"]
[freeimage layer="2" time="0"]
[iscript]
// 使い回し要素のクリア
var root = $("#root_layer_game");
root.find("[name^='menu_']").remove();
root.find("[data-event-target^='*tab_'], [data-event-target^='*nazo_'], [data-event-target^='*doc_'], [data-event-target='*close']").remove();
$("#menu_text_panels").remove();
$("#menu_preview_image").remove();
[endscript]

; 上部タブ
[glink color="btn_19_black" text="ナゾ" x="120" y="20" size="22" width="180" height="56" target="*tab_nazo"]
[glink color="btn_19_black" text="資料" x="320" y="20" size="22" width="180" height="56" target="*tab_doc"]
[if exp="f.unlock_map == true"]
[glink color="btn_19_black" text="マップ" x="520" y="20" size="22" width="180" height="56" target="*tab_map"]
[else]
[ptext name="menu_map_lock" layer="1" x="580" y="36" size="24" color="white" text="？？？"]
[endif]
[ptext name="menu_line" layer="1" x="60" y="90" size="20" color="white" text="------------------------------------------------------------" bold="true"]

; 閉じるボタン
[button graphic="btn_return.webp" x="1060" y="560" target="*close" storage=""]

; =====================================
; ナゾタブ
; =====================================
[if exp="tf.menu_tab == 'nazo'"]
[ptext name="menu_nazo_header" layer="1" x="90" y="120" size="28" color="white" text="ナゾ一覧" bold="true"]

[if exp="f.unlock_nazo_a == true"]
[glink color="btn_19_black" text="ナゾA" x="90" y="180" size="20" width="240" height="48" target="*nazo_a"]
[else]
[ptext name="menu_nazo_lock_a" layer="1" x="110" y="192" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_nazo_b == true"]
[glink color="btn_19_black" text="ナゾB" x="90" y="236" size="20" width="240" height="48" target="*nazo_b"]
[else]
[ptext name="menu_nazo_lock_b" layer="1" x="110" y="248" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_nazo_c == true"]
[glink color="btn_19_black" text="ナゾC" x="90" y="292" size="20" width="240" height="48" target="*nazo_c"]
[else]
[ptext name="menu_nazo_lock_c" layer="1" x="110" y="304" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_nazo_d == true"]
[glink color="btn_19_black" text="ナゾD" x="90" y="348" size="20" width="240" height="48" target="*nazo_d"]
[else]
[ptext name="menu_nazo_lock_d" layer="1" x="110" y="360" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_nazo_e == true"]
[glink color="btn_19_black" text="ナゾE" x="90" y="404" size="20" width="240" height="48" target="*nazo_e"]
[else]
[ptext name="menu_nazo_lock_e" layer="1" x="110" y="416" size="24" color="white" text="？？？"]
[endif]

[ptext name="menu_nazo_title" layer="1" x="390" y="120" size="28" color="white" text="&'【' + tf.menu_nazo_title + '】'" bold="true" overwrite="true"]
[if exp="tf.menu_nazo_image != ''"]
[iscript]
var nazoSrc = "./data/fgimage/" + TYRANO.kag.variable.tf.menu_nazo_image;
$("#menu_preview_image").remove();
$("#root_layer_game").append('<img id="menu_preview_image" style="position:absolute;left:390px;top:170px;width:500px;height:280px;z-index:40;pointer-events:none;object-fit:contain;background:rgba(0,0,0,0.35);" />');
$("#menu_preview_image").attr("src", encodeURI(nazoSrc).replace(/#/g, "%23"));
[endscript]
[else]
[ptext name="menu_nazo_img_text" layer="1" x="390" y="170" size="24" color="white" text="&tf.menu_nazo_img" bold="true" overwrite="true"]
[endif]
[ptext name="menu_nazo_text1" layer="1" x="390" y="450" size="22" color="white" text="&tf.menu_nazo_text1" overwrite="true"]
[ptext name="menu_nazo_text2" layer="1" x="390" y="485" size="22" color="white" text="&tf.menu_nazo_text2" overwrite="true"]
[ptext name="menu_nazo_text3" layer="1" x="390" y="520" size="22" color="white" text="&tf.menu_nazo_text3" overwrite="true"]
[ptext name="menu_nazo_text4" layer="1" x="390" y="555" size="22" color="white" text="&tf.menu_nazo_text4" overwrite="true"]
[ptext name="menu_nazo_prefix" layer="1" x="390" y="590" size="22" color="white" text="&tf.menu_nazo_prefix" overwrite="true"]
[ptext name="menu_nazo_red" layer="1" x="470" y="590" size="22" color="red" text="&tf.menu_nazo_red" bold="true" overwrite="true"]
[ptext name="menu_nazo_suffix" layer="1" x="620" y="590" size="22" color="white" text="&tf.menu_nazo_suffix" overwrite="true"]
[if exp="tf.menu_nazo_selected > 0"]
[ptext name="menu_nazo_page" layer="1" x="836" y="124" size="22" width="94" align="center" color="white" text="&tf.menu_nazo_page_label" overwrite="true"]
[if exp="tf.menu_nazo_page_total > 1"]
[glink color="btn_19_black" text="◀" x="780" y="116" size="20" width="56" height="44" target="*nazo_page_prev"]
[glink color="btn_19_black" text="▶" x="930" y="116" size="20" width="56" height="44" target="*nazo_page_next"]
[endif]
[endif]
[endif]

; =====================================
; 資料タブ（固定7件表示）
; =====================================
[if exp="tf.menu_tab == 'doc'"]
[ptext name="menu_doc_header" layer="1" x="90" y="120" size="28" color="white" text="資料一覧" bold="true"]

[if exp="f.unlock_doc_1 == true"]
[glink color="btn_19_black" text="資料1" x="90" y="180" size="18" width="240" height="44" target="*doc_1"]
[else]
[ptext name="menu_doc_lock_1" layer="1" x="110" y="190" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_doc_2 == true"]
[glink color="btn_19_black" text="資料2" x="90" y="228" size="18" width="240" height="44" target="*doc_2"]
[else]
[ptext name="menu_doc_lock_2" layer="1" x="110" y="238" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_doc_3 == true"]
[glink color="btn_19_black" text="資料3" x="90" y="276" size="18" width="240" height="44" target="*doc_3"]
[else]
[ptext name="menu_doc_lock_3" layer="1" x="110" y="286" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_doc_4 == true"]
[glink color="btn_19_black" text="資料4" x="90" y="324" size="18" width="240" height="44" target="*doc_4"]
[else]
[ptext name="menu_doc_lock_4" layer="1" x="110" y="334" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_doc_5 == true"]
[glink color="btn_19_black" text="資料5" x="90" y="372" size="18" width="240" height="44" target="*doc_5"]
[else]
[ptext name="menu_doc_lock_5" layer="1" x="110" y="382" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_doc_6 == true"]
[glink color="btn_19_black" text="資料6" x="90" y="420" size="18" width="240" height="44" target="*doc_6"]
[else]
[ptext name="menu_doc_lock_6" layer="1" x="110" y="430" size="24" color="white" text="？？？"]
[endif]

[if exp="f.unlock_doc_7 == true"]
[glink color="btn_19_black" text="資料7" x="90" y="468" size="18" width="240" height="44" target="*doc_7"]
[else]
[ptext name="menu_doc_lock_7" layer="1" x="110" y="478" size="24" color="white" text="？？？"]
[endif]

[ptext name="menu_doc_title" layer="1" x="390" y="120" size="28" color="white" text="&'【' + tf.menu_doc_title + '】'" bold="true" overwrite="true"]
[if exp="tf.menu_doc_image != ''"]
[iscript]
var docSrc = "./data/fgimage/" + TYRANO.kag.variable.tf.menu_doc_image;
$("#menu_preview_image").remove();
$("#root_layer_game").append('<img id="menu_preview_image" style="position:absolute;left:390px;top:170px;width:500px;height:280px;z-index:40;pointer-events:none;object-fit:contain;background:rgba(0,0,0,0.35);" />');
$("#menu_preview_image").attr("src", encodeURI(docSrc).replace(/#/g, "%23"));
[endscript]
[else]
[ptext name="menu_doc_img_text" layer="1" x="390" y="170" size="24" color="white" text="&tf.menu_doc_img" bold="true" overwrite="true"]
[endif]
[ptext name="menu_doc_text1" layer="1" x="390" y="470" size="22" color="white" text="&tf.menu_doc_text1" overwrite="true"]
[ptext name="menu_doc_text2" layer="1" x="390" y="510" size="22" color="white" text="&tf.menu_doc_text2" overwrite="true"]
[if exp="tf.menu_doc_selected > 0"]
[ptext name="menu_doc_page" layer="1" x="836" y="124" size="22" width="94" align="center" color="white" text="&tf.menu_doc_page_label" overwrite="true"]
[if exp="tf.menu_doc_page_total > 1"]
[glink color="btn_19_black" text="◀" x="780" y="116" size="20" width="56" height="44" target="*doc_page_prev"]
[glink color="btn_19_black" text="▶" x="930" y="116" size="20" width="56" height="44" target="*doc_page_next"]
[endif]
[endif]
[endif]

; =====================================
; マップタブ
; =====================================
[if exp="tf.menu_tab == 'map'"]
[ptext name="menu_map_header" layer="1" x="90" y="120" size="28" color="white" text="マップ" bold="true"]
[iscript]
var mapSrc = "./data/bgimage/" + TYRANO.kag.variable.tf.menu_map_image;
$("#menu_preview_image").remove();
$("#root_layer_game").append('<img id="menu_preview_image" style="position:absolute;left:250px;top:130px;width:760px;height:520px;z-index:40;pointer-events:none;object-fit:contain;background:rgba(0,0,0,0.35);" />');
$("#menu_preview_image").attr("src", encodeURI(mapSrc).replace(/#/g, "%23"));
[endscript]
[endif]

[iscript]
// メニュー文字/下層UIの重なり調整
var root = $("#root_layer_game");
var menuHost = root.find("[data-event-target='*tab_nazo']").first().parent();
if (menuHost.length === 0) {
    menuHost = root.find("[data-event-target='*tab_doc']").first().parent();
}
if (menuHost.length === 0) {
    menuHost = root;
}

menuHost.find("#menu_text_panels").remove();
menuHost.prepend(
    '<div id="menu_text_panels" style="position:absolute;left:0;top:0;width:100%;height:100%;z-index:5;pointer-events:none;">' +
        '<div style="position:absolute;left:70px;top:8px;width:660px;height:74px;background:rgba(0,0,0,0.72);"></div>' +
        '<div style="position:absolute;left:70px;top:108px;width:290px;height:430px;background:rgba(0,0,0,0.75);"></div>' +
        '<div style="position:absolute;left:372px;top:108px;width:910px;height:550px;background:rgba(0,0,0,0.78);"></div>' +
    '</div>'
);

var isMenuTarget = function (t) {
    return /^\*(tab_|nazo_|doc_|close|tab_map)/.test(t || "");
};

// 下層UIはパネルより背面へ（ただしメニュー要素は除外）
root.find(".layer:visible").children().each(function () {
    var el = $(this);
    if (el.is("#menu_green_overlay, #menu_text_panels, #menu_preview_image")) return;
    var name = el.attr("name") || "";
    var target = el.attr("data-event-target") || "";
    var isMenu = name.indexOf("menu_") === 0 || isMenuTarget(target);
    if (!isMenu) {
        this.style.setProperty("z-index", "15", "important");
        this.setAttribute("data-menu-force", "back");
    }
});

// メニュー要素を含む親レイヤー自体を最前面へ
root.find(".layer:visible").has("[name^='menu_'], [data-event-target^='*tab_'], [data-event-target^='*nazo_'], [data-event-target^='*doc_'], [data-event-target='*close']").each(function () {
    this.style.setProperty("z-index", "85", "important");
    this.setAttribute("data-menu-force", "front");
});

// メニュー文字/ボタンは最前面へ固定
root.find("[name^='menu_'], .glink_button, [data-event-target]").each(function () {
    var target = this.getAttribute("data-event-target") || "";
    var name = this.getAttribute("name") || "";
    if (name.indexOf("menu_") === 0 || isMenuTarget(target)) {
        this.style.setProperty("z-index", "90", "important");
        this.style.setProperty("color", "#FFFFFF", "important");
        this.style.setProperty("opacity", "1", "important");
        this.style.setProperty("font-weight", "900", "important");
        this.style.setProperty("text-shadow", "0 0 2px #000, 0 0 6px #000, 0 0 12px #000, 0 0 20px #000", "important");
        this.setAttribute("data-menu-force", "front");
    }
});
[endscript]

[s]

; -----------------------------
; タブ切替
; -----------------------------
*tab_nazo
[eval exp="tf.menu_tab = 'nazo'"]
[jump target="*set_nazo_default"]

*tab_doc
[eval exp="tf.menu_tab = 'doc'"]
[jump target="*set_doc_default"]

*tab_map
[if exp="f.unlock_map != true"][jump target="*refresh_menu"][endif]
[eval exp="tf.menu_tab = 'map'"]
[jump target="*refresh_menu"]

; -----------------------------
; タブ初期表示（先頭項目）
; -----------------------------
*set_nazo_default
[if exp="f.unlock_nazo_a == true"]
[jump target="*nazo_a"]
[elsif exp="f.unlock_nazo_b == true"]
[jump target="*nazo_b"]
[elsif exp="f.unlock_nazo_c == true"]
[jump target="*nazo_c"]
[elsif exp="f.unlock_nazo_d == true"]
[jump target="*nazo_d"]
[elsif exp="f.unlock_nazo_e == true"]
[jump target="*nazo_e"]
[else]
[eval exp="tf.menu_nazo_selected = 0"]
[eval exp="tf.menu_nazo_title = '未開放'"]
[eval exp="tf.menu_nazo_text1 = 'ナゾが未開放です。'"]
[eval exp="tf.menu_nazo_text2 = ''"]
[eval exp="tf.menu_nazo_text3 = ''"]
[eval exp="tf.menu_nazo_text4 = ''"]
[eval exp="tf.menu_nazo_prefix = ''"]
[eval exp="tf.menu_nazo_red = ''"]
[eval exp="tf.menu_nazo_suffix = ''"]
[eval exp="tf.menu_nazo_img = '画像：未開放'"]
[eval exp="tf.menu_nazo_image = ''"]
[eval exp="tf.menu_nazo_page = 1"]
[eval exp="tf.menu_nazo_page_total = 1"]
[eval exp="tf.menu_nazo_page_label = '1/1'"]
[jump target="*refresh_menu"]
[endif]

*set_doc_default
[if exp="f.unlock_doc_1 == true"]
[jump target="*doc_1"]
[elsif exp="f.unlock_doc_2 == true"]
[jump target="*doc_2"]
[elsif exp="f.unlock_doc_3 == true"]
[jump target="*doc_3"]
[elsif exp="f.unlock_doc_4 == true"]
[jump target="*doc_4"]
[elsif exp="f.unlock_doc_5 == true"]
[jump target="*doc_5"]
[elsif exp="f.unlock_doc_6 == true"]
[jump target="*doc_6"]
[elsif exp="f.unlock_doc_7 == true"]
[jump target="*doc_7"]
[else]
[eval exp="tf.menu_doc_selected = 0"]
[eval exp="tf.menu_doc_title = '未開放'"]
[eval exp="tf.menu_doc_text1 = '資料が未開放です。'"]
[eval exp="tf.menu_doc_text2 = ''"]
[eval exp="tf.menu_doc_img = '画像：未開放'"]
[eval exp="tf.menu_doc_image = ''"]
[eval exp="tf.menu_doc_page = 1"]
[eval exp="tf.menu_doc_page_total = 1"]
[eval exp="tf.menu_doc_page_label = '1/1'"]
[jump target="*refresh_menu"]
[endif]

; -----------------------------
; ナゾ選択
; -----------------------------
*nazo_a
[if exp="f.unlock_nazo_a != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyNazoPage(1, 1);[endscript]
[jump target="*refresh_menu"]

*nazo_b
[if exp="f.unlock_nazo_b != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyNazoPage(2, 1);[endscript]
[jump target="*refresh_menu"]

*nazo_c
[if exp="f.unlock_nazo_c != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyNazoPage(3, 1);[endscript]
[jump target="*refresh_menu"]

*nazo_d
[if exp="f.unlock_nazo_d != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyNazoPage(4, 1);[endscript]
[jump target="*refresh_menu"]

*nazo_e
[if exp="f.unlock_nazo_e != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyNazoPage(5, 1);[endscript]
[jump target="*refresh_menu"]

*nazo_page_prev
[if exp="tf.menu_nazo_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
(function () {
    var tf = TYRANO.kag.variable.tf;
    var next = (tf.menu_nazo_page || 1) - 1;
    if (next < 1) next = tf.menu_nazo_page_total || 1;
    window.menuApplyNazoPage(tf.menu_nazo_selected, next);
})();
[endscript]
[jump target="*refresh_menu"]

*nazo_page_next
[if exp="tf.menu_nazo_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
(function () {
    var tf = TYRANO.kag.variable.tf;
    var next = (tf.menu_nazo_page || 1) + 1;
    if (next > (tf.menu_nazo_page_total || 1)) next = 1;
    window.menuApplyNazoPage(tf.menu_nazo_selected, next);
})();
[endscript]
[jump target="*refresh_menu"]

; -----------------------------
; 資料選択
; -----------------------------
*doc_1
[if exp="f.unlock_doc_1 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(1, 1);[endscript]
[jump target="*refresh_menu"]

*doc_2
[if exp="f.unlock_doc_2 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(2, 1);[endscript]
[jump target="*refresh_menu"]

*doc_3
[if exp="f.unlock_doc_3 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(3, 1);[endscript]
[jump target="*refresh_menu"]

*doc_4
[if exp="f.unlock_doc_4 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(4, 1);[endscript]
[jump target="*refresh_menu"]

*doc_5
[if exp="f.unlock_doc_5 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(5, 1);[endscript]
[jump target="*refresh_menu"]

*doc_6
[if exp="f.unlock_doc_6 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(6, 1);[endscript]
[jump target="*refresh_menu"]

*doc_7
[if exp="f.unlock_doc_7 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(7, 1);[endscript]
[jump target="*refresh_menu"]

*doc_8
[if exp="f.unlock_doc_8 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(8, 1);[endscript]
[jump target="*refresh_menu"]

*doc_9
[if exp="f.unlock_doc_9 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(9, 1);[endscript]
[jump target="*refresh_menu"]

*doc_10
[if exp="f.unlock_doc_10 != true"][jump target="*refresh_menu"][endif]
[iscript]window.menuApplyDocPage(10, 1);[endscript]
[jump target="*refresh_menu"]

*doc_page_prev
[if exp="tf.menu_doc_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
(function () {
    var tf = TYRANO.kag.variable.tf;
    var next = (tf.menu_doc_page || 1) - 1;
    if (next < 1) next = tf.menu_doc_page_total || 1;
    window.menuApplyDocPage(tf.menu_doc_selected, next);
})();
[endscript]
[jump target="*refresh_menu"]

*doc_page_next
[if exp="tf.menu_doc_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
(function () {
    var tf = TYRANO.kag.variable.tf;
    var next = (tf.menu_doc_page || 1) + 1;
    if (next > (tf.menu_doc_page_total || 1)) next = 1;
    window.menuApplyDocPage(tf.menu_doc_selected, next);
})();
[endscript]
[jump target="*refresh_menu"]

*close

[cm]
[iscript]
$("#root_layer_game").find(".menu_blur_target").css("filter", "").removeClass("menu_blur_target");
$("#root_layer_game [data-menu-force='front'], #root_layer_game [data-menu-force='back']").each(function () {
    this.style.removeProperty("z-index");
    this.style.removeProperty("color");
    this.style.removeProperty("opacity");
    this.style.removeProperty("font-weight");
    this.style.removeProperty("text-shadow");
    this.removeAttribute("data-menu-force");
});
$("#menu_green_overlay").remove();
$("#menu_text_panels").remove();
$("#menu_preview_image").remove();
[endscript]
[awakegame]

