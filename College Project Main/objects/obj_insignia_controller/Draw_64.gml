display_set_gui_size(320,180);

draw_sprite_ext(spr_back_dim,0,0,0,1,1,0,c_white,backDimAlpha);



if(insigniaSelected = 1){ //Bear
//
draw_set_halign(fa_center);
draw_set_font(f_main);
draw_text_color(70,137,"BEAR",c_white,c_white,c_white,c_white,1);
draw_text_color(70,137,"BEAR",brown,brown,brown,brown,0.75);

draw_text_color(70,145,"ELEMENT: EARTH",c_white,c_white,c_white,c_white,1);
draw_text_color(70,145,"ELEMENT: EARTH",brown,brown,brown,brown,0.75);

if(obj_player.controller = 0){
draw_text_color(70,153,"> ENTER <",c_white,c_white,c_white,c_white,1);
draw_text_color(70,153,"> ENTER <",brown,brown,brown,brown,0.75);
}

if(obj_player.controller = 1){
draw_text_color(70,153,"> A/X <",c_white,c_white,c_white,c_white,1);
draw_text_color(70,153,"> A/X <",brown,brown,brown,brown,0.75);
}



draw_set_font(f_main);
draw_set_halign(fa_left);
//
draw_sprite_ext(spr_insignia_bear,0,70,90,drawScaleBear,drawScaleBear,0,c_white,1);
draw_sprite_ext(spr_insignia_inner_spinner,0,70,90,drawScaleBear,drawScaleBear,rotate,c_white,1);
//	
draw_sprite_ext(spr_insignia_bear,0,70,90,drawScaleBear,drawScaleBear,0,brown,bearOverlay);
draw_sprite_ext(spr_insignia_inner_spinner,0,70,90,drawScaleBear,drawScaleBear,rotate,brown,bearOverlay);
} else if(insigniaSelected != 0) {
//
draw_sprite_ext(spr_insignia_bear,0,70,90,1,1,0,c_white,0.6);
draw_sprite_ext(spr_insignia_inner_spinner,0,70,90,1,1,0,c_white,0.6);	
}

if(insigniaSelected = 2){ //Wolf
//
draw_set_halign(fa_center);
draw_set_font(f_main);
draw_text_color(160,137,"WOLF",c_white,c_white,c_white,c_white,1);
draw_text_color(160,137,"WOLF",orange,orange,orange,orange,0.75);

draw_text_color(160,145,"ELEMENT: FIRE",c_white,c_white,c_white,c_white,1);
draw_text_color(160,145,"ELEMENT: FIRE",orange,orange,orange,orange,0.75);

if(obj_player.controller = 0){
draw_text_color(160,153,"> ENTER <",c_white,c_white,c_white,c_white,1);
draw_text_color(160,153,"> ENTER <",orange,orange,orange,orange,0.75);
}

if(obj_player.controller = 1){
draw_text_color(160,153,"> A/X <",c_white,c_white,c_white,c_white,1);
draw_text_color(160,153,"> A/X <",orange,orange,orange,orange,0.75);
}

draw_set_font(f_main);
draw_set_halign(fa_left);
//
draw_sprite_ext(spr_insignia_wolf,0,160,90,drawScaleWolf,drawScaleWolf,0,c_white,1);
draw_sprite_ext(spr_insignia_inner_spinner,0,160,90,drawScaleWolf,drawScaleWolf,rotate,c_white,1);
//
draw_sprite_ext(spr_insignia_wolf,0,160,90,drawScaleWolf,drawScaleWolf,0,orange,wolfOverlay);
draw_sprite_ext(spr_insignia_inner_spinner,0,160,90,drawScaleWolf,drawScaleWolf,rotate,orange,wolfOverlay);
} else if(insigniaSelected != 0) {
//
draw_sprite_ext(spr_insignia_wolf,0,160,90,1,1,0,c_white,0.6);
draw_sprite_ext(spr_insignia_inner_spinner,0,160,90,1,1,0,c_white,0.6);	
}

if(insigniaSelected = 3){ //Owl
//
draw_set_halign(fa_center);
draw_set_font(f_main);
draw_text_color(250,137,"OWL",c_white,c_white,c_white,c_white,1);
draw_text_color(250,137,"OWL",green,green,green,green,0.75);

draw_text_color(250,145,"ELEMENT: WIND",c_white,c_white,c_white,c_white,1);
draw_text_color(250,145,"ELEMENT: WIND",green,green,green,green,0.75);

if(obj_player.controller = 0){
draw_text_color(250,153,"> ENTER <",c_white,c_white,c_white,c_white,1);
draw_text_color(250,153,"> ENTER <",green,green,green,green,0.75);
}

if(obj_player.controller = 1){
draw_text_color(250,153,"> A/X <",c_white,c_white,c_white,c_white,1);
draw_text_color(250,153,"> A/X <",green,green,green,green,0.75);
}

draw_set_font(f_main);
draw_set_halign(fa_left);
//
draw_sprite_ext(spr_insignia_owl,0,250,90,drawScaleOwl,drawScaleOwl,0,c_white,1);
draw_sprite_ext(spr_insignia_inner_spinner,0,250,90,drawScaleOwl,drawScaleOwl,rotate,c_white,1);
//
draw_sprite_ext(spr_insignia_owl,0,250,90,drawScaleOwl,drawScaleOwl,0,green,owlOverlay);
draw_sprite_ext(spr_insignia_inner_spinner,0,250,90,drawScaleOwl,drawScaleOwl,rotate,green,owlOverlay);
} else if(insigniaSelected != 0) {
//
draw_sprite_ext(spr_insignia_owl,0,250,90,1,1,0,c_white,0.6);
draw_sprite_ext(spr_insignia_inner_spinner,0,250,90,1,1,0,c_white,0.6);	
}

if(insigniaSelected = 0){
	
draw_sprite_ext(spr_insignia_bear,0,70,90,1,1,0,c_white,insigniaAlpha);
draw_sprite_ext(spr_insignia_inner_spinner,0,70,90,1,1,0,c_white,insigniaAlpha);	

draw_sprite_ext(spr_insignia_wolf,0,160,90,1,1,0,c_white,insigniaAlpha);
draw_sprite_ext(spr_insignia_inner_spinner,0,160,90,1,1,0,c_white,insigniaAlpha);

draw_sprite_ext(spr_insignia_owl,0,250,90,1,1,0,c_white,insigniaAlpha);
draw_sprite_ext(spr_insignia_inner_spinner,0,250,90,1,1,0,c_white,insigniaAlpha);
	
}

