///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (damageType)
	{
		//Normal
		
		case "none":
		sprIdle = spr_AbilityBlock_Normal_Idle;
		topWallSprite = spr_AbilityBlock_Normal_Top;
		break;
		
		//Cutter
		
		case "cutter":
		sprIdle = spr_AbilityBlock_Cutter_Idle;
		topWallSprite = spr_AbilityBlock_Cutter_Top;
		break;
		
		//Beam
		
		case "beam":
		sprIdle = spr_AbilityBlock_Beam_Idle;
		topWallSprite = spr_AbilityBlock_Beam_Top;
		break;
		
		//Stone
		
		case "stone":
		sprIdle = spr_AbilityBlock_Stone_Idle;
		topWallSprite = spr_AbilityBlock_Stone_Top;
		break;
		
		//Ufo
		
		case "ufo":
		sprIdle = spr_AbilityBlock_Ufo_Idle;
		topWallSprite = spr_AbilityBlock_Ufo_Top;
		break;
		
		//Mirror
		
		case "mirror":
		sprIdle = spr_AbilityBlock_Mirror_Idle;
		topWallSprite = spr_AbilityBlock_Mirror_Top;
		break;
		
		//Ninja
		
		case "ninja":
		sprIdle = spr_AbilityBlock_Ninja_Idle;
		topWallSprite = spr_AbilityBlock_Ninja_Top;
		break;
		
		//Bomb
		
		case "bomb":
		sprIdle = spr_AbilityBlock_Bomb_Idle;
		topWallSprite = spr_AbilityBlock_Bomb_Top;
		break;
		
		//Fire
		
		case "fire":
		sprIdle = spr_AbilityBlock_Fire_Idle;
		topWallSprite = spr_AbilityBlock_Fire_Top;
		break;
		
		//Ice
		
		case "ice":
		sprIdle = spr_AbilityBlock_Ice_Idle;
		topWallSprite = spr_AbilityBlock_Ice_Top;
		break;
		
		//Plasma
		
		case "plasma":
		sprIdle = spr_AbilityBlock_Plasma_Idle;
		topWallSprite = spr_AbilityBlock_Plasma_Top;
		break;
		
		//Yoyo
		
		case "yoyo":
		sprIdle = spr_AbilityBlock_Yoyo_Idle;
		topWallSprite = spr_AbilityBlock_Yoyo_Top;
		break;
		
		//Wheel
		
		case "wheel":
		sprIdle = spr_AbilityBlock_Wheel_Idle;
		topWallSprite = spr_AbilityBlock_Wheel_Top;
		break;
		
		//Artist
		
		case "artist":
		sprIdle = spr_AbilityBlock_Artist_Idle;
		topWallSprite = spr_AbilityBlock_Artist_Top;
		break;
		
		//Fighter
		
		case "fighter":
		sprIdle = spr_AbilityBlock_Fighter_Idle;
		topWallSprite = spr_AbilityBlock_Fighter_Top;
		break;
		
		//Suplex
		
		case "suplex":
		sprIdle = spr_AbilityBlock_Suplex_Idle;
		topWallSprite = spr_AbilityBlock_Suplex_Top;
		break;
		
		//Wing
		
		case "wing":
		sprIdle = spr_AbilityBlock_Wing_Idle;
		topWallSprite = spr_AbilityBlock_Wing_Top;
		break;
		
		//Jet
		
		case "jet":
		sprIdle = spr_AbilityBlock_Jet_Idle;
		topWallSprite = spr_AbilityBlock_Jet_Top;
		break;
		
		//Sword
		
		case "sword":
		sprIdle = spr_AbilityBlock_Sword_Idle;
		topWallSprite = spr_AbilityBlock_Sword_Top;
		break;
		
		//Parasol
		
		case "parasol":
		sprIdle = spr_AbilityBlock_Parasol_Idle;
		topWallSprite = spr_AbilityBlock_Parasol_Top;
		break;
		
		//Hammer
		
		case "hammer":
		sprIdle = spr_AbilityBlock_Hammer_Idle;
		topWallSprite = spr_AbilityBlock_Hammer_Top;
		break;
		
		//Bell
		
		case "bell":
		sprIdle = spr_AbilityBlock_Bell_Idle;
		topWallSprite = spr_AbilityBlock_Bell_Top;
		break;
		
		//Water
		
		case "water":
		sprIdle = spr_AbilityBlock_Water_Idle;
		topWallSprite = spr_AbilityBlock_Water_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Destroy
	
	if (!isTop)
	{
		if (hp <= 0)
		{
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
			global.points += points;
			instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth - 1,obj_PointStar);
			instance_destroy();
		}
	}
	
	//Animation
	
	if (isTop)
	{
		sprite_index = topWallSprite;
	}
	else
	{
		sprite_index = sprIdle;
	}
}