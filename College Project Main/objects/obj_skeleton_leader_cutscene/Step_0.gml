if(sprite_index = spr_skeleton_leader_attack){
	if(image_index = 1){
	audio_play_sound(s_punch_swing,1000,false);	
	}
	if(image_index = 3){
	audio_play_sound(s_hit_sound,1000,false)
	screenShakeCut(5,15)
	}
	if(image_index >= 5){
		sprite_index = spr_skeleton_leader_idle;
		obj_player_cutscene.alarm[1] = 5;
		instance_create_layer(x,y,"Music",obj_cutscene_confront_2);
		obj_cutscene_confront_2.alarm[0] = 180;
	}
}