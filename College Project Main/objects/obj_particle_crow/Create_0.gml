randomize();
surface_y = 0;
vspeed = random_range(-0.2,0.2)
hspeed = random_range(-0.2,0.2)
image_xscale = 1
image_yscale = image_xscale;
lifespan = random_range(0.35,0.5)*room_speed*2;
fadestep = 0;
lifespan_max = lifespan;

white = make_colour_rgb(13,19,22)
grey = make_colour_rgb(37,57,65)


lightcolourintensity = 0.2;
image_blend = choose(white,grey)
lightcolour = make_colour_rgb(255,255,0);

