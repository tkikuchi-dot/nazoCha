[_tb_system_call storage=system/_modal_status.ks]

*start

[cm  ]
[freeimage layer="1" page="fore"]

[tb_image_show  time="0"  storage="default/tanaka.webp"  width="1200"  height="800"  ]
[button  graphic="btn_return.webp"  x="1060"  y="560"  target="*close_modal"  storage=""  ]
[s  ]
*close_modal

[cm  ]
[freeimage layer="1" page="fore"]

[call  storage="title_screen.ks"  target="*draw_title_buttons"  ]
[return  ]
