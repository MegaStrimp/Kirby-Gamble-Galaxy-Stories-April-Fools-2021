///@description Main

//Input

scr_Player_Inputs();

//Switch

if (!instance_exists(obj_Fade))
{
	if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
	{
		if (image_index == 0)
		{
			image_index = 1;
		}
		else
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Title;
		}
	}
}