if(!dead){
//Only Acknowledging One Hit
isHit = true;
alarm[0] = 10;

//Audio Manager
audio_sound_pitch(s_punch, 1.1);
audio_play_sound(s_punch, 2, false);

//Damage Indicator
var _damageIndi = instance_create_layer(obj_skeleton.x,obj_skeleton.y,"Music",obj_damageindicator)
with(_damageIndi){
	var _critChance = random(100)
	if(_critChance <= 10){
	displayColour = c_yellow;
	displayDamage = global.punchDamage2+1;
	with(obj_skeleton){ skeletonHealth -= global.punchDamage2+1 }
	displayXscale = 2.5;
	displayYscale = 2.5;
	} else {
	displayColour = c_red;
	displayDamage = global.punchDamage2;
	with(obj_skeleton){ skeletonHealth -= global.punchDamage2  }
	displayXscale = 1.75;
	displayYscale = 1.75;
	}
}



if(obj_player.elementFire){
var _triggerElement = random(100)
if(_triggerElement <= 5 && !fireEffect){
	fireEffect = true;
	alarm[1] = 30
	alarm[2] = 500;
}
}

//Additional Scripts & Clean Up
hitFlash = 1;
screenShake(2,10)
if(!state = skeletonState.ATTACKPAUSE){
state = skeletonState.HURT;
}
with(other)	instance_destroy();
}