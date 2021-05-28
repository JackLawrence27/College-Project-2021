keyInteract = keyboard_check(ord("F")) || gamepad_button_check_pressed(0,gp_face4)

if(sprite_index = spr_crow_appear){
	if(image_index >= 59){
		sprite_index = spr_crow
		image_speed = 0.2;

	}
} else {
	//	
}

if(!instance_exists(obj_wall_cutscene)) && (insigniaRechoose = false){
if(keyInteract) && (place_meeting(x,y,obj_player)) && (global.playerLocked = false){
	instance_create_layer(x,y,"Music",obj_insignia_controller_rechoose)
	insigniaRechoose = true;
	with(obj_player){
		global.playerLocked = true;
		state_set_sprite(spr_player_idle,0.2,0)
	}
}
}

var fadeRange = 16;
var fadeThresh = 32;
var playerDis = distance_to_object( obj_player );

textAlpha = ( fadeThresh + fadeRange - playerDis ) / fadeRange;
