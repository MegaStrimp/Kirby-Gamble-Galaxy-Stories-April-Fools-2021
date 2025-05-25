///@description Main

//Get Inhaled

scr_Object_Inhale();

if (!global.pause)
{
	//Gravity
	
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	//Movement
	
	hsp = movespeed * dir;
	
	if (!insideWall)
	{
		//Horizontal Collision
		
		if (place_meeting(x + hsp,y,obj_Wall))
		{
			if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
			audio_play_sound(snd_AbilityStarBounce,0,false);
			dir *= -1;
		}
		
		x += hsp;
		
		//Vertical Collision
		
		if (place_meeting(x,y + 1,obj_Wall))
		{
			if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
			audio_play_sound(snd_AbilityStarBounce,0,false);
			vsp = -jumpspeed;
		}
		
		if (place_meeting(x,y + vsp,obj_Wall))
		{
			while (!place_meeting(x,y + (sign(vsp) / 10),obj_Wall))
			{ 
			    y += (sign(vsp) / 10);
			}
			if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
			audio_play_sound(snd_AbilityStarBounce,0,false);
			vsp = 0;
		}
		
		y += vsp;
		
		//Destroy
		
		if (position_meeting(x,y,obj_Wall))
		{
			if (!((instance_place(x,y,obj_Wall)).platform))
			{
				insideWall = true;
				destroyTimer = destroyTimerMin;
			}
		}
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (audio_is_playing(snd_AbilityStarDestroy)) audio_stop_sound(snd_AbilityStarDestroy);
		audio_play_sound(snd_AbilityStarDestroy,0,false);
		destroy = true;
		destroyTimer = -1;
	}
	
	//Aura Timer
	
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		if (hasAura)
		{
			hasAura = false;
		}
		else
		{
			hasAura = true;
		}
		auraTimer = auraTimerMax;
	}
	
	if (destroy)
	{
		for (var i = 0; i < 4; i++)
		{
			var parDirection = (45 + (90 * i)) * dir;
			
			var parScaleDir = 1;
			if ((parDirection > 90) and (parDirection <= 270))
			{
				var parScaleDir = -1;
			}
			
			var par = instance_create_depth(x,y,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_SmallStar;
			par.image_index = 0;
			par.imageSpeed = 0;
			par.spdBuiltIn = 6;
			par.fricSpd = .6;
			par.direction = parDirection;
			par.destroyTimer = 20;
			if ((parDirection > 90) and (parDirection <= 270))
			{
				var parScaleDir = -1;
			}
			par.dir = parScaleDir;
		}
		instance_destroy();
	}
	
	//Off Screen Turning
	
	if (x <= ((sprite_get_width(mask_index) / 2) + 1)) dir = 1;
	if (x >= (room_width - ((sprite_get_width(mask_index) / 2) + 1))) dir = -1;
	
	//Death On Bottom
	
	if (y >= room_height + 24) destroyTimer = 0;
	
	//Animation
	
	image_xscale = scale * dir;
	image_yscale = scale;
	
	image_speed = 1 * dir;
}
else
{
	image_speed = 0;
}