if room = rm_menu
{
	audio_stop_sound(s_music_menu)
	audio_stop_sound(s_music_level_one)
	audio_stop_sound(s_music_boss_battle)
	audio_play_sound(s_music_menu, 1000, true)
}
