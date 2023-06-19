///@description Main

if (!global.pause)
{
	//Hurt Player

	scr_Enemy_HurtsPlayer();
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}