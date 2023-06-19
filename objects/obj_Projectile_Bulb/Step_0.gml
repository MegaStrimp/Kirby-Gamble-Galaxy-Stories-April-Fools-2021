///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprReady = spr_Projectile_Bulb_Normal_Ready;
		sprIdle = spr_Projectile_Bulb_Normal_Idle;
		particleOnHitSpr = spr_Particle_Explosion4;
		break;
		
		//Shadow
		
		case 1:
		sprReady = spr_Projectile_Bulb_Shadow_Ready;
		sprIdle = spr_Projectile_Bulb_Shadow_Idle;
		particleOnHitSpr = spr_Particle_Explosion1;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth((x + irandom_range(-(sprite_get_width(sprite_index) / 2) - 6,(sprite_get_width(sprite_index) / 2)) + 6),(y + irandom_range(-(sprite_get_height(sprite_index) / 2) - 6,(sprite_get_height(sprite_index) / 2) + 6)),owner.depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Spark1;
		particle.destroyAfterAnimation = true;
		particle.pausable = pausable;
	    particleTimer = particleTimerMax;
	}
	
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	if (state == 1)
	{
		hsp = movespeed * dirX;
	}
	else
	{
		hsp = 0;
	}
	
	if (xPos < xPosMax)
	{
		xPos += .4;
	}
	else
	{
		xPos = xPosMax;
	}
	
	if (yPos > yPosMax)
	{
		yPos -= .4;
	}
	else
	{
		yPos = yPosMax;
	}
	
	//Sound
	
	if (!audio_is_playing(sparkSfx)) sparkSfx = audio_play_sound(snd_Spark,0,false);
	//Destroy
	
	if ((!instance_exists(owner)) or ((instance_exists(owner)) and (owner.hurt))) instance_destroy();
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	if (state == 0)
	{
		sprite_index = sprReady;
	}
	else if (state == 1)
	{
		sprite_index = sprIdle;
	}
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}