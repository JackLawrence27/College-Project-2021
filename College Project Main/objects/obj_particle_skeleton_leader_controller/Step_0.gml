while (instance_number(obj_particle_skeleton_leader) < 60) {
    instance_create_layer(obj_skeleton_leader_cutscene.x+random_range(-7,12),obj_skeleton_leader_cutscene.y+random_range(-5,32),"Walls",obj_particle_skeleton_leader);
}