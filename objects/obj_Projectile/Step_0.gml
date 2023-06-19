///@description Main

if ((!pausable) and (!global.pause)) pausable = true;

if (((pausable) and (!global.pause)) or (!pausable))
{	
	//Hurts Player
	
	if (hurtsPlayer)
	{
		scr_Enemy_HurtsPlayer();
		
		if ((destroyableByPlayer) and (place_meeting(x,y,obj_Player)))
		{
			if (particleOnHit)
			{
				var particle = instance_create_depth(x,y,depth,obj_Particle);
				particle.sprite_index = particleOnHitSpr;
				particle.dir = dirX;
				particle.destroyAfterAnimation = true;
			}
			
			if (deathParticlesOnHit)
			{
				var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
				particle.state = deathParticlesOnHitNumber;
				particle.dir = dirX;
			}
			
			if (objectOnHit)
			{
				instance_create_depth(x,y,depth,objectOnHitObj);
			}
			instance_destroy();
		}
	}
	
	//Reflect Projectiles
	
	if (canReflect)
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			if ((enemy != collidingProjectile.enemy) and (collidingProjectile.canBeReflected))
			{
				if (audio_is_playing(snd_AbilityStarBounce)) audio_stop_sound(snd_AbilityStarBounce);
				audio_play_sound(snd_AbilityStarBounce,0,false);
				if (collidingProjectile.destroyableByProjectile) instance_destroy(collidingProjectile);
				var reflection = instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,obj_Projectile_MirrorReflection);
				reflection.enemy = enemy;
				reflection.target = collidingProjectile.owner;
				
				//Lower Hp
				
				if (object_index == obj_Projectile_MirrorShield)
				{
					owner.mirrorShieldHp -= 1;
					if (owner.mirrorShieldHp == 0)
					{
						if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
						audio_play_sound(snd_Charge_Ready,0,false);
						var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
						particle.image_speed = 2;
						particle.sprite_index = spr_Particle_Flash1;
						particle.scale = 1;
						particle.destroyAfterAnimation = true;
						owner.mirrorShieldTimer = owner.mirrorShieldTimerMax;
						instance_destroy();
					}
				}
			}
		}
	}
	
	//Hurt By Projectiles
	
	if (destroyableByProjectile)
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			if ((enemy != collidingProjectile.enemy) and (collidingProjectile.hurtsProjectile))
			{
				if (collidingProjectile.destroyableByProjectile) instance_destroy(collidingProjectile);
				instance_destroy();
			}
		}
	}
	
	//Destroy Outside View
	
	if (destroyOutsideView)
	{
		scr_DestroyOutsideView();
	}
	
	//Scale
	
	if (setScale)
	{
		image_xscale = scale * dirX;
		image_yscale = scale * dirY;
	}
}
else
{
	image_speed = 0;
}

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	setupTimer = -1;
}