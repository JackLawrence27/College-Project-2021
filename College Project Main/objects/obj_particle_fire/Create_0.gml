randomize();
surface_y = 0;
vspeed = random_range(-0.4,0)
hspeed = random_range(-0.1,0.1)
image_xscale = random_range(0.4,1)
image_yscale = image_xscale;
lifespan = random_range(0.35,0.5)*room_speed*6;
fadestep = 0;
lifespan_max = lifespan;

orange = make_colour_rgb(151,111,52)
red = make_colour_rgb(151,52,52)
yellow = make_colour_rgb(186,184,61)

lightcolourintensity = 0.2;
image_blend = choose(orange,red,yellow)
lightcolour = make_colour_rgb(255,255,0);

