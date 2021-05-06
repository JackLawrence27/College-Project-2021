if(global.playerLocked = true) exit;
//Player Inputs
if(!attacking){
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyUp = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
}
keyAttack = mouse_check_button(mb_left) || gamepad_button_check(0,gp_face3)

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
if(grounded) && (move != 0){
	sprite_index = spr_player_run;
	image_speed = 0.20;
} else if(grounded) && (move = 0){
	sprite_index = spr_player_idle;
	image_speed = 0.20;
}


//Jump
if (keyUp) and (grounded) //If we're on the ground and the jump key was pressed
{
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

//Attack Combo
//Attack Combo
if (keyAttack && canAttack && grounded){
	hsp = 0;
	movespeed = 0;
	attacking = true;
	canAttack = false;
	image_index = 0;
	sprite_index = spriteAttack[combo];
	instance_create_layer(x,y,"Grass",hitbox[combo])
	
	combo = (combo+1)%comboMax;
	alarm[0] = 30;
	alarm[1] = 45;
}