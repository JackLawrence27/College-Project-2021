instance_create_layer(x,y,"Music",obj_fade_out_death)
with(obj_fade_out_death){
	roomDestination = rm_cutscene_intro;
}

audio_sound_gain(s_music_menu, 0, 180);
alarm[4] = 180;