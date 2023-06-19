///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Shine Movement
	
	xx += hsp;
	if (xx >= (sprite_get_width(sprite_index) * (4 * image_xscale))) xx -= (sprite_get_width(sprite_index) * (4 * image_xscale));
	
	//Go To Main Menu
	
	if ((keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_start)))
	{
		if (!instance_exists(obj_Fade))
		{
			audio_play_sound(snd_Enter,0,false);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_MainMenu;
			fade.alphaSpd = 0.015;
		}
	}
}