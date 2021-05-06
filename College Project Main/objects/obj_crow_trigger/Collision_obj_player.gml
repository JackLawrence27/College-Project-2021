if(storyOne = false){
	//global.playerLocked = true;
	instance_create_layer(107,289,"Walls",obj_crow);
	with(obj_player){ sprite_index = spr_player_idle }
	with(obj_camera){ follow = obj_crow }
	instance_create_layer(obj_crow.x,obj_crow.y,"Music",obj_text)
	with(obj_text){ text = "You look lost stranger..." }
	
	//Testing
	storyOne = true;
	with(obj_camera){ follow = obj_player }
}