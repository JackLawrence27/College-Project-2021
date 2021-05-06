/// @description Menu Controller 
//Menu Control Inputs
keyUp = keyboard_check(vk_down) || gamepad_button_check(0,gp_shoulderrb) || gamepad_button_check(0,gp_padd) || abs(max(gamepad_axis_value(0,gp_axislv),0));
keyDown = keyboard_check(vk_up) || gamepad_button_check(0,gp_shoulderlb) || gamepad_button_check(0,gp_padu) || abs(min(gamepad_axis_value(0,gp_axislv),0));
keyEnter = keyboard_check(vk_enter) || gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face3)
keyEnterReleased = keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1) || gamepad_button_check_released(0,gp_face3)
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
	scr_move_start()
	
if(selected = 0){
	if(keyEnterReleased)
	{ 
		alarm[1] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	if(keyMouseLeft) && (obj_mainmenu_play.canLeftClick = true) 
	{
		alarm[1] = 10;
		audio_play_sound(AdvanceSound, 2, false);
	}
	with(obj_mainmenu_play){
		sprite_index = spr_mainmenu_play_selected;
		drawXscale = 1.2;
		drawYscale = 1.2;
		
	}		
} else {
	with(obj_mainmenu_play){
		sprite_index = spr_mainmenu_play;
	}	
}

if(selected = 1){
	with(obj_mainmenu_options){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}

if(selected = 2){
	with(obj_mainmenu_credits){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}

if(selected = 3){
	if(keyEnterReleased){ game_end(); }
	if(keyMouseLeft) && (obj_mainmenu_quit.canLeftClick = true) { game_end(); }
	with(obj_mainmenu_quit){
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
#region LEVEL SELECT
if(menu = 2){
	scr_move_main_menu_off();
	scr_move_level_select_on();
if(selected = 0){
	if(keyEnterReleased){
		instance_create_layer(x,y,"Instances",obj_fade_out)
			with(obj_fade_out){
				roomDestination = rm_1
				   audio_play_sound(AdvanceSound, 2, false);
				
			}	
}

	if(keyMouseLeft) && (obj_mainmenu_level_1.canLeftClick = true){ 
		instance_create_layer(x,y,"Instances",obj_fade_out)
			with(obj_fade_out){
				roomDestination = rm_1
				audio_play_sound(AdvanceSound, 2, false);
			}	
	}
	with(obj_mainmenu_level_1){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}
if(selected = 1){
	if(keyEnterReleased){
		instance_create_layer(x,y,"Instances",obj_fade_out)
			with(obj_fade_out){
				roomDestination = rm_3
				
			}	
}

	if(keyMouseLeft) && (obj_mainmenu_level_2.canLeftClick = true){ 
		instance_create_layer(x,y,"Instances",obj_fade_out)
			with(obj_fade_out){
				roomDestination = rm_3
			}	
	}
	with(obj_mainmenu_level_2){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}
if(selected = 2){
	with(obj_mainmenu_level_3){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}
if(selected = 3){
	with(obj_mainmenu_level_4){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}
if(selected = 4){
	with(obj_mainmenu_level_5){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}
if(selected = 5){
	with(obj_mainmenu_level_6){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}
if(selected = 6){
	with(obj_mainmenu_level_7){
		drawXscale = 1.2;
		drawYscale = 1.2;
	}
}

if(selected >= 7){
	selected = 0
}

if(selected <= -1){
	selected = 6
}

}

#endregion