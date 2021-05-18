whiteAlpha -= 0.01;

if(whiteAlpha <= 0){
	whiteAlpha = 0;
	if(instance_exists(obj_cutscene_confront)){
	obj_cutscene_confront.alarm[0] = 60;
	}
	instance_destroy();
}