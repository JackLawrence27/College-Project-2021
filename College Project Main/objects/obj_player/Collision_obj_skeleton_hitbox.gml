instance_destroy(other);
audio_play_sound(s_hit_sound,1000,false);
global.playerHealth -= 1;

with(obj_hud){
drawXscale = 1.1;	
drawYscale = 1.1;	
}
screenShake(4,10);


