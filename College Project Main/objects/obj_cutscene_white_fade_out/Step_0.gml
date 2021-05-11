whiteAlpha -= 0.01;

if(whiteAlpha <= 0){
	whiteAlpha = 0;
	instance_destroy();
}