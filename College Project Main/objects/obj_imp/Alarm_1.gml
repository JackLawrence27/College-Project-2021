if(!dead){
if(fireEffect){
var _damageIndi = instance_create_layer(currentObject.x,currentObject.y,"Music",obj_damageindicator)
with(_damageIndi){
	displayColour = c_orange;
	displayDamage = global.elementFireDamage;
	displayXscale = 1.75;
	displayYscale = 1.75;
}
	alarm[1] = 30
	hitFlash = 2;
	impHealth -= global.elementFireDamage;
	alarm[0] = 15;
	isHit = true;
}
}