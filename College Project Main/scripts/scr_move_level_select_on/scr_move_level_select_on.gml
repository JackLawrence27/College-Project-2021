// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_level_select_on(){
	
with(obj_mainmenu_level_1){ 
		if point_distance(x,y,200,95) > 2 {
		move_towards_point(200,95,6)		 
	} else {
	x = 200
	y = 95
	move_towards_point(200,95,0)
	}
}

with(obj_mainmenu_level_2){ 
		if point_distance(x,y,200,123) > 2 {
		move_towards_point(200,123,6)		 
	} else {
	x = 200
	y = 123
	move_towards_point(200,123,0)
	}
}

with(obj_mainmenu_level_3){ 
		if point_distance(x,y,200,151) > 2 {
		move_towards_point(200,151,6)		 
	} else {
	x = 200
	y = 151
	move_towards_point(200,151,0)
	}
}

with(obj_mainmenu_level_4){ 
		if point_distance(x,y,200,179) > 2 {
		move_towards_point(200,179,6)		 
	} else {
	x = 200
	y = 179
	move_towards_point(200,179,0)
	}
}

with(obj_mainmenu_level_5){ 
		if point_distance(x,y,200,207) > 2 {
		move_towards_point(200,207,6)		 
	} else {
	x = 200
	y = 207
	move_towards_point(200,207,0)
	}
}

with(obj_mainmenu_level_6){ 
		if point_distance(x,y,200,235) > 2 {
		move_towards_point(200,235,6)		 
	} else {
	x = 200
	y = 235
	move_towards_point(200,235,0)
	}
}

with(obj_mainmenu_level_7){ 
		if point_distance(x,y,200,263) > 2 {
		move_towards_point(200,263,6)		 
	} else {
	x = 200
	y = 263
	move_towards_point(200,263,0)
	}
}

with(obj_mainmenu_level_info){ 
		if point_distance(x,y,440,180) > 2 {
		move_towards_point(440,180,6)		 
	} else {
	x = 440
	y = 180
	move_towards_point(440,180,0)
	}
}

}