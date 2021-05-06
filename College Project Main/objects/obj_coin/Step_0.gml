///@description
//collect coin
if (place_meeting(x, y, obj_player) && !collected)
{
	obj_player.coins++;
	collected = true;
}

//collected
if (collected)
{
	instance_destroy();
}