if(room = rm_cutscene_intro){
	move_towards_point(6500,y,1.5);	
}

if(room = rm_cutscene_confront){
	if(runAway = true){
		move_towards_point(x-20,y,1.5);
		sprite_index = spr_skeleton_run;
		image_xscale = -1;
	}
}