if(alphaAction = 1){
	alpha += 0.05;
	if(alpha >= 1){
		alpha = 1;
	}	
}

if(alphaAction = 2){
	alpha -= 0.05;
	if(alpha <= 0){
		instance_destroy(self);
	}	
}