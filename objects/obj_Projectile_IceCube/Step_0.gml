///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Ice_Normal;
		break;
		
		//Shadow
		
		case 1:
		sprIdle = spr_Projectile_Ice_Shadow;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	scr_Player_Inputs();
	
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	if ((!enemy) and (state == 0))
	{
		if (place_meeting(x,y,obj_Player))
		{
			audio_play_sound(snd_Spit,0,false);
			state = 1;
			if (obj_Player.x <= x) hsp = movespeed;
			if (obj_Player.x > x) hsp = -movespeed;
		}
	}
	
	//Flash Timer
	
	if (flashTimer > 0)
	{
		flashTimer -= 1;
	}
	else if (flashTimer == 0)
	{
		if (sprite_index == sprIdle)
		{
			sprite_index = sprHurt;
			image_index = enemyImageIndex;
		}
		else
		{
			sprite_index = sprIdle;
		}
		flashTimer = flashTimerMax;
	}
	
	//Flash Stop Timer
	
	if (flashStopTimer > 0)
	{
		flashStopTimer -= 1;
	}
	else if (flashStopTimer == 0)
	{
		sprite_index = sprIdle;
		flashTimer = -1;
		flashStopTimer = -1;
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}