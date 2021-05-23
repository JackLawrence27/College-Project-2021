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
		if(instance_exists(obj_player)){
		if(distance_to_object(obj_player) < aggroRange-32) state = skeletonState.CHASE;
		if(distance_to_object(obj_player) < 6) { state = skeletonState.ATTACK; image_index = 0; }
		}
	}
	break;
	case skeletonState.HURT:
	{
		if(!instance_exists(obj_player)){ state = skeletonState.IDLE }
		sprite_index = spr_skeleton_hurt;
		hsp = 0;
		if(image_index >= 2){
		if(distance_to_object(obj_player) < 6) { state = skeletonState.ATTACK; image_index = 0; }
		if(distance_to_object(obj_player) > 4) && (distance_to_object(obj_player) < aggroRange) state = skeletonState.CHASE;
		if(distance_to_object(obj_player) > aggroRange) state = skeletonState.IDLE;		
		}
	}
	break;
	case skeletonState.CHASE:
	{
		if(!instance_exists(obj_player)){ state = skeletonState.IDLE }
		sprite_index = spr_skeleton_walk;
		if(instance_exists(obj_player)){
			dir = sign(obj_player.x - x);
		}
		image_xscale = dir;
		hsp = dir * movespeed;
		if(!state = skeletonState.HURT) && (!state = skeletonState.ATTACKPAUSE) {
			// Do nothing
		} else {
			if(distance_to_object(obj_player) < 6) { state = skeletonState.ATTACK; image_index = 0; }
			if(distance_to_object(obj_player) > aggroRange) state = skeletonState.IDLE;
		}
	}
	break;
	case skeletonState.ATTACK:
	{
		if(!instance_exists(obj_player)){ state = skeletonState.IDLE }
		if(attackCreated = false){
		instance_create_layer(self.x,self.y,"Music",obj_skeleton_hitbox);
		audio_sound_pitch(s_punch_swing,0.6)
		audio_play_sound(s_punch_swing,100,false)
		audio_sound_pitch(s_punch_swing,1)
		with(obj_skeleton_hitbox){
		image_xscale = other.dir;
		}
		}
		attackCreated = true;
		sprite_index = spr_skeleton_attack;
		if(image_index >= 5){
			state = skeletonState.ATTACKPAUSE;
		}
		hsp = 0;
	}
	break;
	case skeletonState.ATTACKPAUSE:
	{
		if(!instance_exists(obj_player)){ state = skeletonState.IDLE }
		sprite_index = spr_skeleton_idle;
		if(instance_exists(obj_player)){
			dir = sign(obj_player.x - x);
		}
		countdown -= 1
		if(countdown <= 0){
			attackCreated = false;
			if(distance_to_object(obj_player) < 6) { state = skeletonState.ATTACK; image_index = 0; }
			if(distance_to_object(obj_player) > 4) && (distance_to_object(obj_player) < 96) state = skeletonState.CHASE;
			if(distance_to_object(obj_player) > 96) state = skeletonState.IDLE;		
			countdown = 140;
		}
	}
	break;
	case skeletonState.DEAD:
	{
		image_speed = 0.2;
		sprite_index = spr_skeleton_death
		if(dead = false) { audio_play_sound(s_skeleton_death,100,false) }
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

#region PREVENT BEING STUCK IN WALLS
if(place_meeting(x,y,obj_wall)){
	for(var i = 0; i < 1000; ++i) {
		//RIGHT
		if(!place_meeting(x + i, y, obj_wall)){
			x += i;
			break;
		}
		//LEFT
		if(!place_meeting(x - i, y, obj_wall)){
			x -= i;
			break;
		}
		//UP
		if(!place_meeting(x, y - i, obj_wall)){
			y -= i;
			break;
		}
		//DOWN
		if(!place_meeting(x, y - i, obj_wall)){
		y += i;
		break;
		}
		//TOP RIGHT
		if(!place_meeting(x + i, y - i, obj_wall)){
		x += i;
		y -= i;
		break;
		}
		//TOP LEFT
		if(!place_meeting(x - i, y - i, obj_wall)){
		x -= i;
		y -= i;
		break;
		}
		//BOTTOM RIGHT
		if(!place_meeting(x + i, y + i, obj_wall)){
		x += i;
		y += i;
		break;
		}		
		//BOTTOM LEFT
		if(!place_meeting(x - i, y + i, obj_wall)){
		x -= i;
		y += i;
		break;
		}	
	}
}
#endregion

vsp += grv; //Add gravity to our vertical speed
