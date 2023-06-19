///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Button_Normal_Idle;
		sprPressed = spr_Button_Normal_Pressed;
		break;
		
		//Space
		
		case 1:
		sprIdle = spr_Button_Space_Idle;
		sprPressed = spr_Button_Space_Pressed;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Activate
	
	if ((!active) and (place_meeting(x,y,obj_Projectile)))
	{
		var collidingProjectile = instance_place(x,y,obj_Projectile);
		if ((collidingProjectile.hurtsObject) and (collidingProjectile.owner != id))
		{
			if ((damageType == "none") or (collidingProjectile.damageType == "all") or (damageType = collidingProjectile.damageType))
			{
				with (obj_Gate)
				{
			        if (number == other.number)
					{
						active = true;
						stopped = false;
						stopTimer = stopTimerMax;
						if (other.revertTimer != -1) revertTimer = other.revertTimer;
					}
			    }
				active = true;
			}
		}
		
		if ((collidingProjectile.destroyableByObject) and (collidingProjectile.owner != id))
		{
			if (collidingProjectile.particleOnHit)
			{
				var particle = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_Particle);
				particle.sprite_index = collidingProjectile.particleOnHitSpr;
				particle.dir = collidingProjectile.dirX;
				particle.destroyAfterAnimation = true;
			}
			
			if (collidingProjectile.deathParticlesOnHit)
			{
				var particle = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_DeathParticles);
				particle.state = collidingProjectile.deathParticlesOnHitNumber;
				particle.dir = collidingProjectile.dirX;
			}
			
			if (collidingProjectile.objectOnHit)
			{
				instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,objectOnHitObj);
			}
			instance_destroy(collidingProjectile);
		}
	}
	
	if ((!active) and (place_meeting(x,y,obj_Player)))
	{
	    with (obj_Gate)
		{
	        if (number == other.number)
			{
				active = true;
				stopped = false;
				stopTimer = stopTimerMax;
				revertTimer = other.revertTimer;
			}
	    }
		active = true;
	}
	
	//Animation
	
	if (active)
	{
		sprite_index = sprPressed;
	}
	else
	{
		sprite_index = sprIdle;
	}
}