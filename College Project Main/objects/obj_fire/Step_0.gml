keyInteract = keyboard_check(ord("F")) || gamepad_button_check_pressed(0,gp_face4)

var fadeRange = 16;
var fadeThresh = 32;
var playerDis = distance_to_object( obj_player );

textAlpha = ( fadeThresh + fadeRange - playerDis ) / fadeRange;

if(keyInteract) && (place_meeting(x,y,obj_player)) && (global.playerLocked = false) && (room != rm_cutscene_tutorial) && (resting != true) {
	resting = true;
	with(obj_player){
		attacking = true;
		canAttack = false;
		state_set_sprite(spr_player_crouch,0.2,0);
		movespeed = 0;
		hsp = 0;
	}
	alarm[0] = 120;
}

if(keyInteract) && (room = rm_cutscene_tutorial) && (global.playerLocked = false) && (resting != true) && (!instance_exists(obj_cutscene_tutorial_3)){
	resting = true;
	with(obj_player){
		attacking = true;
		canAttack = false;
		state_set_sprite(spr_player_crouch,0.2,0);
		movespeed = 0;
		hsp = 0;
	}
	alarm[1] = 120;		
}