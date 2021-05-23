instance_destroy(obj_text_cutscene_auto);

with(obj_camera_cutscene){
	follow = obj_crow;
}

audio_play_sound(s_crow,1000,false);
screenShakeCut(3,150)

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "ENOUGH....";
	pitch = 1.2;
}

alarm[4] = 150;