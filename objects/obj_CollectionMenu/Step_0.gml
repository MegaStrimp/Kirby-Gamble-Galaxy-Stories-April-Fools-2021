///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Buttons
	
	charactersButtonIndex = 0;
	abilitiesButtonIndex = 0;
	familiarsButtonIndex = 0;
	puzzlesButtonIndex = 0;
	bestiaryButtonIndex = 0;
	
	if ((keyboard_check_pressed(keyUp)) or (keyboard_check_pressed(keyDown)) or (keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padu)) or (gamepad_button_check_pressed(0,gp_padd)) or (gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr))) audio_play_sound(snd_BossHealth,0,false);
	
	switch (menuSelection)
	{
		case "none":
		if (!instance_exists(obj_Fade))
		{
			if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
			{
				audio_play_sound(snd_ButtonNo,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_MainMenu;
			}
		}
		
		switch (selection)
		{
			case "characters":
			charactersButtonIndex = 1;
			
			if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "bestiary";
			if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "abilities";
			
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				menuSelection = "characters";
				yyCharacters = selectedYCharacters;
			}
			break;
			
			case "abilities":
			abilitiesButtonIndex = 1;
			
			if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "characters";
			if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "familiars";
			
			if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
			{
				audio_play_sound(snd_ButtonYes,0,false);
				menuSelection = "abilities";
				yyAbilities = selectedYAbilities;
			}
			break;
			
			case "familiars":
			familiarsButtonIndex = 1;
			
			if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "abilities";
			if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "puzzles";
			break;
			
			case "puzzles":
			puzzlesButtonIndex = 1;
			
			if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "familiars";
			if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "bestiary";
			break;
			
			case "bestiary":
			bestiaryButtonIndex = 1;
			
			if ((keyboard_check_pressed(keyLeft)) or (gamepad_button_check_pressed(0,gp_padl))) selection = "puzzles";
			if ((keyboard_check_pressed(keyRight)) or (gamepad_button_check_pressed(0,gp_padr))) selection = "characters";
			break;
		}
		break;
		
		case "characters":
		charactersButtonIndex = true;
		yyCharacters = lerp(yyCharacters,selectedYCharacters,.1);
		
		if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
		{
			audio_play_sound(snd_ButtonNo,0,false);
			menuSelection = "none";
		}
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) charactersSelection -= 1;
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) charactersSelection += 1;
		
		var charactersArrayEnd = array_length_1d(charactersText);
		if (charactersSelection >= charactersArrayEnd) charactersSelection -= charactersArrayEnd;
		if (charactersSelection < 0) charactersSelection += charactersArrayEnd;
		break;
		
		case "abilities":
		abilitiesButtonIndex = true;
		yyAbilities = lerp(yyAbilities,selectedYAbilities,.1);
		
		if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
		{
			audio_play_sound(snd_ButtonNo,0,false);
			menuSelection = "none";
		}
		
		if ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) abilitiesSelection -= 1;
		if ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))) abilitiesSelection += 1;
		
		var abilitiesArrayEnd = array_length_1d(abilitiesText);
		if (abilitiesSelection >= abilitiesArrayEnd) abilitiesSelection -= abilitiesArrayEnd;
		if (abilitiesSelection < 0) abilitiesSelection += abilitiesArrayEnd;
		break;
	}
}