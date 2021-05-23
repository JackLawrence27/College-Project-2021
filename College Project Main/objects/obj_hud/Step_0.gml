/// @description Lerp X/Y Scale
drawXscale = lerp(drawXscale,1,.1)
drawYscale = lerp(drawYscale,1,.1)

drawXscaleInsignia = lerp(drawXscaleInsignia,1,.1)
drawYscaleInsignia = lerp(drawYscaleInsignia,1,.1)

insigniaDrawAlpha = global.playerInsigniaCharge;

if(global.playerHealth <= 0){
	if(!instance_exists(obj_player_dead)){
		instance_create_layer(obj_player.x,obj_player.y,"Player",obj_player_dead);
		instance_destroy(obj_player);
	}
}