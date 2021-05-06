randomize();
surface_y = 0;
vspeed = random_range(-2,-0.4)
//hspeed = random_range(-0.2,0.2)
image_xscale = 1
image_yscale = image_xscale;
lifespan = random_range(0.35,0.5)*room_speed*2;
fadestep = 0;
lifespan_max = lifespan;

white = make_colour_rgb(226, 88, 34)
grey = make_colour_rgb(233, 43, 43)


lightcolourintensity = 0.2;
image_blend = choose(white,grey)
lightcolour = make_colour_rgb(255,255,0);

