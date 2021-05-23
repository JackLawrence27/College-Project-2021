//Inital
drawXscale = 1;
drawYscale = 1;

drawXscaleInsignia = 1;
drawYscaleInsignia = 1;

insigniaDrawAlpha = 0;


if(room = rm_cutscene_tutorial){
global.playerHealthMax = 10;
global.playerHealth = 4;		
} else {
global.playerHealthMax = 10;
global.playerHealth = global.playerHealthMax;
}

instance_create_layer(x,y,"Music",obj_hud_health_controller)
instance_create_layer(x,y,"Music",obj_hud_insignia_controller)