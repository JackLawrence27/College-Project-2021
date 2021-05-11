//Intro Text
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_leader_avatar;
	text = "Do you have any last\nwords peasent.";
	textColour = c_red;
	pitch = 0.4;
}

screenShakeCut(2,200)

alarm[5] = 300;