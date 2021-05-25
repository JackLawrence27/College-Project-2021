while (instance_number(obj_particle_player_fire) < 40) {
    instance_create_layer(obj_player.x+random_range(-10,10),obj_player.y+random_range(0,20),"Grass",obj_particle_player_fire);
}