//Intro Text
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_skeleton_leader_avatar;
	text = "Silence! get out of my sight weasel\nYou are an embarrassment.";
	textColour = c_red;
	pitch = 0.4;
}

screenShakeCut(2,300)

alarm[3] = 400;