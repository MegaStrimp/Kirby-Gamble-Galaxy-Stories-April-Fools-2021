///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Search_Normal_Idle;
		sprCharge = spr_Search_Normal_Charge;
		sprHurt = spr_Search_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Trigger Charge
	
	if ((!charge) and ((instance_exists(obj_Player)) and (distance_to_object(obj_Player) < 120)))
	{
		charge = true;
		explodeTimer = explodeTimerMax;
	}
	
	//Scale Ex
	
	var scaleSpd = scaleExTempSpd;
	if (charge) scaleSpd = scaleExTempSpdMax;
	
	scaleExTemp += scaleSpd * scaleExTempDir;
	
	if (abs(scaleExTemp) > scaleExTempMax)
	{
		scaleExTemp = scaleExTempMax * scaleExTempDir;
		scaleExTempDir *= -1;
	}
	
	scaleExX = scaleExTemp;
	scaleExY = scaleExTemp;
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != "self"))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (charge)
		{
			sprite_index = sprCharge;
		}
		else
		{
			sprite_index = sprIdle;
		}
	}
	
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
		explodeTimer = -1;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}