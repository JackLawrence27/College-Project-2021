instance_destroy(obj_text_cutscene_auto);

instance_destroy(obj_wall_cutscene);

instance_destroy(self);

global.playerLocked = false;

with(obj_camera){
	follow = obj_player;
}