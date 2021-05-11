instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

screenShakeCut(4,700)

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_leader_avatar;
	text = "WHY DO I HAVE TO DO\nEVERYTHING MYSELF!";
	pitch = 0.4;
	textColour = c_red;
}


alarm[3] = 300;
