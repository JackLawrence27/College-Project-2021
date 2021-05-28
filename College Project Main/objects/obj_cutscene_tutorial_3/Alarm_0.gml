with(obj_camera){
	follow = obj_crow;
}

with(obj_player){
	state_set_sprite(spr_player_idle,0.2,0);
}

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "You'll be ready to take on Requiem's\nforces. Practice your attacks before heading east!\nC/SELECT = CONTROLS";
	pitch = 1.2;
}

global.playerLocked = true;


alarm[1] = 640;