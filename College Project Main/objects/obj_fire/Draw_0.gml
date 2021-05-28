draw_self();

if(room = rm_cutscene_tutorial) && (instance_exists(obj_hud)) && (global.playerHealth != global.playerHealthMax){
draw_set_alpha(textAlpha)
draw_set_halign(fa_center)
draw_set_font(f_main)
if(instance_exists(obj_player)){
if(obj_player.controller = 0){ draw_text(x,y-25,"F") }
if(obj_player.controller = 1){ draw_text(x,y-25,"Y") }
}
draw_set_halign(fa_left)
draw_set_font(f_main)
draw_set_alpha(1)
}

if(room != rm_cutscene_tutorial){
draw_set_alpha(textAlpha)
draw_set_halign(fa_center)
draw_set_font(f_main)
if(instance_exists(obj_player)){
if(obj_player.controller = 0){ draw_text(x,y-25,"F") }
if(obj_player.controller = 1){ draw_text(x,y-25,"Y") }
}
draw_set_halign(fa_left)
draw_set_font(f_main)
draw_set_alpha(1)
}