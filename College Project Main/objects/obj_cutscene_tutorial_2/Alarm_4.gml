instance_destroy(obj_text_cutscene_auto);

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "I'm not an apprentice. I'm a rouge\nI left my insignia a long time ago.";
	pitch = 1.2;
}

alarm[5] = 440;