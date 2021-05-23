with(obj_camera){
	follow = obj_crow;
}

instance_create_layer(x,y,"Music",obj_text_cutscene_auto);

with(obj_text_cutscene_auto){
	avatar = spr_crow_avatar;
	text = "You'll be ready to take on Requiem's\nforces now don't forget to practice your\nattacks before you head east.";
	pitch = 1.2;
}

global.playerLocked = true;


alarm[1] = 640;