display_set_gui_size(320,180);
instance_create_layer(x,y,"Music",obj_fade_in_alive);

global.playerLocked = false;
global.skeletonLocked = false;

if(global.playerRoom = rm_three) && (global.playerXSave != 0) && (global.playerYSave != 0){
	instance_create_layer(global.playerXSave,global.playerYSave,"Player",obj_player);
	instance_create_layer(global.playerXSave,global.playerYSave,"Player",obj_camera);
} else {
	global.playerXSave = 0;
	global.playerYSave = 0;
	global.playerRoom = room;
	instance_create_layer(67,296,"Player",obj_player);
	instance_create_layer(67,296,"Player",obj_camera);
}

