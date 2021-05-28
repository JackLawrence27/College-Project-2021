instance_destroy(obj_text_cutscene_auto);

instance_destroy(obj_wall_cutscene);

instance_create_layer(x,y,"Music",obj_menu_pause);
instance_create_layer(x,y,"Music",obj_menu_pause_controls);

global.playerLocked = false;

with(obj_camera){
	follow = obj_player;
}

instance_destroy();