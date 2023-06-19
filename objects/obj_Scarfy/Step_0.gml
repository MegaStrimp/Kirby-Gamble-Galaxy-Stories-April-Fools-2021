///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BrontoBurt_Normal_Idle;
		sprReady = spr_BrontoBurt_Normal_Ready;
		sprWalk = spr_BrontoBurt_Normal_Walk;
		sprFly = spr_BrontoBurt_Normal_Fly;
		sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
		sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
		break;
	}
}

//Hurt Sprite

if (place_meeting(x,y + 1,collisionY))
{
	sprHurt = sprHurtGround;
}
else
{
	sprHurt = sprHurtFly;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Vertical Wave Movement with Horizontal Straight Movement
		
		case 0:
		if (!hurt)
		{
			scr_AI_VerticalWaveMovement(false);
			scr_AI_HorizontalStraightMovement(true,false);
			scr_HorizontalFriction();
		}
		else
		{
			hsp = 0;
			vsp = 0;
		}
		
		if ((hurt) and (sprHurt != "self"))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (sign(vsp) > 0)
			{
				image_speed = 1;
			}
			else
			{
				image_speed = 2;
			}
			sprite_index = sprFly;
		}
		break;
		
		//Ascend and Dash when Player gets near
		
		case 1:
		if (instance_exists(obj_Player))
		{
			if ((!state1Trigger) and ((distance_to_object(obj_Player) <= triggerRange)))
			{
				state1Trigger = true;
				vspDummy = -jumpspeed;
			}
		}
		
		if (state1Trigger)
		{
			hasYCollision = false;
			hasGravity = false;
			if (vspDummy < 0) vspDummy += accel;
			if (hspDummy < movespeed) hspDummy += accel;
			hsp = (hspDummy * walkDirX);
			vsp = (vspDummy * walkDirY);
		}
		else
		{
			hasYCollision = true;
			hasGravity = true;
		}
		
		if ((hurt) and (sprHurt != "self"))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (state1Trigger)
			{
				image_speed = 2;
				sprite_index = sprFly;
			}
			else
			{
				image_speed = 1;
				sprite_index = sprReady;
			}
		}
		break;
		
		//Horizontal Straight Movement and Jump with Timer
		
		case 2:
		hasGravity = true;
		if ((!hurt))
		{
			scr_AI_HorizontalStraightMovement(true,false);
		}
		else
		{
			hsp = 0;
		}
		
		if ((hurt) and (sprHurt != "self"))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (sign(vsp) > 0)
			{
				image_speed = 1;
			}
			else
			{
				image_speed = 2;
			}
			sprite_index = sprFly;
		}
		break;
	}
	
	//Jump Timer
	
	if (jumpTimer > 0)
	{
		jumpTimer -= 1;
	}
	else if (jumpTimer == 0)
	{
		jumpTimer = -1;
		switch (state)
		{
			case 2:
			vsp = -jumpspeed;
			jumpTimer = jumpTimerMax;
			break;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}