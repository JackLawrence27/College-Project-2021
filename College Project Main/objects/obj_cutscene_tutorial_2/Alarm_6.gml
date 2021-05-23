///@description Insignia Popup
instance_destroy(obj_text_cutscene_auto);

//with(obj_camera_cutscene){
//	follow = obj_player_cutscene;
//}

instance_create_layer(x,y,"Music",obj_blackbar_controller_reverse);

instance_create_layer(x,y,"Music",obj_insignia_controller);

instance_create_layer(obj_player_cutscene.x,obj_player_cutscene.y,"Player",obj_player);
instance_create_layer(obj_camera_cutscene.x,obj_camera_cutscene.y,"Player",obj_camera);

global.playerLocked = true;

instance_destroy(obj_player_cutscene);
instance_destroy(obj_camera_cutscene);

with(obj_camera){
	follow = obj_crow;
}