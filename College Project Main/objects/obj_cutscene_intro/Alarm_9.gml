instance_destroy(obj_text_cutscene_auto);

with(obj_camera_cutscene){
	follow = obj_skeleton_commander_cutscene;
	audio_sound_gain(s_walk,0.20,1);
}

instance_create_layer(x,y,"Music",obj_cutscene_intro_2);
	