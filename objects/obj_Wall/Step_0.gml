///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (hasTop)
	{
		topWall = instance_create_depth(x,y,depth,object_index);
		if (topWallSprite != "none")
		{
			topWall.visible = true;
			topWall.sprite_index = topWallSprite;
		}
		topWall.mask_index = topWallMask;
		topWall.hsp = hsp;
		topWall.vsp = vsp;
		topWall.damageType = damageType;
		topWall.hasTop = false;
		topWall.isTop = true;
		topWall.enemyCollisionMask = enemyCollisionMask;
		topWall.topWallOwner = id;
	}
	if (hasEnemyWall)
	{
		var enemyWall = instance_create_depth(x,y,depth,obj_EnemyWall);
		enemyWall.owner = id;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Movement
	
	x += hsp;
	y += vsp;
	
	if (isTop) and (instance_exists(topWallOwner))
	{
		hsp = topWallOwner.hsp;
		vsp = topWallOwner.vsp;
		x = topWallOwner.x;
		y = topWallOwner.y;
	}
	
	//Explode Timer
	
	if (explodeTimer > 0)
	{
		explodeTimer -= 1;
	}
	else if (explodeTimer == 0)
	{
		if (canExplode)
		{
			with (obj_Wall)
			{
			    if (place_meeting(x,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x + 24,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x - 24,y,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y + 24,other))
				{
				    explodeTimer = explodeTimerMax;
				}
				if (place_meeting(x,y - 24,other))
				{
				    explodeTimer = explodeTimerMax;
				}
			}
			
			if (audio_is_playing(snd_BreakingWall)) audio_stop_sound(snd_BreakingWall);
			audio_play_sound(snd_BreakingWall,0,false);
			for (var i = 0; i < 2; i++)
			{
				var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
				particle.sprite_index = spr_Particle_Aura2;
				if (i == 0) particle.sprite_index = spr_Particle_Explosion1;
				particle.imageSpeed = 1;
				particle.destroyAfterAnimation = true;
			}
			for (var i = 0; i < 3; i++)
			{
				var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
				particle.sprite_index = spr_Particle_ShrinkingStar1;
				particle.imageSpeed = 1;
				particle.destroyAfterAnimation = true;
				particle.spdBuiltIn = 6;
				particle.fricSpd = .6;
				switch (i)
				{
					case 0:
					particle.direction = 90;
					break;
					
					case 1:
					particle.direction = 215;
					break;
					
					case 2:
					particle.direction = 325;
					break;
				}
			}
			
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			instance_destroy();
		}
		explodeTimer = -1;
	}
}

//Hurt

if (object)
{
	if (!invincible)
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			if ((collidingProjectile.hurtsObject) and (collidingProjectile.owner != id))
			{
				if ((damageType == "none") or (collidingProjectile.damageType == "all") or (damageType = collidingProjectile.damageType))
				{
					hp -= collidingProjectile.dmg;
					if (!collidingProjectile.destroyableByObject)
					{
						invincible = true;
						invincibleTimer = invincibleTimerMax;
					}
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
	}
	
	//Invincible Timer
	
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleTimer = -1;
	}
}
else if (!platform)
{
	if ((!enemyCollisionMask) and (place_meeting(x,y,obj_Projectile)))
	{
		var collidingProjectile = instance_place(x,y,obj_Projectile);
		
		if ((collidingProjectile.destroyableByWall) and (collidingProjectile.owner != id))
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
				instance_create_depth(collidingProjectile.x,collidingProjectile.y,collidingProjectile.depth,collidingProjectile.objectOnHitObj);
			}
			instance_destroy(collidingProjectile);
		}
	}
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}