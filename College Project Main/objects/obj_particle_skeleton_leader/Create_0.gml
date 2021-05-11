randomize();
surface_y = 0;
vspeed = random_range(-0.2,0.2)
hspeed = random_range(-0.2,0.2)
image_xscale = 1
image_yscale = image_xscale;
lifespan = random_range(0.35,0.5)*room_speed*2;
fadestep = 0;
lifespan_max = lifespan;

col1 = make_colour_rgb(217,189,91)
col2 = make_colour_rgb(43,34,38)
col3 = make_colour_rgb(249,229,145)
col4 = make_colour_rgb(40,40,46)

lightcolourintensity = 0.2;
image_blend = choose(col1,col2,col3,col4)
lightcolour = make_colour_rgb(255,255,0);

