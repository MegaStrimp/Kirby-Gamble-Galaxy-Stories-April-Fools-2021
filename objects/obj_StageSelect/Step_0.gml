///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Go To A Stage
	
	if (!instance_exists(obj_Fade))
	{
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr)))
		{
			selection += 1;
		}
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl)))
		{
			selection -= 1;
		}
	}
	
	if (selection < 0) selection += 8;
	if (selection > 7) selection -= 8;
	
	switch (selection)
	{
		//Green Greens
		
		case 0:
		xx = 168;
		yy = 120;
		targetRoom = rm_GreenGreens1;
		text = spr_Menu_StageSelect_Text_GreenGreens;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Battleship Halberd
		
		case 1:
		xx = 336;
		yy = 78;
		targetRoom = rm_BattleshipHalberd1;
		text = spr_Menu_StageSelect_Text_BattleshipHalberd;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Asteroid Fields
		
		case 2:
		xx = 440;
		yy = 120;
		targetRoom = rm_AsteroidFields1;
		text = spr_Menu_StageSelect_Text_AsteroidFields;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Egg Garden
		
		case 3:
		xx = 600;
		yy = 144;
		targetRoom = rm_EggGarden_Surface1;
		text = spr_Menu_StageSelect_Text_EggGarden;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Gear Cube
		
		case 4:
		xx = 752;
		yy = 90;
		targetRoom = rm_Aquatia_Harbor1;
		text = spr_Menu_StageSelect_Text_GearCube;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Aquatia
		
		case 5:
		xx = 912;
		yy = 144;
		targetRoom = rm_Aquatia_Harbor1;
		text = spr_Menu_StageSelect_Text_Aquatia;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Cosmic Palace
		
		case 6:
		xx = 1080;
		yy = 72;
		targetRoom = rm_Aquatia_Harbor1;
		text = spr_Menu_StageSelect_Text_CosmicPalace;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Popstar Moon
		
		case 7:
		xx = 78;
		yy = 72;
		targetRoom = rm_Aquatia_Harbor1;
		text = spr_Menu_StageSelect_Text_PopstarMoon;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
		
		//Default
		
		default:
		xx = -100;
		yy = -100;
		targetRoom = rm_Setup;
		text = spr_Menu_StageSelect_Text_Default;
		planet = spr_Menu_StageSelect_Planet_Default;
		break;
	}
	
	//Position
	
	x = lerp(x,xx,spd);
	y = lerp(y,yy,spd);
	
	//Animation
	
	if (global.hasCoop)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	
	//Select Coop
	
	if ((!instance_exists(obj_Fade)) and ((keyboard_check_pressed(keySelect)) or (gamepad_button_check_pressed(0,gp_select))))
	{
		if (global.hasCoop)
		{
			global.hasCoop = false;
			if (audio_is_playing(snd_1Up)) audio_stop_sound(snd_1Up);
			audio_play_sound(snd_ButtonNo,0,false);
		}
		else
		{
			global.hasCoop = true;
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_1Up,0,false);
		}
	}
	
	//Go Back
	
	if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
	{
		if (!instance_exists(obj_Fade))
		{
			audio_play_sound(snd_ButtonNo,0,false);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_MainMenu;
		}
	}
	
	//Go To Room
	
	if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
	{
		if (!instance_exists(obj_Fade))
		{
			audio_play_sound(snd_Enter,0,false);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = targetRoom;
			fade.alphaSpd = 0.02;
		}
	}
}