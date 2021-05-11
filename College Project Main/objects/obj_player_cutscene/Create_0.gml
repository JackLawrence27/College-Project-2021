//Initial
image_speed = 0.15;
counterFootsteps = 0; //frames till next walking sound

if(room = rm_cutscene_intro){	
	sprite_index = spr_player_sword_run;
}

if(room = rm_cutscene_confront){
	sprite_index = spr_player_sword_idle_sheathed;
}