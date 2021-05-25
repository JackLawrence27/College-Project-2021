while (instance_number(obj_particle_fire) < 15) {
    instance_create_layer(obj_fire.x+random_range(-16,16),obj_fire.y+random_range(-20,0),"Grass",obj_particle_fire);
}