/// @description Pause Menu
//Menu Control Inputs
keyUp = keyboard_check(vk_down) || gamepad_button_check(0,gp_shoulderrb) || gamepad_button_check(0,gp_padd) || abs(max(gamepad_axis_value(0,gp_axislv),0)) || mouse_wheel_down();
keyDown = keyboard_check(vk_up) || gamepad_button_check(0,gp_shoulderlb) || gamepad_button_check(0,gp_padu) || abs(min(gamepad_axis_value(0,gp_axislv),0)) || mouse_wheel_up();
keyEnter = keyboard_check(vk_enter) || gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face3)
keyEnterReleased = keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1) || gamepad_button_check_released(0,gp_face3)
keyMouseLeft = mouse_check_button_pressed(mb_left)
keyPause = keyboard_check_pressed(vk_escape);

if(keyPause){
	if(!global.pause){
		global.pause = true;
		global.skeletonLocked = true;
		global.playerLocked = true;
		with(obj_player){ image_speed = 0; }
		with(obj_skeleton){ image_speed = 0; }
		instance_create_layer(x,y,"Music",obj_menu_pause_elements);
		instance_create_layer(x,y,"Music",obj_menu_pause_background);
	} else {
		global.pause = false;
		global.skeletonLocked = false;
		global.playerLocked = false;
		with(obj_player){ image_speed = 0.2; }
		with(obj_skeleton){ image_speed = 0.15; }
		instance_destroy(obj_menu_pause_elements);
		instance_destroy(obj_menu_pause_background);
	}
}


//Scrolling Selector
var dir = 0;
if(keyDown) { dir -= 1; }

if(keyUp) { dir += 1; }

if (dir == 0){
  holdTime = 0;
} else {
  holdTime++;
  if (holdTime % interval == 1){
    selected += dir;

    audio_play_sound(s_scroll, 2, false);	
  }
}

#region MAIN MENU
//Main Menu
if(menu = 1){
	
if(selected = 0){
	if(keyEnterReleased)
	{ 
		alarm[1] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	with(obj_menu_pause_elements){
		drawXscaleResume = 1.2;
		drawYscaleResume = 1.2;
	}		
}

if(selected = 1){
	if(keyEnterReleased)
	{ 
		alarm[2] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	with(obj_menu_pause_elements){
		drawXscaleMenu = 1.2;
		drawYscaleMenu = 1.2;
	}		
}

if(selected = 2){
	if(keyEnterReleased)
	{ 
		alarm[3] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	with(obj_menu_pause_elements){
		drawXscaleQuit = 1.2;
		drawYscaleQuit = 1.2;
	}	
}

//Can't scroll over the amount of selectable menu items
if(selected >= 3){
	selected = 0
}

if(selected <= -1){
	selected = 2
}
}
#endregion