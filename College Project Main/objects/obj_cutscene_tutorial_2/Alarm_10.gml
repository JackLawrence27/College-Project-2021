instance_destroy(obj_text_cutscene_auto);

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "Your health also appears to be a bit low\nTry using that campfire";
	pitch = 1.2;
}

instance_create_layer(x,y,"Music",obj_hud);

alarm[11] = 420;