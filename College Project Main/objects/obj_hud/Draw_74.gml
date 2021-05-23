display_set_gui_size(320,180)

//Draw Health
draw_sprite_ext(spr_hud_health,global.playerHealth,55,16,drawXscale,drawYscale,0,c_white,1)

//Draw insignia Back
draw_sprite_ext(spr_hud_insignia,0,22,16,drawXscaleInsignia,drawYscaleInsignia,0,c_white,1)

//Draw insignia Front
draw_sprite_ext(spr_hud_insignia,global.insigniaSelected,22,16,drawXscaleInsignia,drawXscaleInsignia,0,c_white,insigniaDrawAlpha)
draw_set_alpha(1)