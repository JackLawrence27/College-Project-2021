display_set_gui_size(320,180);
instance_create_layer(x,y,"Music",obj_fade_in_alive);

global.playerLocked = false;
global.skeletonLocked = false;

if(global.playerRoom = rm_two) && (global.playerXSave != 0) && (global.playerYSave != 0){
	instance_create_layer(global.playerXSave,global.playerYSave,"Player",obj_player);
	instance_create_layer(global.playerXSave,global.playerYSave,"Player",obj_camera);
} else {
	if(global.previeousRoom = rm_three){
	global.playerXSave = 1467;
	global.playerYSave = 1429;
	global.playerRoom = room;	
	instance_create_layer(1440,429,"Player",obj_player);
	with(obj_player){ image_xscale = -1; }
	instance_create_layer(1440,429,"Player",obj_camera);
	} else {
	global.playerXSave = 0;
	global.playerYSave = 0;
	global.playerRoom = room;
	instance_create_layer(67,296,"Player",obj_player);
	instance_create_layer(67,296,"Player",obj_camera);
	}
}