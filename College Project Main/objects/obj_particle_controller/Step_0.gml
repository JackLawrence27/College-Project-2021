while (instance_number(obj_particle_crow) < 15) {
    instance_create_layer(obj_crow.x+random_range(-4,4),obj_crow.y+random_range(-4,4),"Walls",obj_particle_crow);
}