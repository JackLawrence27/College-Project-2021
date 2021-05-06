//Interact Key
keyInteract = keyboard_check(ord("F")) || gamepad_button_check_pressed(0,gp_face4)

if(place_meeting(x,y,obj_player)){
	if(global.canTeleport = true){
	if(keyInteract){
	movePlayer = true;
	global.canTeleport = false;
	}
}
}

if(movePlayer = true){
	with(obj_teleporter_stone_reciever){
		sprite_index = spr_teleport_stone_animation
		image_speed = 0.2;
		if(image_index >= 4){
			image_index = 4;
			teleport = true;
	}
	}
}

if(teleport = true){
	with(obj_player){
		global.playerLocked = true;
		sprite_index = spr_player_teleport;
		image_speed = 1;
		if(image_index >= 39){
		obj_player.x = obj_teleporter_stone.x;
		obj_player.y = obj_teleporter_stone.y;
		global.playerLocked = false;
		with(obj_teleporter_stone_reciever){
			movePlayer = false;
			teleport = false;
			alarm[0] = 60;
			sprite_index = spr_teleport_stone;
			screenShake(6,25);
			}
		}
	}
}

var fadeRange = 16;
var fadeThresh = 32;
var playerDis = distance_to_object( obj_player );

textAlpha = ( fadeThresh + fadeRange - playerDis ) / fadeRange;