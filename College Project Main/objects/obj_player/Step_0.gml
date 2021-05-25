if(global.playerLocked = true) exit;

//Player Inputs
if(!attacking){
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
}
keyAttack = mouse_check_button(mb_left) || gamepad_button_check(0,gp_face3)
keyCast = mouse_check_button_released(mb_right) || gamepad_button_check(0,gp_face2)

//Change sprite to idle
if(!keyboard_check(vk_anykey) && canAttack){
	sprite_index = spr_player_idle;
}

//Checking if a controller is being used
if(abs(gamepad_axis_value(0,gp_axislh)) > 0.85) && (abs(gamepad_axis_value(0,gp_axislh)) <= 1)
{
	keyLeft = abs(min(gamepad_axis_value(0,gp_axislh),0));
	keyRight = max(gamepad_axis_value(0,gp_axislh),0);
	controller = 1;
} else if(keyboard_check(vk_anykey)) {
	controller = 0;
}

if(!attacking){
//Flipping image axis
if(keyLeft){ image_xscale = -1; }
if(keyRight){ image_xscale = 1; }


//Movement
move = keyRight - keyLeft;

if !(move = 0) //If we are pressing left or right
{
    hsp = movespeed * move; //Set our horizontal speed to our movespeed
	
	if(grounded) { walking = true; }
}
else if(move = 0){
	hsp = 0
	walking = false
}

vsp += grv; //Add gravity to our vertical speed

if place_meeting(x,y+1,obj_wall) grounded = true; else grounded = false //Checking if grounded

//Animation Controller
if(grounded) && (move != 0) && (!attacking){
	sprite_index = spr_player_run;
	image_speed = 0.20;
} else if(grounded) && (move = 0) && (!attacking){
	sprite_index = spr_player_idle;
	image_speed = 0.20;
}


//Jump
canJump -= 1;
if (keyUp) and (canJump > 0) //If we're on the ground and the jump key was pressed
{
	canJump = 0;
	walking = false;
	created = false;
    vsp -= jumpspeed; //Move us up by our jumpspeed
	audio_play_sound(s_jump,1000,false)
}

//Jump Particles
if(!place_meeting(x,y+1,obj_wall)){
	sprite_index = spr_player_fall;
	image_speed = 0.2;
	if(image_index >= 3){ image_index = 3; }
	if(sign(vsp) < 0) sprite_index = spr_player_jump;
} else {
	canJump = 10;
	if(sprite_index == spr_player_run) && (created = false) or (sprite_index == spr_player_idle) && (created = false)
	{
	repeat(5){
		with instance_create_layer(x,bbox_bottom,"Instances",obj_dust)
		{
			vsp = 0;
		}

		created = true
	}
}
}

if(!grounded){
walking = false;	
}

if(!attacking){
if (walking=true) and (counterFootsteps==0){
	p=random_range(.9,1.1);
	audio_sound_pitch(s_walk, p);
    audio_play_sound(s_walk, 2, false);
	counterFootsteps = 16;
}
else if (counterFootsteps>0) counterFootsteps--;
}

} //Attacking Bracket
scr_collision();

//Ojbective complete
if (coins == 4)
{
	room_goto(rm_2);
}

if(keyAttack) && (canAttack) && (grounded){
	hsp = 0;
	movespeed = 0;
	attackCount += 1;
	attacking = true;
	canAttack = false;
	if(attackCount = 1){
	state_set_sprite(spr_player_punch_1,0.2,0)	
	instance_create_layer(x,y,"Music",obj_player_hitbox_1);
	}
	if(attackCount = 2){
	state_set_sprite(spr_player_punch_2,0.2,0)	
	instance_create_layer(x,y,"Music",obj_player_hitbox_1);
	}
	if(attackCount = 3){
	state_set_sprite(spr_player_punch_3,0.2,0)
	instance_create_layer(x,y,"Music",obj_player_hitbox_1);
	alarm[4] = 30;
	}
	alarm[2] = 30;
	alarm[3] = 40;
}



////Attack Combo
//if (keyAttack && canAttack && grounded){
//	hsp = 0;
//	movespeed = 0;
//	attacking = true;
//	canAttack = false;
//	if(sprite_index != spriteAttack[combo]){
//		image_index = 0;
//		sprite_index = spriteAttack[combo];
//	}
//	instance_create_layer(x,y,"Grass",hitbox[combo])
	
//	combo = (combo+1)%comboMax;
//	alarm[0] = 30;
//	alarm[1] = 45;
//}

//Cast
if(keyCast) && (canAttack) && (global.playerInsigniaCharge = 1) && (!keyboard_check(vk_anykey)) && (grounded) && (global.insigniaSelected != 0){
	attacking = true;
	canAttack = false;
	global.playerInsigniaCharge = 0;
	if(global.insigniaSelected = 1){ //Bear
	
}
	if(global.insigniaSelected = 2){ //Wolf
		instance_create_layer(x,y,"Music",obj_player_hitbox_wolf_cast);
		audio_play_sound(s_wolf_cast,1000,false);
		state_set_sprite(spr_player_wolf_cast,0.2,0)
		alarm[2] = 60;
		obj_hud_insignia_controller.cooldown = true;
		global.playerInsigniaCharge = 0;
		obj_hud_insignia_controller.alarm[1] = 60;
}
	if(global.insigniaSelected = 3){ //Owl
		instance_create_layer(x,y,"Music",obj_player_hitbox_owl_cast);
		//audio_play_sound(s_wolf_cast,1000,false);
		state_set_sprite(spr_player_owl_cast,0.2,0)
		alarm[2] = 60;
		obj_hud_insignia_controller.cooldown = true;
		global.playerInsigniaCharge = 0;
		obj_hud_insignia_controller.alarm[1] = 60;	
	
	}
	
}

#region PREVENT BEING STUCK IN WALLS
if(place_meeting(x,y,obj_wall)){
	for(var i = 0; i < 1000; ++i) {
		//RIGHT
		if(!place_meeting(x + i, y, obj_wall)){
			x += i;
			break;
		}
		//LEFT
		if(!place_meeting(x - i, y, obj_wall)){
			x -= i;
			break;
		}
		//UP
		if(!place_meeting(x, y - i, obj_wall)){
			y -= i;
			break;
		}
		//DOWN
		if(!place_meeting(x, y - i, obj_wall)){
		y += i;
		break;
		}
		//TOP RIGHT
		if(!place_meeting(x + i, y - i, obj_wall)){
		x += i;
		y -= i;
		break;
		}
		//TOP LEFT
		if(!place_meeting(x - i, y - i, obj_wall)){
		x -= i;
		y -= i;
		break;
		}
		//BOTTOM RIGHT
		if(!place_meeting(x + i, y + i, obj_wall)){
		x += i;
		y += i;
		break;
		}		
		//BOTTOM LEFT
		if(!place_meeting(x - i, y + i, obj_wall)){
		x -= i;
		y += i;
		break;
		}	
	}
}
#endregion
