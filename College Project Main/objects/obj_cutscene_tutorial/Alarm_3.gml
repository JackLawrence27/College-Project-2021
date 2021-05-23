instance_destroy(obj_text_cutscene_auto);

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "Ahem.....";
	pitch = 1.2;
}

alarm[4] = 200;