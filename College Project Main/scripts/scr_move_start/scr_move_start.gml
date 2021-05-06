// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_start(){

with(obj_mainmenu_title){ 
			if point_distance(x,y,131,90) > 2 {
			move_towards_point(131,90,6)		 
		} else {
		x = 131
		y = 90
		move_towards_point(131,90,0)
		}
	}
	
with(obj_mainmenu_play){ 
			if point_distance(x,y,112,154) > 2 {
			move_towards_point(112,154,6)		 
		} else {
		x = 112
		y = 154
		move_towards_point(112,154,0)
		}
	}
	
with(obj_mainmenu_options){ 
		if point_distance(x,y,96,194) > 2 {
		move_towards_point(96,194,6)		 
	} else {
	x = 96
	y = 194
	move_towards_point(96,194,0)
	}
}

with(obj_mainmenu_credits){ 
		if point_distance(x,y,96,234) > 2 {
		move_towards_point(96,234,6)		 
	} else {
	x = 96
	y = 234
	move_towards_point(96,234,0)
	}
}

with(obj_mainmenu_quit){ 
		if point_distance(x,y,72,274) > 2 {
		move_towards_point(72,274,6)		 
	} else {
	x = 72
	y = 274
	move_towards_point(72,274,0)
	}
}
}