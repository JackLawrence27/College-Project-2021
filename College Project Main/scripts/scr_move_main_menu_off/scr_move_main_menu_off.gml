// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_main_menu_off(){
	
with(obj_mainmenu_title){ 
			if point_distance(x,y,131,90+400) > 2 {
			move_towards_point(131,90+400,18)		 
		} else {
		x = 131
		y = 90+400
		move_towards_point(131,90+400,0)
		}
	}

with(obj_mainmenu_play){ 
			if point_distance(x,y,112,154+400) > 2 {
			move_towards_point(112,154+400,18)		 
		} else {
		x = 112
		y = 154+400
		move_towards_point(112,154+400,0)
		}
	}
	
with(obj_mainmenu_options){ 
		if point_distance(x,y,96,194+400) > 2 {
		move_towards_point(96,194+400,18)		 
	} else {
	x = 96
	y = 194+400
	move_towards_point(96,194+400,0)
	}
}

with(obj_mainmenu_credits){ 
		if point_distance(x,y,96,234+400) > 2 {
		move_towards_point(96,234+400,18)		 
	} else {
	x = 96
	y = 234+400
	move_towards_point(96,234+400,0)
	}
}

with(obj_mainmenu_quit){ 
		if point_distance(x,y,72,274+400) > 2 {
		move_towards_point(72,274+400,18)		 
	} else {
	x = 72
	y = 274+400
	move_towards_point(72,274+400,0)
	
	instance_destroy(obj_mainmenu_quit)
	instance_destroy(obj_mainmenu_play)
	instance_destroy(obj_mainmenu_options)
	instance_destroy(obj_mainmenu_credits)
	}
}

}