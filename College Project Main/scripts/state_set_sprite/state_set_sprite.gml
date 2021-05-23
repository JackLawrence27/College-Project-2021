//@arg sprite
//@arg speed
//@arg index
function state_set_sprite(){
if(sprite_index != argument0){
	sprite_index = argument0;
	image_speed = argument1;
	image_index = argument2;
}
}