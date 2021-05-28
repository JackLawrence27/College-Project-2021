//Menu Control Inputs
keyLeft = keyboard_check(vk_down) || keyboard_check(vk_left) || gamepad_button_check(0,gp_shoulderl) || gamepad_button_check(0,gp_padl) || abs(max(gamepad_axis_value(0,gp_axislh),0)) || mouse_wheel_down()
keyRight = keyboard_check(vk_up) || keyboard_check(vk_right) || gamepad_button_check(0,gp_shoulderr) || gamepad_button_check(0,gp_padr) || abs(min(gamepad_axis_value(0,gp_axislh),0)) || mouse_wheel_up();
keyEnter = keyboard_check(vk_enter) || gamepad_button_check(0,gp_face1) || gamepad_button_check(0,gp_face3)
keyEnterReleased = keyboard_check_released(vk_enter) || gamepad_button_check_released(0,gp_face1) || gamepad_button_check_released(0,gp_face3) || mouse_check_button_pressed(mb_left)

if(gamepad_button_check_released(0,gp_face1)) or gamepad_button_check_released(0,gp_face3) or gamepad_button_check(0,gp_shoulderl) or gamepad_button_check(0,gp_shoulderr) or gamepad_button_check(0,gp_padl) or gamepad_button_check(0,gp_padr){
obj_player.controller = 1
}

if(insigniaSelected != 0){
//Scrolling Selector
var dir = 0;
if(keyLeft) { dir -= 1; }

if(keyRight) { dir += 1; }

if (dir == 0){
  holdTime = 0;
} else {
  holdTime++;
  if (holdTime % interval == 1){
    insigniaSelected += dir;
	spriteFrame = 0;
	rotate = 0;
	if(insigniaSelected = 1){ drawScaleWolf = 1; drawScaleOwl = 1;}
	if(insigniaSelected = 2){ drawScaleBear = 1; drawScaleOwl = 1;}
	if(insigniaSelected = 3){ drawScaleBear = 1; drawScaleWolf = 1;}
		
		
    audio_play_sound(s_scroll, 2, false);	
  }
}

if(insigniaSelected <= 0){
	insigniaSelected = 3;	
}

if(insigniaSelected >= 4){
	insigniaSelected = 1;	
}
}


//Bear Overlay Handler 1
if(insigniaSelected = 1){
	drawScaleBear += 0.025;
	bearOverlay += 0.025;
if(bearOverlay >= 0.75){
	bearOverlay = 0.75;
}
if(drawScaleBear >= 1.25){
	drawScaleBear = 1.25;	
}
if(keyEnterReleased){
	global.insigniaSelected = 1;	
	obj_cutscene_tutorial_2.alarm[7] = 60;
	backDimFade = false
}
}

//Wolf Overlay Handler 2
if(insigniaSelected = 2){
	drawScaleWolf += 0.025;
	wolfOverlay += 0.025;
if(wolfOverlay >= 0.75){
	wolfOverlay = 0.75;
}
if(drawScaleWolf >= 1.25){
	drawScaleWolf = 1.25;	
}
if(keyEnterReleased){
	global.insigniaSelected = 2;	
	obj_cutscene_tutorial_2.alarm[8] = 60;
	backDimFade = false
}
}

//Owl Overlay Handler 3
if(insigniaSelected = 3){
	drawScaleOwl += 0.025;
	owlOverlay += 0.025;
if(owlOverlay >= 0.75){
	owlOverlay = 0.75;
}
if(drawScaleOwl >= 1.25){
	drawScaleOwl = 1.25;	
}
if(keyEnterReleased){
	global.insigniaSelected = 3;	
	obj_cutscene_tutorial_2.alarm[9] = 60;
	backDimFade = false
}
}

//Back Dim Controller
if(backDimFade = true){
backDimAlpha += 0.025;

if(backDimAlpha >= 0.6){
	backDimAlpha = 0.6
}
}

if(backDimFade = false){
	insigniaSelected = 0;
	backDimAlpha -= 0.015;
	insigniaAlpha -= 0.015;
if(insigniaAlpha <= 0){
	insigniaAlpha = 0
	instance_destroy();
	global.playerLocked = false;
}	
}

rotate += 0.25;