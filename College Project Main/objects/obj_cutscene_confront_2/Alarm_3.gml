//Intro Text
obj_camera_cutscene.follow = obj_skeleton_commander_cutscene;
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_commander_avatar;
	text = "....";
	textColour = c_white;
	pitch = 0.6;
}

alarm[4] = 200;