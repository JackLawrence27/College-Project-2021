//Enviroment Creator
if(instance_number(obj_grass) < enviromentCount ){
	instance_create_layer(x+xMoveGrass,272,"Grass",obj_grass)
	xMoveGrass += 44;
}

if(instance_number(obj_grass2) < enviromentCount ){
	instance_create_layer(x+xMoveGrass2,272,"Grass",obj_grass2)
	xMoveGrass2 += 44;
}

if(instance_number(obj_enviroment_object) < enviromentCount ){
	instance_create_layer(x+spawnOffset,272,"Walls",obj_enviroment_object)
	spawnOffset += random_range(128,528)
}

if(instance_number(obj_enviroment_foliage) < foliageCount ){
	instance_create_layer(x+spawnOffsetFoliage,272,"Walls",obj_enviroment_foliage)
	spawnOffsetFoliage += random_range(128,256)
}

