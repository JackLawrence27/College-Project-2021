screenShake(3,30);
audio_play_sound(s_fire_rest,1000,false);
global.playerHealth = global.playerHealthMax;
global.playerInsigniaCharge = 1;
resting = false;

with(obj_player){
	attacking = false;
	canAttack = true;
	movespeed = 1.5;
}

with(obj_hud){
	drawXscale = 1.25	
	drawYscale = 1.25	
	
	drawXscaleInsignia = 1.25
	drawYscaleInsignia = 1.25	
}

instance_create_layer(x,y,"Music",obj_fire_popup);

global.playerXSave = x;
global.playerYSave = y-28;
global.playerRoom = room;

instance_create_layer(x,y,"Music",obj_cutscene_tutorial_3);

global.playerLocked = false;