if(global.insigniaSelected != 0){

if(global.playerInsigniaCharge = 1) && (pulse = true){
	with(obj_hud){
		drawXscaleInsignia = 1.1;	
		drawYscaleInsignia = 1.1;	
	}	
	alarm[0] = 90;
	pulse = false
}		

if(global.playerInsigniaCharge < 100) && (cooldown = false){
	global.playerInsigniaCharge += 0.004;

}

if(global.playerInsigniaCharge >= 1){
	global.playerInsigniaCharge = 1;
}

}