//Intro Text
obj_camera_cutscene.follow = obj_skeleton_leader_cutscene;
instance_create_layer(x,y,"Music",obj_text_cutscene);
cutsceneSeq = 2;

with(obj_text_cutscene){
	avatar = spr_skeleton_leader_avatar;
	text = "The damage is already done\nyou can't stop it. You lost";
	pitch = 0.5;
}

