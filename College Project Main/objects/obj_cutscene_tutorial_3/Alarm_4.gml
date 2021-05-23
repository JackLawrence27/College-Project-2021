instance_destroy(obj_text_cutscene_auto);

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "Also if you want to change your insignia\nfeel free to do so I don't caw... often.";
	pitch = 1.2;
}

alarm[5] = 440;