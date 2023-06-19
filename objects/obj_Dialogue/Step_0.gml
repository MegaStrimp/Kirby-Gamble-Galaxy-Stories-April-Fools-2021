///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs();
	
	//Variables
	
	text_speed = room_speed / textSpeed;
	if (text_length <= 0)
	{
	   text_length = string_length(text[array]);
	}
	
	if ((keyboard_check_pressed(keyJump)) or (keyboard_check_pressed(keyStart)) or (gamepad_button_check_pressed(0,gp_face1)) or (gamepad_button_check_pressed(0,gp_start)))
	{
		if (index >= text_length)
		{
		     resetArray = true;
		}
		else
		{
			index = text_length;
			text_displayed = string_copy(text[array],1,index);
		}
	}
	
	if (image_alpha <= 0) destroyTimer = 0;
	
	if (index < text_length)
	{
	   cooldown--;
	   if (cooldown <= 0)
	   {
	       index++;
	       text_displayed = string_copy(text[array],1,index);
	       cooldown = text_speed;
	       if (typewriter)
		   {
			   if ((soundPlaying != -1) and (audio_is_playing(soundPlaying))) audio_stop_sound(soundPlaying);
			   if (textSound[array] != -1) soundPlaying = audio_play_sound(textSound[array],0,false);
		   }
	   }
	}
	
	//Reset Array
	
	if (resetArray)
	{
		array += 1;
		text_displayed = "";
		text_length = -1;
		index = 0;
		resetArray = false;
		if (array_length_1d(text) == array) destroyTimer = 0;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (stopsCutscene) global.cutscene = false;
		if (targetRoom != -1)
		{
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = targetRoom;
			fade.alphaSpd = 0.02;
		}
		instance_destroy();
		if ((global.aprilFools) and (room == rm_AprilFools_Credits) and (!obj_AprilFools_Credits.alphaSwitch)) audio_play_sound(mus_EggGarden_Caves,0,true);
		//if ((owner != -1) and (instance_exists(owner))) owner.stateExTimer = 5;
	    destroyTimer = -1;
	}
}