//Initial
counterFootsteps = 0; //frames till next walking sound

if(room = rm_cutscene_intro){	
	image_speed = 0.15;
	sprite_index = spr_player_sword_run;
}

if(room = rm_cutscene_confront){
	image_speed = 0.15;
	sprite_index = spr_player_sword_idle_sheathed;
}

if(room = rm_cutscene_tutorial){
	sprite_index = spr_player_get_up;
	image_speed = 0;
}