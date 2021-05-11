//Intro Text
obj_camera_cutscene.follow = obj_player_cutscene;
instance_create_layer(x,y,"Music",obj_text_cutscene);
cutsceneSeq = 1;

with(obj_text_cutscene){
	avatar = spr_player_avatar;
	text = "You won't get away with what\nyou've done";
	pitch = 1;
}

