///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WhispyWoods_Normal_Idle;
		sprBlink = spr_WhispyWoods_Normal_Blink;
		sprSpit = spr_WhispyWoods_Normal_Spit;
		sprHurt = spr_WhispyWoods_Normal_Hurt;
		sprDeath = spr_WhispyWoods_Normal_Death;
		mask_index = spr_WhispyWoods_Normal_Mask;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Activate
	
	if (activated)
	{
		bossOffsetY = y;
	}
	else
	{
		with (obj_Player)
		{
			if ((player == 0) and (y > (other.y - 24)))
			{
				other.activated = true;
				if (audio_is_playing(mus_BossTension)) audio_stop_sound(mus_BossTension);
				audio_play_sound(mus_Boss1,0,true);
			}
		}
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		attackTimer = -1;
		switch (state)
		{
			//Normal
			
			case 0:
			attack = 0;
			switch (attack)
			{
				case 0:
				spits = true;
				spitTimer = spitTimerMax;
				break;
				
				case 1:
				droppedItemObject = obj_Apple;
				droppedItemSprite = spr_Apple_Normal_Idle;
				dropCountMax = 3;
				dropTimer = dropTimerMax;
				break;
			}
			break;
		}
	}
	
	//Blink Timer
	
	if (blinkTimer > 0)
	{
		blinkTimer -= 1;
	}
	else if (blinkTimer == 0)
	{
		blink = true;
		blinkCountMax = irandom_range(1,2);
		blinkTimer = -1;
	}
	
	//Drop Timer
	
	if (dropTimer > 0)
	{
		dropTimer -= 1;
	}
	else if (dropTimer == 0)
	{
		var spawnDirX = 0;
		if (instance_exists(obj_Player))
		{
			var spawnDirX = sign(obj_Player.x - x);
		}
		var spawnX = (irandom_range(-12,42) * spawnDirX);
		var spawnY = ((64 + (irandom_range(0,38))) * dirY);
		var droppedItem = instance_create_depth(x + spawnX,y - spawnY,depth - 1,obj_WhispyWoods_Item);
		droppedItem.sprite_index = droppedItemSprite;
		droppedItem.targetObject = droppedItemObject;
		droppedItem.walkDirX = sign(spawnDirX);
		dropCount += 1;
		if (dropCount == dropCountMax)
		{
			dropCount = 0;
			attackTimer = attackTimerMax;
			dropTimer = -1;
		}
		else
		{
			dropTimer = dropTimerMax;
		}
	}
	
	//Spit Timer
	
	if (spitTimer > 0)
	{
		spitTimer -= 1;
	}
	else if (spitTimer == 0)
	{
		audio_play_sound(snd_AirPuff,0,false);
		var spitProj = instance_create_depth(x + (6 * dirX),y + (22 * dirY),depth - 1,obj_AirPuff);
		spitProj.sprite_index = spitProj.sprIdle;
		spitProj.decel = 0;
		spitProj.hsp = (8 * dirX);
		spitProj.dirX = dirX;
		if (instance_exists(obj_Player))
		{
			if (obj_Player.y >= y - 24)
			{
				spitProj.vsp = .5;
			}
			else
			{
				spitProj.vsp = -.5;
			}
		}
		spitProj.enemy = true;
		spitProj.destroyableByEnemy = false;
		spitProj.destroyableByObject = false;
		spitProj.hurtsObject = false;
		spitProj.hurtsEnemy = false;
		spitProj.hurtsPlayer = true;
		spitCount += 1;
		if (spitCount == spitCountMax)
		{
			spits = false;
			spitCount = 0;
			spitTimer = -1;
		}
		else
		{
			attackTimer = attackTimerMax;
			spitTimer = spitTimerMax;
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	if ((hurt) and (sprHurt != "self"))
	{
		sprite_index = sprHurt;
	}
	else
	{
		if (spits)
		{
			sprite_index = sprSpit;
		}
		else
		{
			if (!blink)
			{
				sprite_index = sprIdle;
			}
			else
			{
				sprite_index = sprBlink;
			}
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}