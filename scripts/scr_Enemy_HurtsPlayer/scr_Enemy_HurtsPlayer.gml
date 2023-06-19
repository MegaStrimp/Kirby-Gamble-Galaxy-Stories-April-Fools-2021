///@description Hurts Player

function scr_Enemy_HurtsPlayer()
{
	//Hurt Player
	
	if ((place_meeting(x,y,obj_Player)) and (!hurt))
	{
		var collidedPlayer = instance_place(x,y,obj_Player);
		if ((collidedPlayer.canGetHurt) and (!collidedPlayer.invincible))
		{
			//Variables
			
			var playerHp = global.hpP1;
			if (collidedPlayer.player == 1) playerHp = global.hpP2;
			
			var playerCharacter = global.characterP1;
			if (collidedPlayer.player == 1) playerCharacter = global.characterP2;
			
			var playerAbility = global.abilityP1;
			if (collidedPlayer.player == 1) playerAbility = global.abilityP2;
			
			//Main
			
			collidedPlayer.jumpLimit = false;
			collidedPlayer.jumpLimitTimer = collidedPlayer.jumpLimitTimerMax;
			scr_Player_CancelAbility(collidedPlayer);
			if (collidedPlayer.sprite_index = collidedPlayer.sprSpit)
			{
				collidedPlayer.spit = false;
				collidedPlayer.state = playerStates.normal;
			}
			collidedPlayer.hurt = true;
			collidedPlayer.invincible = true;
			collidedPlayer.hurtTimer = collidedPlayer.hurtTimerMax;
			collidedPlayer.invincibleTimer = collidedPlayer.invincibleTimerMax;
			collidedPlayer.invincibleFlash = true;
			collidedPlayer.invincibleFlashTimer = collidedPlayer.invincibleFlashTimerMax;
			if (collidedPlayer.player == 0)
			{
				global.hpP1 -= dmg;
			}
			else
			{
				global.hpP2 -= dmg;
			}
			if ((collidedPlayer.player == 0) and (global.hpP1 == 1))
			{
				if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
				audio_play_sound(snd_LowHp,0,false);
				if (instance_exists(obj_Hud))
				{
					obj_Hud.flashP1Timer = obj_Hud.flashTimerMax;
					obj_Hud.flashStopP1Timer = obj_Hud.flashStopTimerMax;
				}
			}
			else if ((collidedPlayer.player == 1) and (global.hpP2 == 1))
			{
				if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
				audio_play_sound(snd_LowHp,0,false);
				if (instance_exists(obj_Hud))
				{
					obj_Hud.flashP2Timer = obj_Hud.flashTimerMax;
					obj_Hud.flashStopP2Timer = obj_Hud.flashStopTimerMax;
				}
			}
			if ((dmg > 0) and (((collidedPlayer.player == 0) and (global.abilityP1 != "none") and (global.hpP1 > 0) and (global.hpP1 % 2 != 0)) or ((collidedPlayer.player == 1) and (global.abilityP2 != "none") and (global.hpP2 > 0) and (global.hpP2 % 2 != 0))))
			{
			    if (instance_exists(obj_AbilityDropStar))
				{
					with (obj_AbilityDropStar)
					{
						if (collidedPlayer == other.player) destroy = true;
					}
				}
				var abilityDropStar = instance_create_depth(round(x),round(y - 6),depth + 1,obj_AbilityDropStar);
				abilityDropStar.owner = id;
				abilityDropStar.vsp = -abilityDropStar.jumpspeed;
				abilityDropStar.dir = -image_xscale;
				abilityDropStar.ability = playerAbility;
				
				switch (abilityDropStar.ability)
				{
					case "cutter":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Cutter;
					break;
					
					case "beam":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Beam;
					break;
					
					case "stone":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Stone;
					break;
					
					case "ufo":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ufo;
					break;
					
					case "mirror":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Mirror;
					break;
					
					case "ninja":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ninja;
					break;
					
					case "bomb":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Bomb;
					break;
					
					case "fire":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Fire;
					break;
					
					case "ice":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ice;
					break;
					
					case "plasma":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Plasma;
					break;
					
					case "yoyo":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Yoyo;
					break;
					
					case "wheel":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Wheel;
					break;
					
					case "artist":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Artist;
					break;
					
					case "fighter":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Fighter;
					break;
					
					case "suplex":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Suplex;
					break;
					
					case "wing":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Wing;
					break;
					
					case "jet":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Jet;
					break;
					
					case "sword":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Sword;
					break;
					
					case "parasol":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Parasol;
					break;
					
					case "hammer":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Hammer;
					break;
					
					case "bell":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Bell;
					break;
					
					case "water":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Water;
					break;
					
					default:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Normal;
					break;
				}
				global.abilityP1 = "none";
			}
			
			//Sound Effects
			
			if (audio_is_playing(snd_Hurt)) audio_stop_sound(snd_Hurt);
			audio_play_sound(snd_Hurt,0,false);
			
			//Change State To Normal
			
			if ((collidedPlayer.state == playerStates.inhale) or (collidedPlayer.state == playerStates.climb) or (collidedPlayer.state == playerStates.slide))
			{
				if (collidedPlayer.state == playerStates.slide)
				{
					collidedPlayer.duckSlide = false;
					collidedPlayer.duck = false;
				}
				collidedPlayer.inhaleSoundCont = false;
				if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
				if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
				collidedPlayer.state = playerStates.normal;
			}
			
			//Vertical Knockback
			
			if (!place_meeting(collidedPlayer.x,collidedPlayer.y + 1,obj_Wall))
			{
				if (collidedPlayer.y > (y + 4))
				{
					collidedPlayer.vsp = collidedPlayer.jumpspeed / 2;
					if (collidedPlayer.state == playerStates.float) collidedPlayer.vsp = collidedPlayer.jumpspeed * 2;
				}
				if (collidedPlayer.y < (y - 4))
				{
					collidedPlayer.vsp = -collidedPlayer.jumpspeed / 2;
					if (collidedPlayer.state == playerStates.float) collidedPlayer.vsp = -collidedPlayer.jumpspeed * 2;
				}
				if ((collidedPlayer.y < (y + 4)) and (collidedPlayer.y > (y - 4)))
				{
					collidedPlayer.vsp = -(collidedPlayer.jumpspeed / 4);
					if (collidedPlayer.state == playerStates.float) collidedPlayer.vsp = -(collidedPlayer.jumpspeed / 2);
				}
			}
			
			//Horizontal Knockback
			
			if (collidedPlayer.x > (x + 4))
			{
				collidedPlayer.hsp = collidedPlayer.movespeed;
				if (collidedPlayer.state == playerStates.slide) collidedPlayer.hsp = (collidedPlayer.movespeed * 2);
			}
			if (collidedPlayer.x < (x - 4))
			{
				collidedPlayer.hsp = -collidedPlayer.movespeed;
				if (collidedPlayer.state == playerStates.slide) collidedPlayer.hsp = -(collidedPlayer.movespeed * 2);
			}
		}
		
		//Hurt Enemy
		
		if ((hurtable) and (!isBoss))
		{
			hurt = true;
			invincible = true;
			hurtTimer = hurtTimerMax;
			invincibleTimer = invincibleTimerMax;
			invincibleFlashTimer = invincibleFlashTimerMax;
			hp -= collidedPlayer.dmg;
			scr_HurtKnockback(self,collidedPlayer);
		}
	}
}