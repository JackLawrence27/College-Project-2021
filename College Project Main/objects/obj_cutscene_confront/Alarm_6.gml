//Intro Text
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_player_avatar;
	text = "You'll pay for what you've done\nRequiem.";
	textColour = c_white;
	pitch = 1;
}

alarm[7] = 250;