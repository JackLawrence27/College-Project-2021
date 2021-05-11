//Health Manager
if(impHealth <= 0){
state = enemyController.DEAD
}

//State Machine
switch (state){
	case enemyController.IDLE:
	{
		sprite_index = spr_imp_idle;
		hsp = 0;
		if(distance_to_object(obj_player) < aggroRange-32) state = enemyController.CHASE;
	}
	break;
	case enemyController.HURT:
	{
		sprite_index = spr_imp_hurt;
		hsp = 0;
		if(image_index >= 2){
		if(distance_to_object(obj_player) < 4) state = enemyController.ATTACK;
		if(distance_to_object(obj_player) > 4) && (distance_to_object(obj_player) < aggroRange) state = enemyController.CHASE;
		if(distance_to_object(obj_player) > aggroRange) state = enemyController.IDLE;		
		}
	}
	break;
	case enemyController.CHASE:
	{
		sprite_index = spr_imp_walk;
		dir = sign(obj_player.x - x);
		image_xscale = dir;
		hsp = dir * movespeed;
		if(!state = enemyController.HURT) && (!state = enemyController.ATTACKPAUSE) {
			// Do nothing
		} else {
			if(distance_to_object(obj_player) < 4) { state = enemyController.ATTACK; image_index = 0; }
			if(distance_to_object(obj_player) > aggroRange) state = enemyController.IDLE;
		}
	}
	break;
	case enemyController.ATTACK:
	{
		sprite_index = attackSprite;
		if(image_index >= 5){
			state = enemyController.ATTACKPAUSE;
		}
		hsp = 0;
	}
	break;
	case enemyController.ATTACKPAUSE:
	{
		sprite_index = idleSprite;
		countdown -= 1
		if(countdown <= 0){
			if(distance_to_object(obj_player) < 4) state = enemyController.ATTACK;
			if(distance_to_object(obj_player) > 4) && (distance_to_object(obj_player) < 96) state = enemyController.CHASE;
			if(distance_to_object(obj_player) > 96) state = enemyController.IDLE;		
			countdown = 60;
		}
	}
	break;
	case enemyController.DEAD:
	{
		image_speed = 0.2;
		sprite_index = deathSprite;
	dead = true; //To stop being attacked after death
	if(image_index >= 4){
		image_speed = 0;
		image_index = 4;
	}
	hsp = 0;
	}
	break;
}

var fadeRange = 64;
var fadeThresh = 96;
var playerDis = distance_to_object( obj_player );

textAlpha = ( fadeThresh + fadeRange - playerDis ) / fadeRange;

scr_collision();


vsp += grv; //Add gravity to our vertical speed
