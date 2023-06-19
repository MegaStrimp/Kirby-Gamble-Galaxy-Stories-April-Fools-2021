///@description Main

//Characters

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
		sprIdle = spr_Projectile_Beam_Normal;
		break;
		
		//Enemy
		
		case 1:
		sprIdle = spr_Projectile_Beam_Enemy;
		break;
		
		//Mystic Normal
		
		case 2:
		sprIdle = spr_Projectile_MysticBeam_Normal;
		break;
		
		//Mystic Enemy
		
		case 3:
		sprIdle = spr_Projectile_MysticBeam_Enemy;
		break;
		
		//Fire
		
		case 4:
		sprIdle = spr_Projectile_Beam_Fire;
		break;
		
		//Ufo
		
		case 5:
		sprIdle = spr_Projectile_Beam_Ufo;
		break;
	}
	setupTimer = -1;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Destroy
	
	if (enemy)
	{
		if (instance_exists(owner))
		{
		    if (owner.hurt)
		    {
		        instance_destroy();
		    }
		}
		else
		{
		    instance_destroy();
		}
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Trail
	
	if ((character == 2) or (character == 3))
	{
		/*var afterimage = instance_create_depth(x,y,depth + 1,obj_Afterimage);
		afterimage.image_speed = 0;
		afterimage.sprite_index = sprite_index;
		afterimage.image_index = image_index;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .3;
		afterimage.destroyTimer = 3;*/
	}
	
	//Mask
	
	if (visible)
	{
		mask_index = sprite_index;
	}
	else
	{
		mask_index = -1;
	}
	
	//Movement
	
	if (orbitSpd != 0) orbit += orbitSpd;
	
	if (state == 0)
	{
		angle += spd;
		if ((hasLimit) and (((sign(spd) == -1) and ((angle < 335) and (angle > 135))) or ((sign(spd) == 1) and ((angle > 205) and (angle < 225))))) instance_destroy(); //angle = 270 - (sign(spd) * 65);
		if (angle >= 360) angle -= 360;
		if (angle < 0) angle += 360;
		if (instance_exists(owner))
		{
			if (owner.hurt)
			{
				instance_destroy();
			}
		}
	}
	else if (state == 2)
	{
		angle += spd;
		if (angle >= 360) angle -= 360;
		if (angle < 0) angle += 360;
		if (instance_exists(owner))
		{
			if (owner.attackState == 2)
			{
				state = 1;
			}
		}
	}
	
	//Position
	
	if ((state == 0) or (state == 2))
	{
		if (instance_exists(owner))
		{
			if ((state == 2) and (orbit < orbitMax)) orbit += 1;
			x = lengthdir_x(orbit, angle) + (owner.x + centerX);
			y = lengthdir_y(orbit, angle) + (owner.y + centerY);
		}
		else
		{
			instance_destroy();
		}
	}
	else if (state == 1)
	{
		speed = spd;
	}
	
	//Invis Timer
	
	if (invisTimer > 0)
	{
		invisTimer -= 1;
	}
	else if (invisTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		invisTimer = invisTimerMax;
	}
	
	//Alpha Timer
	
	if (alphaTimer > 0)
	{
		alphaTimer -= 1;
	}
	else if (alphaTimer == 0)
	{
		if (image_alpha == 1)
		{
			image_alpha = .1;
		}
		else
		{
			image_alpha = 1;
		}
		alphaTimer = alphaTimerMax;
	}
	
	//Pulse Timer
	
	if (pulseTimer > 0)
	{
		pulseTimer -= 1;
	}
	else if (pulseTimer == 0)
	{
		if (image_index == 0)
		{
			image_index = imageIndex;
		}
		else
		{
			image_index = 0;
		}
		pulseTimer = pulseTimerMax;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x,y,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Spark1;
		if (character == 5) par.sprite_index = spr_Particle_Spark2;
		par.image_index = irandom_range(0,par.image_number - 1);
		par.imageSpeed = 0;
		par.destroyTimer = 1;
		particleTimer = particleTimerMax + irandom_range(-4,4);
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Animation
	
	image_speed = imageSpeed;
	
	sprite_index = sprIdle;
	
	if (character == 5)
	{
		shakeX = 2;
		shakeY = 2;
	}
}
else
{
	image_speed = 0;
	speed = 0;
}