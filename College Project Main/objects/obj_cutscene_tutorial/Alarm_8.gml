instance_destroy(obj_text_cutscene_auto);
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_avatar;
	text = "The utmost disrespect after I just saved\nyour sorry ass from impending death...";
	pitch = 1.2;
}

alarm[9] = 460;