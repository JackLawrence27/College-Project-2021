/// @description Pause Menu
//Menu Control Inputs
keyPause = keyboard_check_pressed(ord("C")) || gamepad_button_check_released(0,gp_select);

if(keyPause) && (!instance_exists(obj_insignia_controller)) && (!instance_exists(obj_insignia_controller_rechoose)) && (!instance_exists(obj_menu_pause_elements)){
	if(!global.pause){
		global.pause = true;
		global.skeletonLocked = true;
		global.playerLocked = true;
		with(obj_player){ image_speed = 0; }
		with(obj_skeleton){ image_speed = 0; }
		instance_create_layer(x,y,"Music",obj_menu_pause_background_controls);
	} else {
		global.pause = false;
		global.skeletonLocked = false;
		global.playerLocked = false;
		with(obj_player){ image_speed = 0.2; }
		with(obj_skeleton){ image_speed = 0.15; }
		instance_destroy(obj_menu_pause_background_controls);
	}
}