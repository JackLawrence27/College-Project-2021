draw_self();
draw_set_alpha(textAlpha)
draw_set_halign(fa_center)
if(instance_exists(obj_player)){
if(obj_player.controller = 0){ draw_text(x,y-24,"F") }
if(obj_player.controller = 1){ draw_text(x,y-24,"Y") }
}
draw_set_halign(fa_left)
draw_set_alpha(1)