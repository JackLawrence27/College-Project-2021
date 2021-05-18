instance_destroy(obj_text_cutscene_auto);

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_avatar;
	text = "Anyway I see your insignia is broken.\n Who do you belong to if you can remember.";
	pitch = 1.2;
}

alarm[6] = 420;