/// @description Draw Sprite
draw_sprite_ext(sprite_index,image_index,x,y,drawXscale,drawYscale,image_angle,image_blend,image_alpha);

//Draw Attributes
draw_set_font(f_level_info)
draw_set_halign(fa_center)

draw_text(x,y-119,levelTitle)

if(showLocked = true){
	draw_text(x,y,"UNLOCK TO REVEAL\nOBJECTIVES")
} else if(showLocked = false){

}


//Reset draw for other objects
draw_set_halign(fa_left)
draw_set_font(f_main)