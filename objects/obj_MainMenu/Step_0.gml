///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Buttons
	
	storyModeButtonIndex = 0;
	extraModeButtonIndex = 0;
	collectionButtonIndex = 0;
	optionsButtonIndex = 0;
	skylandsButtonIndex = 0;
	bitcrushedButtonIndex = 0;
	samuraiKirbyButtonIndex = 0;
	discordButtonIndex = 0;
	gamejoltButtonIndex = 0;
	creditsButtonIndex = 0;
	
	if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd)) or (gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr))) audio_play_sound(snd_BossHealth,0,false);
	
	if (!instance_exists(obj_Fade))
	{
		if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
		{
			audio_play_sound(snd_ButtonNo,0,false);
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm_Title;
			fade.alphaSpd = 0.02;
		}
	}
	
	switch (selection)
	{
		case "storyMode":
		storyModeButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "discord";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "extraMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "bitcrushed";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "skylands";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_Starcutter;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "extraMode":
		extraModeButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "storyMode";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "discord";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "bitcrushed";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "skylands";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_StageSelect;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "collection":
		collectionButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "skylands";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "skylands";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "storyMode";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "options";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_Collection;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "options":
		optionsButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "samuraiKirby";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "bitcrushed";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "collection";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "storyMode";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_StageSelect;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "skylands":
		skylandsButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "collection";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "collection";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "storyMode";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "bitcrushed";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_Skylands_Sky1;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "bitcrushed":
		bitcrushedButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "options";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "samuraiKirby";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "skylands";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "storyMode";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_StageSelect;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "samuraiKirby":
		samuraiKirbyButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "bitcrushed";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "options";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "skylands";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "storyMode";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_StageSelect;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "discord":
		discordButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "extraMode";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "storyMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "credits";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "gamejolt";
		
		if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
		{
			audio_play_sound(snd_ButtonYes,0,false);
			url_open("https://discord.gg/qgxUPqv");
		}
		break;
		
		case "gamejolt":
		gamejoltButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "extraMode";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "storyMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "discord";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "credits";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_StageSelect;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
		
		case "credits":
		creditsButtonIndex = 1;
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) selection = "extraMode";
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) selection = "storyMode";
		if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "gamejolt";
		if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "discord";
		
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_StageSelect;
				if (global.aprilFools) fade.targetRoom = rm_GreenGreens1;
			}
		}
		break;
	}
}