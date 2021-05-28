/// @description Menu Controller 
//Menu Control Inputs
keyUp = keyboard_check(vk_down) || gamepad_button_check(0,gp_shoulderrb) || gamepad_button_check(0,gp_padd) || abs(max(gamepad_axis_value(0,gp_axislv),0)) || mouse_wheel_down();
keyDown = keyboard_check(vk_up) || gamepad_button_check(0,gp_shoulderlb) || gamepad_button_check(0,gp_padu) || abs(min(gamepad_axis_value(0,gp_axislv),0)) || mouse_wheel_up();
keyEnter = keyboard_check(vk_enter) || gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face3)
keyEnterReleased = keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1) || gamepad_button_check_released(0,gp_face3) || mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)
keyMouseLeft = mouse_check_button_pressed(mb_left)
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
	if(keyMouseLeft) && (obj_menu_play.canLeftClick = true) 
	{
		alarm[1] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	with(obj_menu_play){
		sprite_index = spr_menu_play;
		drawXscale = 1.2;
		drawYscale = 1.2;
		
	}		
} else {
	with(obj_menu_play){
		sprite_index = spr_menu_play;
	}	
}

if(selected = 1){
	if(keyEnterReleased)
	{ 
		alarm[3] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	if(keyMouseLeft) && (obj_menu_start_without.canLeftClick = true) 
	{
		alarm[3] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	with(obj_menu_start_without){
		sprite_index = spr_menu_start_without;
		drawXscale = 1.2;
		drawYscale = 1.2;
		
	}		
} else {
	with(obj_menu_start_without){
		sprite_index = spr_menu_start_without;
	}	
}

if(selected = 2){
	if(keyEnterReleased){ alarm[5] = 10; }
	if(keyMouseLeft) && (obj_menu_credits.canLeftClick = true) { alarm[5] = 10; }
	with(obj_menu_credits){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}	
}

if(selected = 3){
	if(keyEnterReleased){ game_end(); }
	if(keyMouseLeft) && (obj_menu_quit.canLeftClick = true) { game_end(); }
	with(obj_menu_quit){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}	
}

//Can't scroll over the amount of selectable menu items
if(selected >= 4){
	selected = 0
}

if(selected <= -1){
	selected = 3
}
}
#endregion

if (pulse = true){
	with(obj_menu_title){
		drawXscale = 1.1;	
		drawYscale = 1.1;	
	}	
	alarm[0] = 90;
	pulse = false
}	