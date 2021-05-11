//Intro Text
obj_camera_cutscene.follow = obj_skeleton_leader_cutscene;
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_leader_avatar;
	text = "....";
	textColour = c_red;
	pitch = 0.4;
}

alarm[6] = 200;