instance_destroy(obj_text_cutscene_auto);
instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_player_avatar;
	text = "I'm sorry impending death???\nWho are you and why are you lecturing me.";
	pitch = 1;
}

alarm[11] = 440;