//depth = -1*surface_y
fadestep += 1;

lifespan -= 1;
if(lifespan <0){
	instance_destroy();
}

var calc =sqr(fadestep/lifespan_max) / fadestep;
image_alpha -= calc*2;
//image_blend = red or orange or yellow
image_angle += random_range(-0.09,0.09)
//make_color_rgb(255*image_alpha,255*image_alpha,0)

//sine2 = 0.25 + (-1 + sin(2 * pi * current_time / 1000 * 0.30)) * 0.3;   // gives 0.50 to 1.00

//hspeed = sine2 