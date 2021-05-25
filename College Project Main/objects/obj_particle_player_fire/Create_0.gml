randomize();
surface_y = 0;
vspeed = random_range(-1.4,-0.6)
image_xscale = 1;
image_yscale = image_xscale;
lifespan = random_range(0.35,0.5)*room_speed*2;
fadestep = 0;
lifespan_max = lifespan;

red = make_colour_rgb(255,0,0)

lightcolourintensity = 0.2;
image_blend = choose(red)
lightcolour = make_colour_rgb(255,255,0);

