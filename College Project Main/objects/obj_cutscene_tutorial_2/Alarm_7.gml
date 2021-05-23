///@description	Bear
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_camera_cutscene){
	follow = obj_crow;
}

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "Ah the bear insignia. Your earth\nelemental power will be one to be feared.";
	pitch = 1.2;
}

alarm[10] = 400;