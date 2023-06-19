///@description Draw

if ((gamePaused) and (visible))
{
    if (!deactivated)
    {
        instance_deactivate_all(true);
        instance_activate_object(obj_Setup);
        instance_activate_object(obj_DebugMode);
        instance_activate_object(obj_Pause_Fade);
        instance_activate_object(obj_Fade);
        //instance_activate_object(obj_Camera);
        deactivated = true;
    }
    
	if (!global.pause)
	{
		//Index Timer
		
		if (indexTimer > 0)
		{
			indexTimer -= 1;
		}
		else if (indexTimer == 0)
		{
			imageIndex += 1;
			if (imageIndex > 1) imageIndex -= 2;
			indexTimer = indexTimerMax;
		}
		
		//Page
		
		if ((page == 1) and (keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
		{
			audio_play_sound(snd_Select,0,false);
			page -= 1;
		}
		if ((page == 0) and (keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
		{
			audio_play_sound(snd_Select,0,false);
			page += 1;
		}
	}
	
	if (page < 0)
	{
		page += 2;
	}
	if (page >= 2)
	{
		page -= 2;
	}
	
	//Draw Sprites
	
    var spriteX = (camera_get_view_x(gameView) + (camera_get_view_width(gameView) / 2));
    var spriteY = (camera_get_view_y(gameView) + (camera_get_view_height(gameView) / 2));
	
	draw_sprite_tiled(spr_PauseMenu_Bg,0,camera_get_view_x(gameView),camera_get_view_y(gameView));
	
	if (page == 0)
	{
		switch (global.abilityP1)
		{
			//Default
			
			default:
			var abilityPage = spr_PauseMenu_Ability_Kirby;
			break;
		}
	}
	if (page == 0) draw_sprite(abilityPage,0,spriteX,spriteY);
	
	//if (page == 0) draw_sprite(spr_Pause_Kirby,imageIndex,spriteX + 55,spriteY + 72);
	
	if (!global.pause)
	{
		//Cursor Position
		
		if (page == 0)
		{
			if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))
			{
				audio_play_sound(snd_Select,0,false);
				cursorPos -= 1;
			}
			if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd)))
			{
				audio_play_sound(snd_Select,0,false);
				cursorPos += 1;
			}
		}
		
		if (cursorPos < 0)
		{
			cursorPos += 2;
		}
		if (cursorPos >= 2)
		{
			cursorPos -= 2;
		}
		
		//Text Timer
		
		if (textTimer > 0)
		{
			textTimer -= 1;
		}
		else if (textTimer == 0)
		{
			if (textVisible)
			{
				textVisible = false;
			}
			else
			{
				textVisible = true;
			}
			textTimer = textTimerMax;
		}
	}
	
	//Draw Text
	
	/*if (page == 0)
	{
		if (cursorPos == 0)
		{
			if (textVisible) draw_sprite(spr_Pause_Text,0,spriteX + 49,spriteY + 111);
			draw_sprite(spr_Pause_Text,1,spriteX + 60,spriteY + 126);
		}
		else if (cursorPos == 1)
		{
			draw_sprite(spr_Pause_Text,0,spriteX + 49,spriteY + 111);
			if (textVisible) draw_sprite(spr_Pause_Text,1,spriteX + 60,spriteY + 126);
		}
	}*/
}