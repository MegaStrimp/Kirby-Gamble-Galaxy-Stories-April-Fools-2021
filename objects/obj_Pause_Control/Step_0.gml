///@description Main

//Inputs

scr_Player_Inputs();

//Pause

if (!instance_exists(obj_Fade))
{
	if (!instance_exists(obj_Pause_Fade))
	{
		if (!global.pause)
		{
		    if ((keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_start)))
		    {
				audio_play_sound(snd_Pause,0,false);
		        if (!visible)
		        {
					if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
		            var pauseFade = instance_create_depth(x,y,depth - 1,obj_Pause_Fade);
		            pauseFade.fade = 1;
		        }
		    }
		}
	}

    if (!visible) exit;
    
    if ((!gamePaused) and (deactivated))
    {
        instance_activate_all();
        deactivated = false;
        visible = false;
    }
      
    if ((gamePaused) and (page == 0))
    {
        if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
        {
			//instance_activate_all();
			if (cursorPos == 0)
			{
				if (!instance_exists(obj_Pause_Fade))
				{
					var pauseFade = instance_create_depth(x,y,depth - 1,obj_Pause_Fade);
			        pauseFade.removePause = true;
				}
			}
			else if (cursorPos == 1)
			{
				if ((!instance_exists(obj_Pause_Fade)) and (!instance_exists(obj_Fade)))
				{
					var pauseFade = instance_create_depth(x,y,depth - 1,obj_Pause_Fade);
		            pauseFade.fade = 1;
					var fadeTrans = instance_create_depth(0,0,depth - 1,obj_Fade);
					fadeTrans.targetRoom = rm_MainMenu;
				}
			}
        }
    }
}