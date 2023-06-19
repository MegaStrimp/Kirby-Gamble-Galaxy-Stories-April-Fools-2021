///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Bomb_Normal;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{	
	//Event Inherited
	
	event_inherited();
	
	//Gravity
	
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			//vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	//Particle Index
	
	explosionIndex += .5;
	if (explosionIndex >= (sprite_get_number(spr_Particle_Explosion3))) explosionIndex -= (sprite_get_number(spr_Particle_Explosion3));
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	sprite_index = sprIdle;
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}