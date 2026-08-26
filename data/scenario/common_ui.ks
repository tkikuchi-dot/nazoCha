[_tb_system_call storage=system/_common_ui.ks]

[tb_start_tyrano_code]
; ==========================================
; common_ui.ks
; FIX UI 共通初期化
; ==========================================

*init

; 既存ボタンが残っている場合は消してから再配置
[iscript]
$("#root_layer_game [name='ui_status']").remove();
[endscript]

; メニュー画面を開くボタン
[button name="ui_status" role="sleepgame" graphic="MENU.webp" folder="image" x="1100" y="0" width="111" height="49" fix="true" storage="document.ks" target="*start"]

[eval exp="tf.common_ui_created = true"]

[return]

[_tb_end_tyrano_code]

