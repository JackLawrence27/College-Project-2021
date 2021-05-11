if(room = rm_cutscene_intro){
	move_towards_point(6500,y,1.5);	
}

if(room = rm_cutscene_confront){

	if(sprite_index = spr_player_sword_draw){
		if(image_index >= 3){
			sprite_index = spr_player_sword_idle
			obj_skeleton_leader_cutscene.alarm[0] = 60;
		}
		}
		if(sprite_index = spr_player_sword_death){
			if(image_index >= 6){
				image_index = 6;
				image_speed = 0;
			}
		}
		if(sprite_index = spr_player_shatter){		
			if(image_index >= 118){
				image_index = 118;
				image_speed = 0;
				
			}
		}
}

//if(counterFootsteps==0){
//	p=random_range(.9,1.1);
//	audio_sound_pitch(s_walk, p);
//    audio_play_sound(s_walk, 2, false);
//	counterFootsteps = 16;
//}
//else if (counterFootsteps>0) counterFootsteps--;
