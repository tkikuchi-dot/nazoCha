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

; 文章・画像は menu_data.ks（シナリオタブから編集）
[call storage="menu_data.ks"]

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

window.menuGetPageNums = function (pages) {
    var keys = Object.keys(pages || {});
    var nums = [];
    var i;
    for (i = 0; i < keys.length; i++) {
        var n = parseInt(keys[i], 10);
        if (n > 0) nums.push(n);
    }
    nums.sort(function (a, b) { return a - b; });
    return nums;
};

window.menuInitPageFlags = function () {
    var f = TYRANO.kag.stat.f;
    var letters = { 1: "a", 2: "b", 3: "c", 4: "d", 5: "e" };
    var selected;
    var nums;
    var i;
    var k;
    for (selected in (window.menuNazoPages || {})) {
        nums = window.menuGetPageNums(window.menuNazoPages[selected]);
        for (i = 0; i < nums.length; i++) {
            k = "unlock_nazo_" + letters[selected] + "_p" + nums[i];
            if (f[k] == null) f[k] = false;
        }
    }
    for (selected in (window.menuDocPages || {})) {
        nums = window.menuGetPageNums(window.menuDocPages[selected]);
        for (i = 0; i < nums.length; i++) {
            k = "unlock_doc_" + selected + "_p" + nums[i];
            if (f[k] == null) f[k] = false;
        }
    }
};

window.menuGetUnlockedPages = function (kind, selected) {
    var f = TYRANO.kag.stat.f;
    var pages;
    var prefix;
    if (kind === "nazo") {
        var letter = { 1: "a", 2: "b", 3: "c", 4: "d", 5: "e" }[selected];
        prefix = "unlock_nazo_" + letter + "_p";
        pages = (window.menuNazoPages || {})[selected] || {};
    } else {
        prefix = "unlock_doc_" + selected + "_p";
        pages = (window.menuDocPages || {})[selected] || {};
    }
    var nums = window.menuGetPageNums(pages);
    var unlocked = [];
    var i;
    for (i = 0; i < nums.length; i++) {
        if (f[prefix + nums[i]] === true) unlocked.push(nums[i]);
    }
    return unlocked;
};

window.menuInitPageFlags();

window.menuApplyNazoPage = function (selected, page) {
    var tf = TYRANO.kag.variable.tf;
    var pages = window.menuNazoPages[selected] || {};
    var unlocked = window.menuGetUnlockedPages("nazo", selected);
    var total = unlocked.length;
    if (total < 1) {
        tf.menu_nazo_selected = selected;
        tf.menu_nazo_page = 1;
        tf.menu_nazo_page_total = 1;
        tf.menu_nazo_page_label = "1/1";
        tf.menu_nazo_title = "未開放";
        tf.menu_nazo_text1 = "このナゾのページはまだ開放されていません。";
        tf.menu_nazo_text2 = "";
        tf.menu_nazo_text3 = "";
        tf.menu_nazo_text4 = "";
        tf.menu_nazo_prefix = "";
        tf.menu_nazo_red = "";
        tf.menu_nazo_suffix = "";
        tf.menu_nazo_img = "画像：未開放";
        tf.menu_nazo_image = "";
        return;
    }
    if (unlocked.indexOf(page) < 0) page = unlocked[0];
    var pos = unlocked.indexOf(page) + 1;
    var data = pages[page] || pages[1] || window.makeNazoPlaceholder("ナゾ", 1);
    tf.menu_nazo_selected = selected;
    tf.menu_nazo_page = page;
    tf.menu_nazo_page_total = total;
    tf.menu_nazo_page_label = pos + "/" + total;
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
    var unlocked = window.menuGetUnlockedPages("doc", selected);
    var total = unlocked.length;
    if (total < 1) {
        tf.menu_doc_selected = selected;
        tf.menu_doc_page = 1;
        tf.menu_doc_page_total = 1;
        tf.menu_doc_page_label = "1/1";
        tf.menu_doc_title = "未開放";
        tf.menu_doc_text1 = "この資料のページはまだ開放されていません。";
        tf.menu_doc_text2 = "";
        tf.menu_doc_img = "画像：未開放";
        tf.menu_doc_image = "";
        return;
    }
    if (unlocked.indexOf(page) < 0) page = unlocked[0];
    var pos = unlocked.indexOf(page) + 1;
    var data = pages[page] || pages[1] || window.makeDocPlaceholder("資料", 1);
    tf.menu_doc_selected = selected;
    tf.menu_doc_page = page;
    tf.menu_doc_page_total = total;
    tf.menu_doc_page_label = pos + "/" + total;
    tf.menu_doc_title = data.title;
    tf.menu_doc_text1 = data.text1;
    tf.menu_doc_text2 = data.text2;
    tf.menu_doc_img = data.img;
    tf.menu_doc_image = data.image;
};

window.menuStepNazoPage = function (delta) {
    var tf = TYRANO.kag.variable.tf;
    var unlocked = window.menuGetUnlockedPages("nazo", tf.menu_nazo_selected);
    if (unlocked.length < 1) return;
    var idx = unlocked.indexOf(tf.menu_nazo_page);
    if (idx < 0) idx = 0;
    idx = (idx + delta + unlocked.length) % unlocked.length;
    window.menuApplyNazoPage(tf.menu_nazo_selected, unlocked[idx]);
};

window.menuStepDocPage = function (delta) {
    var tf = TYRANO.kag.variable.tf;
    var unlocked = window.menuGetUnlockedPages("doc", tf.menu_doc_selected);
    if (unlocked.length < 1) return;
    var idx = unlocked.indexOf(tf.menu_doc_page);
    if (idx < 0) idx = 0;
    idx = (idx + delta + unlocked.length) % unlocked.length;
    window.menuApplyDocPage(tf.menu_doc_selected, unlocked[idx]);
};

window.menuHidePreviewZoom = function () {
    $("#menu_preview_zoom").remove();
};

window.menuShowPreviewZoom = function (src, width, height) {
    if (!src) return;
    if ($("#menu_preview_zoom").length) return;
    var zw = Math.round((width || 500) * 1.5);
    var zh = Math.round((height || 280) * 1.5);
    var overlay = $(
        '<div id="menu_preview_zoom" style="position:absolute;left:0;top:0;width:100%;height:100%;z-index:150000000;background:rgba(0,0,0,0.88);cursor:pointer;">' +
            '<img style="position:absolute;left:50%;top:50%;width:' + zw + 'px;height:' + zh + 'px;transform:translate(-50%,-50%);object-fit:contain;pointer-events:none;" />' +
        '</div>'
    );
    overlay.find("img").attr("src", src);
    $("#tyrano_base").append(overlay);
    overlay.on("click.menuZoom", function (e) {
        e.preventDefault();
        e.stopPropagation();
        window.menuHidePreviewZoom();
    });
};

window.menuClearPreviewImage = function () {
    $("#menu_preview_frame").remove();
    $("#menu_preview_image").remove();
    $("#menu_preview_zoom").remove();
};

window.menuSetPreviewImage = function (src, left, top, width, height) {
    window.menuClearPreviewImage();
    var frame = $('<div id="menu_preview_frame"></div>');
    frame.attr("style", "position:absolute;left:" + left + "px;top:" + top + "px;width:" + width + "px;height:" + height + "px;z-index:2000000;pointer-events:auto;cursor:pointer;");
    var img = $("<img id='menu_preview_image' />");
    img.attr("src", src);
    img.attr("style", "position:absolute;left:0;top:0;width:100%;height:100%;object-fit:contain;background:rgba(0,0,0,0.35);pointer-events:none;");
    var badge = $(
        '<div style="position:absolute;right:8px;bottom:8px;width:36px;height:36px;pointer-events:none;">' +
            '<svg viewBox="0 0 36 36" width="36" height="36">' +
                '<circle cx="15" cy="15" r="10" fill="rgba(0,0,0,0.7)" stroke="#fff" stroke-width="2"></circle>' +
                '<line x1="22.5" y1="22.5" x2="31" y2="31" stroke="#fff" stroke-width="3" stroke-linecap="round"></line>' +
                '<line x1="15" y1="10" x2="15" y2="20" stroke="#fff" stroke-width="2.4" stroke-linecap="round"></line>' +
                '<line x1="10" y1="15" x2="20" y2="15" stroke="#fff" stroke-width="2.4" stroke-linecap="round"></line>' +
            '</svg>' +
        '</div>'
    );
    frame.append(img);
    frame.append(badge);
    $("#tyrano_base").append(frame);
    frame.on("click.menuZoom", function (e) {
        e.preventDefault();
        e.stopPropagation();
        window.menuShowPreviewZoom(src, width, height);
    });
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
if (window.menuClearPreviewImage) window.menuClearPreviewImage();
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
window.menuSetPreviewImage(encodeURI(nazoSrc).replace(/#/g, "%23"), 390, 170, 500, 280);
[endscript]
[else]
[ptext name="menu_nazo_img_text" layer="1" x="390" y="170" size="24" color="white" text="&tf.menu_nazo_img" bold="true" overwrite="true"]
[endif]
[ptext name="menu_nazo_text1" layer="1" x="390" y="474" size="22" color="white" text="&tf.menu_nazo_text1" overwrite="true"]
[ptext name="menu_nazo_text2" layer="1" x="390" y="509" size="22" color="white" text="&tf.menu_nazo_text2" overwrite="true"]
[ptext name="menu_nazo_text3" layer="1" x="390" y="544" size="22" color="white" text="&tf.menu_nazo_text3" overwrite="true"]
[ptext name="menu_nazo_text4" layer="1" x="390" y="579" size="22" color="white" text="&tf.menu_nazo_text4" overwrite="true"]
[ptext name="menu_nazo_prefix" layer="1" x="390" y="614" size="22" color="white" text="&tf.menu_nazo_prefix" overwrite="true"]
[ptext name="menu_nazo_red" layer="1" x="470" y="614" size="22" color="red" text="&tf.menu_nazo_red" bold="true" overwrite="true"]
[ptext name="menu_nazo_suffix" layer="1" x="620" y="614" size="22" color="white" text="&tf.menu_nazo_suffix" overwrite="true"]
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
window.menuSetPreviewImage(encodeURI(docSrc).replace(/#/g, "%23"), 390, 170, 500, 280);
[endscript]
[else]
[ptext name="menu_doc_img_text" layer="1" x="390" y="170" size="24" color="white" text="&tf.menu_doc_img" bold="true" overwrite="true"]
[endif]
[ptext name="menu_doc_text1" layer="1" x="390" y="494" size="22" color="white" text="&tf.menu_doc_text1" overwrite="true"]
[ptext name="menu_doc_text2" layer="1" x="390" y="534" size="22" color="white" text="&tf.menu_doc_text2" overwrite="true"]
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
if (window.menuClearPreviewImage) window.menuClearPreviewImage();
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
    if (el.is("#menu_green_overlay, #menu_text_panels, #menu_preview_image, #menu_preview_frame")) return;
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
[iscript]
window.menuApplyNazoPage(1, 1);
[endscript]
[jump target="*refresh_menu"]

*nazo_b
[if exp="f.unlock_nazo_b != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyNazoPage(2, 1);
[endscript]
[jump target="*refresh_menu"]

*nazo_c
[if exp="f.unlock_nazo_c != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyNazoPage(3, 1);
[endscript]
[jump target="*refresh_menu"]

*nazo_d
[if exp="f.unlock_nazo_d != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyNazoPage(4, 1);
[endscript]
[jump target="*refresh_menu"]

*nazo_e
[if exp="f.unlock_nazo_e != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyNazoPage(5, 1);
[endscript]
[jump target="*refresh_menu"]

*nazo_page_prev
[if exp="tf.menu_nazo_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
window.menuStepNazoPage(-1);
[endscript]
[jump target="*refresh_menu"]

*nazo_page_next
[if exp="tf.menu_nazo_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
window.menuStepNazoPage(1);
[endscript]
[jump target="*refresh_menu"]

; -----------------------------
; 資料選択
; -----------------------------
*doc_1
[if exp="f.unlock_doc_1 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(1, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_2
[if exp="f.unlock_doc_2 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(2, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_3
[if exp="f.unlock_doc_3 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(3, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_4
[if exp="f.unlock_doc_4 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(4, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_5
[if exp="f.unlock_doc_5 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(5, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_6
[if exp="f.unlock_doc_6 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(6, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_7
[if exp="f.unlock_doc_7 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(7, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_8
[if exp="f.unlock_doc_8 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(8, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_9
[if exp="f.unlock_doc_9 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(9, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_10
[if exp="f.unlock_doc_10 != true"][jump target="*refresh_menu"][endif]
[iscript]
window.menuApplyDocPage(10, 1);
[endscript]
[jump target="*refresh_menu"]

*doc_page_prev
[if exp="tf.menu_doc_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
window.menuStepDocPage(-1);
[endscript]
[jump target="*refresh_menu"]

*doc_page_next
[if exp="tf.menu_doc_selected <= 0"][jump target="*refresh_menu"][endif]
[iscript]
window.menuStepDocPage(1);
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
if (window.menuClearPreviewImage) window.menuClearPreviewImage();
[endscript]
[awakegame]

