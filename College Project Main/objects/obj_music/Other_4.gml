if room = rm_menu
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

