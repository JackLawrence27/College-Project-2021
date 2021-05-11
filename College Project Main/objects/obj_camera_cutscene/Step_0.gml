//Destination Of The Camera
if(instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}

//Update the camera's posititon
x += (xTo - x) / 7.5;
y += (yTo - y) / 15;

//Can't see outside of map
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff)
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff)

//Screen Shake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);
shakeRemain = max(0,shakeRemain-((1/shakeLength)*shakeMagnitude));


//Update Camera View
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(layer_exists("Sky")){
	layer_x("Sky",x);
}

if(layer_exists("Mountains")){
	layer_x("Mountains",x/1.5);
}

if(layer_exists("DarkTrees")){
	layer_x("DarkTrees",x/3.5);
}

if(layer_exists("LightTrees")){
	layer_x("LightTrees",x/8);
}