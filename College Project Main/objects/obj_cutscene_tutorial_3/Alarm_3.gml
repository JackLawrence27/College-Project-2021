instance_destroy(obj_text_cutscene_auto);

with(obj_camera){
	follow = obj_crow;
}

audio_play_sound(s_crow,1000,false);
screenShake(3,150)

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "I don't have all day for this\nHead east all will make sense.";
	pitch = 1.2;
}

alarm[4] = 360;