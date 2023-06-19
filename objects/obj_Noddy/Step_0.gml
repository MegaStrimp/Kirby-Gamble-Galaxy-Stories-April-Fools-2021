///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Noddy_Normal_Idle;
		sprWalk = spr_Noddy_Normal_Walk;
		sprSleep = spr_Noddy_Normal_Sleep;
		sprHurt = spr_Noddy_Normal_Hurt;
		break;
	}
	if (state == 1) sleepStopTimer = sleepStopTimerMax;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Normal
		
		case 0:
		if ((!hurt) and (!sleepReady) and (!sleepStop) and (!sleep) and (!attack))
		{
			if (parasol)
			{
				scr_AI_HorizontalStraightMovement(false,true);
			}
			else
			{
				scr_AI_HorizontalStraightMovement(true,true);
			}
		}
		else
		{
			hsp = 0;
		}
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (hsp == 0)
			{
				if (sleep)
				{
					sprite_index = sprSleep;
				}
				else
				{
					sprite_index = sprIdle;
				}
			}
			else
			{
				sprite_index = sprWalk;
			}
		}
		break;
		
		//Sleep
		
		case 1:
		sleep = true;
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			sprite_index = sprSleep;
		}
		break;
	}
	
	if (!hurt)
	{
		//Yawn
		
		if ((sleep) and (!yawned) and (floor(image_index) == 2))
		{
			yawned = true;
			var par = instance_create_depth(x - (14 * dirX), y + 2,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Bubble1;
			par.hsp = (.2 * dirX);
			par.vsp = -.5;
			par.destroyTimer = 60;
		}
		
		//Sleep Timer
		
		if (sleepTimer > 0)
		{
			sleepTimer -= 1;
		}
		else if (sleepTimer == 0)
		{
			sleepTimer = -1;
		}
		
		//Sleep Ready Timer
		
		if (sleepReadyTimer > 0)
		{
			sleepReadyTimer -= 1;
		}
		else if (sleepReadyTimer == 0)
		{
			image_index = 0;
			sleepReady = true;
			sleepReadyTimer = -1;
		}
		
		//Sleep Stop Timer
		
		if (sleepStopTimer > 0)
		{
			sleepStopTimer -= 1;
		}
		else if (sleepStopTimer == 0)
		{
			image_index = 0;
			sleepStop = true;
			sleep = false;
			sleepStopTimer = -1;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}