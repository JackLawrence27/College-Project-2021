//Create new cloud and destroy
if(room != rm_menu_new){
if(instance_exists(obj_enviroment_cloud_back) < 4){
	instance_create_layer(room_width-1,y+random_range(-40,40),"Clouds",obj_enviroment_cloud)
}
instance_destroy();
} else {	
	if(instance_exists(obj_enviroment_cloud_back) < 2){
	instance_create_layer(room_width-1,y+random_range(-40,40),"Clouds",obj_enviroment_cloud)
}
}