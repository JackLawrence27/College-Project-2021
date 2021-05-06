//Health Manager
if(skeletonHealth <= 0){
state = skeletonState.DEAD
}



//State Machine
switch (state){
	case skeletonState.IDLE:
	{
		sprite_index = spr_skeleton_idle;
		hsp = 0;
		if(distance_to_object(obj_player) < aggroRange-32) state = skeletonState.CHASE;
	}
	break;
	case skeletonState.HURT:
	{
		sprite_index = spr_skeleton_hurt;
		hsp = 0;
		if(image_index >= 2){
		if(distance_to_object(obj_player) < 4) state = skeletonState.ATTACK;
		if(distance_to_object(obj_player) > 4) && (distance_to_object(obj_player) < aggroRange) state = skeletonState.CHASE;
		if(distance_to_object(obj_player) > aggroRange) state = skeletonState.IDLE;		
		}
	}
	break;
	case skeletonState.CHASE:
	{
		sprite_index = spr_skeleton_walk;
		dir = sign(obj_player.x - x);
		image_xscale = dir;
		hsp = dir * movespeed;
		if(!state = skeletonState.HURT) && (!state = skeletonState.ATTACKPAUSE) {
			// Do nothing
		} else {
			if(distance_to_object(obj_player) < 4) { state = skeletonState.ATTACK; image_index = 0; }
			if(distance_to_object(obj_player) > aggroRange) state = skeletonState.IDLE;
		}
	}
	break;
	case skeletonState.ATTACK:
	{
		sprite_index = spr_skeleton_attack;
		if(image_index >= 5){
			state = skeletonState.ATTACKPAUSE;
		}
		hsp = 0;
	}
	break;
	case skeletonState.ATTACKPAUSE:
	{
		sprite_index = spr_skeleton_idle;
		countdown -= 1
		if(countdown <= 0){
			if(distance_to_object(obj_player) < 4) state = skeletonState.ATTACK;
			if(distance_to_object(obj_player) > 4) && (distance_to_object(obj_player) < 96) state = skeletonState.CHASE;
			if(distance_to_object(obj_player) > 96) state = skeletonState.IDLE;		
			countdown = 60;
		}
	}
	break;
	case skeletonState.DEAD:
	{
		image_speed = 0.2;
		sprite_index = spr_skeleton_death
	dead = true; //To stop being attacked after death
	if(image_index >= 5){
		image_speed = 0;
		image_index = 5
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
