if(place_meeting(x,y,obj_player)) && (transition != true){
	transition = true;
	global.playerLocked = true;
	global.skeletonLocked = true;
	global.playerXSave = 0;
	global.playerYSave = 0;
	instance_create_layer(x,y,"Music",obj_fade_out_death);
	alarm[0] = 120;
}