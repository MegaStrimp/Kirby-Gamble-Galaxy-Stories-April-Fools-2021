///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_EnemyParasol_Normal_Idle;
		sprFloatReady = spr_EnemyParasol_Normal_FloatReady;
		sprFloat = spr_EnemyParasol_Normal_Idle;
		sprHurt = "self";
		break;
		
		//Sci-Fi
		
		case 1:
		sprIdle = spr_EnemyParasol_SciFi_Idle;
		sprFloatReady = spr_EnemyParasol_SciFi_FloatReady;
		sprFloat = spr_EnemyParasol_SciFi_Idle;
		sprHurt = "self";
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	if (state == 1)
	{
		if (float)
		{
			destroyOutsideView = true;
			hsp = 0;
			vsp = lerp(vsp,floatspeed,.1);
		}
		else
		{
			destroyOutsideView = false;
			if (!hurt)
			{
				scr_AI_HorizontalStraightMovement(true,false);
				scr_AI_VerticalWaveMovement(false);
			}
			else
			{
				hsp = 0;
				vsp = 0;
			}
		}
	}
	
	//Float Timer
	
	if (state == 1)
	{
		if (floatTimer > 0)
		{
			floatTimer -= 1;
		}
		else if (floatTimer == 0)
		{
			float = true;
			sprite_index = sprFloatReady;
			floatSpriteSet = true;
			floatTimer = -1;
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != "self"))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (!float)
		{
			sprite_index = sprIdle;
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}