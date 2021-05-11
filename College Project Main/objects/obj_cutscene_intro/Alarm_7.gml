instance_destroy(obj_text_cutscene_auto);

with(obj_camera_cutscene){
	follow = obj_player_cutscene;
	audio_sound_gain(s_walk,1,1);
}

alarm[8] = 30;