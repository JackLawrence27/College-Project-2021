if(global.playerHealth <= 4) && (pulse = true){
	with(obj_hud){
		drawXscale = 1.1;	
		drawYscale = 1.1;	
	}	
	alarm[0] = 90;
	pulse = false
}