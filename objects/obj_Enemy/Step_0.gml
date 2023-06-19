///@description Main

//Variables

if (parasol)
{
	gravLimit = gravLimitParasol;
	grav = gravParasol;
	if ((!instance_exists(parasolObject)) or (place_meeting(x,y + 1,obj_Wall))) parasol = false;
}
else
{
	gravLimit = gravLimitNormal;
	grav = gravNormal;
}

if (!global.pause)
{
	//Destroy Outside View
	
	if ((destroyOutsideView) or (hasSpawner))
	{
		var x1 = camera_get_view_x(gameView) - spawnerRange;
		var y1 = camera_get_view_y(gameView) - spawnerRange;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;
		
		if (!point_in_rectangle(x,y,x1,y1,x2,y2))
		{
			if (hasSpawner) spawner.spawn = true;
			instance_destroy();
		}
	}
	
	//Gravity
	
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	//Knockback
	
	if (knockbackX >= decel) knockbackX -= decel;
	if (knockbackX <= -decel) knockbackX += decel;
	if ((knockbackX > -decel) and (knockbackX < decel)) knockbackX = 0;
	
	if (knockbackY >= grav) knockbackY -= grav;
	if (knockbackY <= -grav) knockbackY += grav;
	if ((knockbackY > -grav) and (knockbackY < grav)) knockbackY = 0;
	
	//Mantle
	
	if ((!isBoss) and (place_meeting(x,y,obj_Projectile_MantleMask)))
	{
		targetDirX = sign(x - obj_Player.x);
		hspDummy = 0;
		hsp = 0;
		dirX = targetDirX;
		walkDirX = targetDirX;
		if (hasYKnockback) vsp = -(jumpspeed / 2);
	}
	
	//Death
	
	if (death)
	{
		if (takenDamageType == 3)
		{
			var iceCube = instance_create_depth(x,y,depth,obj_Projectile_IceCube);
			iceCube.dirX = dirX;
			if (sprHurt == "self")
			{
				iceCube.sprHurt = sprite_index;
				iceCube.enemyImageIndex = image_index;
			}
			else
			{
				iceCube.sprHurt = sprHurt;
			}
		}
		else
		{
			audio_play_sound(snd_DeathParticles,0,false);
			if (isBoss)
			{
				for (var i = 0; i < 3; i++)
				{
					var particle = instance_create_depth(x,y,depth,obj_Particle);
					particle.followObject = false;
					particle.followedObject = id;
					particle.turnAroundObject = true;
					particle.sprite_index = spr_Particle_Explosion2;
					particle.image_index = i;
					particle.imageSpeed = 0;
					particle.spd = -15;
					if (i == 0) particle.spd = -30;
					particle.orbit = 24;
					if (i == 0) particle.orbit = 6;
					particle.angle = 90;
					if (i == 2) particle.angle = 270;
					particle.visible = false;
					particle.destroyTimer = 30;
				}
				for (var i = 0; i < 8; i++)
				{
					var parDirection = (45 * i);
				
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_SpitStar_Small;
					par.image_index = 1;
					par.imageSpeed = 0;
					par.spdBuiltIn = 6;
					par.fricSpd = .2;
					par.direction = parDirection;
					par.destroyTimer = 45;
					var parScaleDir = 1;
					if ((par.direction > 90) and (par.direction <= 270))
					{
						var parScaleDir = -1;
					}
					par.dir = parScaleDir;
				}
			}
			else
			{
				var deathParticles = instance_create_depth(x,y,depth,obj_DeathParticles);
				deathParticles.state = irandom_range(0,1);
				if (objectOnDeath) instance_create_depth(x,y,depth,objectOnDeathObj);
			}
		}
		global.points += points;
		if (hasSpawner) spawner.spawn = true;
		if (global.aprilFools) audio_play_sound(snd_Oof,0,false);
		instance_destroy();
	}
	
	//Animation
	
	scaleExX = lerp(scaleExX,0,scaleExSpd);
	scaleExY = lerp(scaleExY,0,scaleExSpd);
	
	image_xscale = scale * dirX;
	image_yscale = scale * dirY;
	
	//Collision
	
	scr_Enemy_Collision();
	
	//Bumpers
	
	if (place_meeting(x,y,obj_Bumper) and ((hasXKnockback) or ((hasYKnockback))))
	{
		//Variables
		
		var collidedBumper = instance_place(x,y,obj_Bumper);
		collidedBumper.hit = true;
		collidedBumper.hitTimer = collidedBumper.hitTimerMax;
		
		//Sound
		
		audio_play_sound(snd_Bumper,0,false);
		
		//Vertical Knockback
		
		if (hasYKnockback)
		{
			if (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) + 4))
			{
				knockbackY = collidedBumper.force;
			}
			if (y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) - 4))
			{
				knockbackY = -collidedBumper.force;
			}
			if ((y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) + 4)) and (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) - 4)))
			{
				knockbackY = -(collidedBumper.force / 2);
			}
		}
		
		//Horizontal Knockback
		
		if (hasXKnockback)
		{
			if (x > ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2)) + 4))
			{
				knockbackX = collidedBumper.force;
			}
			if (x < ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2)) - 4))
			{
				knockbackX = -collidedBumper.force;
			}
		}
	}
	
	//Springs
	
	if ((place_meeting(x,y + 1,obj_Spring)) and (hasYKnockback))
	{
		if (sign(vsp + knockbackY) == 1)
		{
			//Variables
			
			var collidedSpring = instance_place(x,y + 1,obj_Spring);
			collidedSpring.hit = true;
			collidedSpring.hitTimer = collidedSpring.hitTimerMax;
			
			//Particles
			
			for (var i = 0; i < 2; i++)
			{
				var par = instance_create_depth(collidedSpring.x + (8 * collidedSpring.image_xscale),collidedSpring.y + (4 * collidedSpring.image_yscale),collidedSpring.depth + 1,obj_Particle);
				par.sprite_index = spr_Particle_SmallStar;
				par.hsp = 6;
				if (i == 0)
				{
					par.hsp = 2;
					par.dir = 1;
				}
				else if (i == 1)
				{
					par.hsp = -2;
					par.dir = -1;
				}
				par.vsp = -4;
				par.grav = .5;
				par.destroyTimer = 15;
				par.hasGravity = true;
			}
			
			//Sound
			
			audio_play_sound(snd_BigJump,0,false);
			
			//Vertical Knockback
			
			knockbackY = -collidedSpring.force;
		}
	}
	
	//Trampolines
	
	if ((place_meeting(x,y - 1,obj_Trampoline)) and (hasYKnockback))
	{
		if (sign(vsp + knockbackY) == 1)
		{
			//Variables
			
			var collidedTrampoline = instance_place(x,y - 1,obj_Trampoline);
			collidedTrampoline.jumpCount += 1;
			collidedTrampoline.resetTimer = collidedTrampoline.resetTimerMax;
			collidedTrampoline.hit = true;
			collidedTrampoline.hitTimer = collidedTrampoline.hitTimerMax;
			
			//Particles
			
			if (collidedTrampoline.jumpCount >= (floor(collidedTrampoline.jumpCountMax / 2)))
			{
				for (var i = 0; i < 2; i++)
				{
					var par = instance_create_depth(collidedTrampoline.x + (12 * collidedTrampoline.image_xscale),collidedTrampoline.y,collidedTrampoline.depth + 1,obj_Particle);
					par.sprite_index = spr_Particle_SmallStar;
					par.hsp = 6;
					if (i == 0)
					{
						par.hsp = 2;
					}
					else if (i == 1)
					{
						par.hsp = -2;
					}
					par.vsp = -4;
					par.grav = .5;
					par.destroyTimer = 15;
					var parScaleDir = 1;
					if ((par.direction > 90) and (par.direction <= 270))
					{
						var parScaleDir = -1;
					}
					par.dir = parScaleDir;
					par.hasGravity = true;
				}
				
				//Sound
				
				audio_play_sound(snd_BigJump,0,false);
			}
			else
			{
				audio_play_sound(snd_Jump,0,false);
			}
			
			//Vertical Knockback
			
			knockbackY = -(collidedTrampoline.force / 3) - ((collidedTrampoline.force / collidedTrampoline.jumpCountMax) * collidedTrampoline.jumpCount);
		}
	}
	
	//Hurt Timer
	
	if (hurtTimer > 0)
	{
		hurtTimer -= 1;
	}
	else if (hurtTimer == 0)
	{
		if (hp < 1)
        {
            death = true;
        }
        else if (hp > 0)
        {
            hurt = false;
        }
		hurtTimer = -1;
	}
	
	//Hurt Stop Timer
	
	if (hurtStopTimer > 0)
	{
		hurtStopTimer -= 1;
	}
	else if (hurtStopTimer == 0)
	{
		speed = 8;
		hurtStopTimer = -1;
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
	
	//Invincible Flash Timer
	
	if (invincible)
	{
		if (invincibleFlashTimer > 0)
		{
			invincibleFlashTimer -= 1;
		}
		else if (invincibleFlashTimer == 0)
		{
			if (invincibleFlash)
			{
				invincibleFlash = false;
			}
			else
			{
				invincibleFlash = true;
			}
			invincibleFlashTimer = invincibleFlashTimerMax;
		}
	}
	else
	{
		invincibleFlash = false;
		invincibleFlashTimer = -1;
	}
	
	//Hurt
	
	if (!hurtable)
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			if ((collidingProjectile.destroyableByEnemy) and (collidingProjectile.owner != id))
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
	else if ((!invincible) and (hp > 0))
	{
		if (place_meeting(x,y,obj_Projectile))
		{
			var collidingProjectile = instance_place(x,y,obj_Projectile);
			
			if ((collidingProjectile.owner != id) and (((!isBoss) and (collidingProjectile.hurtsEnemy)) or ((isBoss) and (collidingProjectile.hurtsBoss))))
			{
				audio_play_sound(snd_EnemyHurt,0,false);
				if (collidingProjectile.dmg >= hp)
				{
					hurtTimer = hurtTimerMax - 2;
					hurtStopTimer = hurtStopTimerMax;
		            shake = 1;
		            if (instance_exists(obj_Camera)) obj_Camera.shake = 3;
				}
				else
				{
					hurtTimer = hurtTimerMax;
				}
				hp -= collidingProjectile.dmg;
				direction = point_direction(x,y,collidingProjectile.x,collidingProjectile.y) + irandom_range(150,210);
				scr_HurtKnockback(self,collidingProjectile);
				takenDamageType = collidingProjectile.damageType;
				hurt = true;
				invincible = true;
				invincibleTimer = collidingProjectile.hitInvincibility;
				invincibleFlashTimer = invincibleFlashTimerMax;
				if (isMystic) fluxOverlayAlpha = .8;
			}
			
			if (collidingProjectile.owner != id)
			{
				switch (collidingProjectile.damageType)
				{
					case "cutter":
					var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
					particle.sprite_index = spr_Particle_CutterHit;
					particle.destroyAfterAnimation = true;
					break;
				
					case "ninja":
					var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
					particle.sprite_index = spr_Particle_CutterHit;
					particle.destroyAfterAnimation = true;
					break;
				
					case "wing":
					var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
					particle.sprite_index = spr_Particle_CutterHit;
					particle.destroyAfterAnimation = true;
					break;
				}
			}
			
			if ((collidingProjectile.destroyableByEnemy) and (collidingProjectile.owner != id))
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
		
		if (place_meeting(x,y,obj_Spike))
		{
			var collidingSpike = instance_place(x,y,obj_Spike);
			{
				hp -= collidingSpike.dmg;
				scr_HurtKnockback(self,collidingSpike);
				hurt = true;
				hurtTimer = hurtTimerMax;
				invincible = true;
				invincibleTimer = invincibleTimerMax;
				invincibleFlashTimer = invincibleFlashTimerMax;
				if (isMystic) fluxOverlayAlpha = .8;
			}
		}
	}
	
	//Player Slide
	
	if ((place_meeting(x,y,obj_Projectile_SlideMask)) and (instance_exists(obj_Player)))
	{
		var collidingProjectile = instance_place(x,y,obj_Projectile_SlideMask);
		
		collidingProjectile.owner.jumpLimit = false;
		collidingProjectile.owner.jumpLimitTimer = collidingProjectile.owner.jumpLimitTimerMax;
		collidingProjectile.owner.duckSlide = false;
		collidingProjectile.owner.duck = false;
		collidingProjectile.owner.state = playerStates.normal;
		collidingProjectile.owner.hspLimit = false;
		collidingProjectile.owner.hspLimitTimer = collidingProjectile.owner.hspLimitTimerMax;
		
		scr_HurtKnockback(self,collidingProjectile.owner);
		
		collidingProjectile.owner.vsp = -(collidingProjectile.owner.jumpspeed / 1.25);
			
		if (collidingProjectile.owner.x > (x + 4))
		{
			collidingProjectile.owner.hsp = (collidingProjectile.owner.movespeed);
		}
		if (collidingProjectile.owner.x < (x - 4))
		{
			collidingProjectile.owner.hsp = -(collidingProjectile.owner.movespeed);
		}
		
		if (!hurtable)
		{
			var parDir = 1;
			if (collidingProjectile.x < x) parDir = -1;
			var parCarryStart = instance_create_depth(x + ((sprite_get_width(mask_index) / 2) * parDir),y,depth - 1,obj_Particle);
			parCarryStart.sprite_index = spr_Particle_SlideToSentry;
			parCarryStart.imageSpeed = 1;
			parCarryStart.destroyAfterAnimation = true;
		}
	}
	
	//Shine Effect Timer
	
	if (shineEffectTimer > 0)
	{
		shineEffectTimer -= 1;
	}
	else if (shineEffectTimer == 0)
	{
		var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth,obj_Particle);
		particle.sprite_index = spr_Particle_SmallSparkle_White;
		particle.destroyAfterAnimation = true;
		shineEffectTimer = shineEffectTimerMax;
	}
}

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (parasol)
	{
		parasolObject = instance_create_depth(x + (parasolX * dirX),y - (sprite_get_height(sprite_index) / 2) + parasolY,depth + 1,obj_EnemyParasol);
		parasolObject.parasolX = (parasolX * dirX);
		parasolObject.parasolY = parasolY;
		parasolObject.parasolOwner = id;
		parasolObject.dirX = -dirX;
	}
	setupTimer = -1;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}