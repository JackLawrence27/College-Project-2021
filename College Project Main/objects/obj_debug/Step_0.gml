keyDebug = keyboard_check_pressed(vk_f1) || gamepad_button_check_pressed(0,gp_start)

if(keyDebug){
	showDebug = !showDebug	
}


if(keyboard_check_released(vk_f5)){
	game_restart();
}

if(keyboard_check_released(vk_f4)){
	room_restart();
}