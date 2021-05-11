//Intro Text
obj_camera_cutscene.follow = obj_skeleton_cutscene;
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_avatar;
	text = "We nearly got him boss\nonly a few more...............";
	pitch = 0.8;
}

alarm[1] = 200;