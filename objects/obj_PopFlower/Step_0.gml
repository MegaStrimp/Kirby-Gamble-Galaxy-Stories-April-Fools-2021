///@description Main

if (!global.pause)
{
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (character)
		{
			//Green Greens
			
			case 0:
			sprClosed = spr_PopFlower_GreenGreens_Closed;
			sprOpen = spr_PopFlower_GreenGreens_Open;
			break;
		}
	}
	
	//Shake
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		shake = 1;
	}
	else
	{
		shake = 0;
	}

	//Open

	if ((!open) and (place_meeting(x,y,obj_Player)))
	{
		open = true;
		/*if (audio_is_playing(sfx)) audio_stop_sound(sfx);
		audio_play_sound(sfx,0,false);
		var particle = instance_create_depth(x,y,depth,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.destroyAfterAnimation = true;
		global.points += points;
		global.pointStars += pointStarPoints;*/
	}
	
	//Animation
	
	image_speed = 1;
	
	if (open)
	{
		sprite_index = sprOpen;
	}
	else
	{
		sprite_index = sprClosed
	}
}
else
{
	image_speed = 0;
	shake = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}