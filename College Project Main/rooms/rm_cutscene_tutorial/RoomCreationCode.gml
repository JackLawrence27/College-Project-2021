display_set_gui_size(320,180);
instance_create_layer(x,y,"Music",obj_cutscene_white_fade_out);

audio_play_sound(s_music_menu,1000,true)
audio_sound_gain(s_music_menu,1,120)
audio_sound_gain(s_walk,1,120);
audio_sound_gain(s_punch,1,120);
audio_sound_gain(s_punch_swing,1,120);
audio_sound_gain(s_jump,1,120);
audio_sound_gain(s_skeleton_death,1,120);
audio_sound_gain(s_wolf_cast,1,120);
audio_sound_gain(s_hit_sound,1,120);
audio_sound_gain(s_fire_rest,1,120);