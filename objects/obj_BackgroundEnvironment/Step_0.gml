///@description Main

if (!global.pause)
{
	//Animation
	
	image_angle += rotateSpd;
	image_speed = 1;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}