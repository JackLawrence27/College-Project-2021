///@description Insignia Popup
instance_destroy(obj_text_cutscene_auto);

with(obj_camera_cutscene){
	follow = obj_player_cutscene;
}

instance_create_layer(x,y,"Music",obj_blackbar_controller_reverse);

instance_create_layer(x,y,"Music",obj_insignia_controller);