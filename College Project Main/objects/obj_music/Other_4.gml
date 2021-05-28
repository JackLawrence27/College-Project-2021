if room = rm_menu
{
	audio_stop_sound(s_music_menu)
	audio_stop_sound(s_music_level_one)
	audio_stop_sound(s_music_boss_battle)
	audio_play_sound(s_music_menu, 1000, true)
}

if room = rm_menu_new
{
	audio_stop_sound(s_music_menu)
	audio_stop_sound(s_music_level_one)
	audio_stop_sound(s_music_boss_battle)
	audio_play_sound(s_music_menu, 1000, true)
}

if room = rm_cutscene_intro
{
	audio_stop_all();
	alarm[0] = 90;
}

if room = rm_cutscene_confront
{
	audio_stop_all();
	audio_play_sound(s_confront_cutscene,1000,false);
}

if(room = rm_one){
	audio_stop_all();
	audio_play_sound(s_music_menu, 1000, true)
	audio_sound_gain(s_music_menu,1,120)
}
if(room = rm_two){
	audio_stop_all();
	audio_play_sound(s_music_level_one, 1000, true)
}

if(room = rm_three){
	audio_stop_all();
	audio_play_sound(s_music_boss_battle, 1000, true)
}