if(global.levelFourUnlocked = true){
draw_sprite_ext(sprite_index,image_index,x,y,drawXscale,drawYscale,image_angle,image_blend,image_alpha);
} else if(global.levelFourUnlocked = false) {
draw_sprite_ext(sprite_index,image_index,x,y,drawXscale,drawYscale,image_angle,c_black,0.7);
}