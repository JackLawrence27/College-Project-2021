if(!dead) && (isHit = false){
//Only Acknowledging One Hit
isHit = true;
alarm[0] = 60;

//Audio Manager
audio_sound_pitch(s_hit_sound, 0.7);
audio_play_sound(s_hit_sound, 2, false);

//Damage Indicator
var _damageIndi = instance_create_layer(x,y,"Music",obj_damageindicator)
with(_damageIndi){
	var _critChance = random(100)
	if(_critChance <= 10){
	displayColour = c_yellow;
	displayDamage = global.punchDamage3+2;
	with(other){ skeletonHealth -= global.punchDamage3+2 }
	displayXscale = 2.5;
	displayYscale = 2.5;
	} else {
	displayColour = c_green;
	displayDamage = global.punchDamage3+1;
	with(other){ skeletonHealth -= global.punchDamage3+1 }
	displayXscale = 1.75;
	displayYscale = 1.75;
	}
}

//if(obj_player.elementFire){
//var _triggerElement = random(100)
//if(_triggerElement <= 5 && !fireEffect){
//	fireEffect = true;
//	alarm[1] = 30
//	alarm[2] = 500;
//}
//}

//Additional Scripts & Clean Up
hitFlash = 1;
screenShake(4,10)
if(!state = skeletonState.ATTACKPAUSE){
state = skeletonState.HURT;
}
with(other)	instance_destroy();
}