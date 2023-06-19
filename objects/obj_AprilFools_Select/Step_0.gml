///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Buttons
	
	if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd)) or (gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr))) audio_play_sound(snd_BossHealth,0,false);
	
	switch (selection)
	{
		case "none":
		if (((global.beatKaabi) and (global.beatFrosty) and (global.beatMarx)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))) selection = "goldenangel";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "frosty";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "kaabi";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "marx";
		break;
		
		case "kaabi":
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "none";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_AprilFools_City1;
			}
		}
		break;
		
		case "marx":
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "none";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_AprilFools_Candy1;
			}
		}
		break;
		
		case "frosty":
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "none";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_AprilFools_Snow1;
			}
		}
		break;
		
		case "goldenangel":
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "none";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_AprilFools_Discord1;
			}
		}
		break;
	}
}