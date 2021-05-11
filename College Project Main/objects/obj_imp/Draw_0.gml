//Hit Flash
if(!isHit){
	draw_self();
}

if(isHit){
	if(hitFlash = 1){
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_white,0,0);
	}
	if(hitFlash = 2){
	gpu_set_fog(true,c_orange,0,0);
	draw_self();
	gpu_set_fog(false,c_orange,0,0);
	}
}

draw_set_alpha(textAlpha)
if(!dead){
var xOffset = 4;

for (var i = 0; i < impHealth; i++;){
	draw_sprite(spr_enemy_hp,0,x + (i * xOffset)-8,y-18);
}
}
draw_set_alpha(1)
