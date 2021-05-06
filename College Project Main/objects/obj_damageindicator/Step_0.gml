//Calculations
y -= .7;
displayAlpha -= 0.01

//Alpha handler
if(displayAlpha <= 0){
	instance_destroy();
}

//Text Lerp
displayXscale = lerp(displayXscale,1,.1)
displayYscale = lerp(displayYscale,1,.1)