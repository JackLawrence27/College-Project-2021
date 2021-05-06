/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//If mouse is being used rather than keyboard or gamepad
if (position_meeting(mouse_x, mouse_y, obj_mainmenu_play)){
	canLeftClick = true;
	with(obj_mainmenu_controller){
		selected = 0;
	}
} else {
	canLeftClick = false;
}
