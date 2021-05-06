if(obj_skeleton.fireEffect = true) && (obj_skeleton.dead != true){
while (instance_number(obj_particle_skeleton) < 40) {
    instance_create_layer(obj_skeleton.x+random_range(-10,10),obj_skeleton.y+random_range(-10,20),"Walls",obj_particle_skeleton);
}
} else {
	//
}