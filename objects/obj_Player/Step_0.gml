///@description Main

//Variables

var playerAbility = global.abilityP1;
if (player == 1) playerAbility = global.abilityP2;

var playerCharacter = global.characterP1;
if (player == 1) playerCharacter = global.characterP2;

scr_Player_Inputs();

//Death

if ((((player == 0) and (global.hpP1 == 0)) or ((player == 1) and (global.hpP2 == 0))) and (!death))
{
	audio_stop_all();
	if (instance_exists(obj_Music)) instance_destroy(obj_Music);
	audio_play_sound(snd_Hurt,0,false);
	death = true;
	global.pause = true;
	sprite_index = sprHurt;
	visible = true;
    ability = "none";
	hsp = 0;
	vsp = 0;
	deathTimer = deathTimerMax;
}

if (!global.pause)
{
	//Abilities
	
	switch (playerAbility)
	{
		case "fire":
		if (fireParticleTimer == -1) fireParticleTimer = fireParticleTimerMax;
		break;
	}
	
	if ((playerCharacter != "gordo") and (playerCharacter != "bloodGordo")) imageAngle = 0;
	
	//Bumpers
	
	if (place_meeting(x,y,obj_Bumper))
	{
		//Variables
		
		var collidedBumper = instance_place(x,y,obj_Bumper);
		collidedBumper.hit = true;
		collidedBumper.hitTimer = collidedBumper.hitTimerMax;
		jumpLimit = false;
		jumpLimitTimer = jumpLimitTimerMax;
		
		//Sound
		
		audio_play_sound(snd_Bumper,0,false);
		
		//Change State To Normal
		
		if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
		{
			inhaleSoundCont = false;
			if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
			if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
			state = playerStates.normal;
		}
		
		//Vertical Knockback
		
		if (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) + 4))
		{
			vsp = collidedBumper.force;
		}
		if (y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) - 4))
		{
			vsp = -collidedBumper.force;
		}
		if ((y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) + 4)) and (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) - 4)))
		{
			vsp = collidedBumper.force / 2;
		}
		
		//Horizontal Knockback
	
		if (x > ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2 )) + 4))
		{
			hsp = collidedBumper.force;
		}
		if (x < ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2 )) - 4))
		{
			hsp = -collidedBumper.force;
		}
	}
	
	//Springs
	
	if (place_meeting(x,y + 1,obj_Spring))
	{
		if (sign(vsp) == 1)
		{
			//Variables
			
			var collidedSpring = instance_place(x,y + 1,obj_Spring);
			collidedSpring.hit = true;
			collidedSpring.hitTimer = collidedSpring.hitTimerMax;
			jumpLimit = false;
			jumpLimitTimer = jumpLimitTimerMax;
			
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
			
			if (!global.cutscene)
			{
				if ((keyboard_check(keyJump)) or (gamepad_button_check(0,gp_face1)))
				{
					audio_play_sound(snd_BigJump,0,false);
				}
				else
				{
					audio_play_sound(snd_Jump,0,false);
				}
			}
			
			//Change State To Normal
			
			if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
			{
				inhaleSoundCont = false;
				if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
				if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
				state = playerStates.normal;
			}
			
			//Vertical Knockback
			
			if ((!global.cutscene) and ((keyboard_check(keyJump)) or (gamepad_button_check(0,gp_face1))))
			{
				vsp = -collidedSpring.force * 1.5;
			}
			else
			{
				vsp = -collidedSpring.force;
			}
		}
	}
	
	//Trampolines
	
	if (place_meeting(x,y - 1,obj_Trampoline))
	{
		if (sign(vsp) == 1)
		{
			//Variables
			
			var collidedTrampoline = instance_place(x,y - 1,obj_Trampoline);
			collidedTrampoline.jumpCount += 1;
			collidedTrampoline.resetTimer = collidedTrampoline.resetTimerMax;
			collidedTrampoline.hit = true;
			collidedTrampoline.hitTimer = collidedTrampoline.hitTimerMax;
			jumpLimit = false;
			jumpLimitTimer = jumpLimitTimerMax;
			
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
			
			//Change State To Normal
			
			if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
			{
				inhaleSoundCont = false;
				if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
				if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
				state = playerStates.normal;
			}
			
			//Vertical Knockback
			
			vsp = -(collidedTrampoline.force / 3) - ((collidedTrampoline.force / collidedTrampoline.jumpCountMax) * collidedTrampoline.jumpCount);
		}
	}
}

//Player States

switch (state)
{
	//Normal
	
    case (playerStates.normal):
	scr_Player_Normal();
	break;
	
	//Slide
	
    case (playerStates.slide):
	scr_Player_Slide();
	break;
	
	//Float
	
    case (playerStates.float):
	scr_Player_Float();
	break;
	
	//Climb
	
    case (playerStates.climb):
	scr_Player_Climb();
	break;
	
	//Enter
	
    case (playerStates.enter):
	scr_Player_Enter();
	break;
	
	//Inhale
	
    case (playerStates.inhale):
	scr_Player_Inhale();
	break;
	
	//Carry
	
    case (playerStates.carry):
	scr_Player_Carry();
	break;
	
	//Swallow
	
    case (playerStates.swallow):
	scr_Player_Swallow();
	break;
	
	//Cutter Dash
	
    case (playerStates.cutterDash):
	scr_Player_CutterDash();
	break;
	
	//Mirror Dash
	
    case (playerStates.mirrorDash):
	scr_Player_MirrorDash();
	break;
	
	//Fire Dash
	
    case (playerStates.fireDash):
	scr_Player_FireDash();
	break;
	
	//Wing Dash
	
    case (playerStates.wingDash):
	scr_Player_WingDash();
	break;
	
	//Death
	
    case (playerStates.death):
	scr_Player_Death();
	break;
}

if (!global.pause)
{
	//Ability Drop
	
	if ((!global.cutscene) and (((player == 0) and (global.abilityP1 != "none")) or ((player == 1) and (global.abilityP2 != "none"))) and ((keyboard_check_pressed(keySelect)) or (gamepad_button_check_pressed(0,gp_select))) and (!attack))
	{
		audio_play_sound(snd_AbilityDrop,0,false);
	    if (instance_exists(obj_AbilityDropStar))
		{
			with (obj_AbilityDropStar)
			{
				if (owner.player == other.player) destroy = true;
			}
		}
	    var abilityDropStar = instance_create_depth(round(x),round(y - 6),depth + 1,obj_AbilityDropStar);
		abilityDropStar.owner = id;
	    abilityDropStar.vsp = -abilityDropStar.jumpspeed;
		abilityDropStar.dir = -image_xscale;
		if (player == 0)
		{
			abilityDropStar.ability = global.abilityP1;
			global.abilityP1 = "none";
		}
		else
		{
			abilityDropStar.ability = global.abilityP2;
			global.abilityP2 = "none";
		}
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
	}
	
	//Scale Ex
	
	scaleExX = lerp(scaleExX,0,scaleExSpd);
	scaleExY = lerp(scaleExY,0,scaleExSpd);
	
	//Hat Background Index
	
	var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
	var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
	
	if (hatBackgroundIndex != -1)
	{
		if (hatBackgroundImageIndex <= sprite_get_number(hatBackgroundIndex) - 1)
		{
			hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
		}
		else
		{
			hatBackgroundImageIndex -= sprite_get_number(hatBackgroundIndex) - 1;
		}
	}
	else if (hatFrontIndex != -1)
	{
		if (hatBackgroundImageIndex <= sprite_get_number(hatFrontIndex) - 1)
		{
			hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
		}
		else
		{
			hatBackgroundImageIndex -= sprite_get_number(hatFrontIndex) - 1;
		}
	}
}

//Hp Clamp

global.hpP1 = clamp(global.hpP1,0,global.hpMax);
global.hpP2 = clamp(global.hpP2,0,global.hpMax);

//Scale

if (attackNumber == "stoneNormal")
{
	image_xscale = scale;
}
else
{
	image_xscale = scale * dir;
}
image_yscale = scale;

//Masks

mask_index = maskIndex;

if (state == playerStates.slide)
{
	mask_index = spr_Kirby_DuckMask;
}

if (!global.pause)
{
	//Walk Duck Timer
	
	if (walkDuckTimer > 0)
	{
		walkDuckTimer -= 1;
	}
	else if (walkDuckTimer == 0)
	{
		walkDuck = false;
		if (fallHop)
		{
			sprite_index = sprRoll;
			image_index = 3;
			vsp = -3.5;
			jumpLimit = false;
			jumpLimitTimer = jumpLimitTimerMax;
		}
		walkDuckTimer = -1;
	}
	
	//Walk Squish Timer
	
	if (walkSquishTimer > 0)
	{
		walkSquishTimer -= 1;
	}
	else if (walkSquishTimer == 0)
	{
		walkSquish = false;
		walkSquishTimer = -1;
	}
	
	//Hurt Timer
	
	if (hurtTimer > 0)
	{
		hurtTimer -= 1;
	}
	else if (hurtTimer == 0)
	{
		hurt = false;
		hurtTimer = -1;
	}
	
	//Invincible Timer
	
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleFlash = false;
		invincibleFlashTimer = -1;
		invincibleTimer = -1;
	}
	
	//Invincible Flash Timer
	
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
	
	//Jump Limit Timer
	
	if (jumpLimitTimer > 0)
	{
		jumpLimitTimer -= 1;
	}
	else if (jumpLimitTimer == 0)
	{
		jumpLimit = true;
		jumpLimitTimer = -1;
	}
	
	//Hsp Limit Timer
	
	if (hspLimitTimer > 0)
	{
		hspLimitTimer -= 1;
	}
	else if (hspLimitTimer == 0)
	{
		hspLimit = true;
		hspLimitTimer = -1;
	}
	
	//Run Particle Timer
	
	if (runParticleTimer > 0)
	{
		runParticleTimer -= 1;
	}
	else if (runParticleTimer == 0)
	{
		if (run)
		{
			if ((place_meeting(x,y + 1,obj_Wall)) and (abs(hsp) >= (movespeedRun * .25)))
			{
				var parCarryStart = instance_create_depth(x + (16 * -dir),y + 16,depth + 1,obj_Particle);
				parCarryStart.sprite_index = spr_Particle_Run;
				parCarryStart.hsp = (1.25 + random_range(-.75,.75)) * -dir;
				parCarryStart.vsp = -(2 + random_range(-.75,.75));
				parCarryStart.imageSpeed = 1;
				parCarryStart.destroyAfterAnimation = true;
				parCarryStart.dir = -dir;
			}
			if (runParticleNum == 0)
			{
				runParticleTimer = runParticleTimerMin;
				runParticleNum += 1;
			}
			else
			{
				runParticleNum = 0;
				runParticleTimer = runParticleTimerMax;
			}
		}
		else
		{
			runParticleNum = 0;
			runParticleTimer = -1;
		}
	}
	
	//Mirror Dash Particle Timer
	
	if (mirrorDashParticleTimer > 0)
	{
		mirrorDashParticleTimer -= 1;
	}
	else if (mirrorDashParticleTimer == 0)
	{
		for (var i = 0; i < 1; i++)
		{
			var par = instance_create_depth(x,y - 7,depth - 1,obj_Particle);
			par.direction = random_range(0,359);
			par.sprite_index = choose(spr_Particle_Mirror1,spr_Particle_Mirror1,spr_Particle_Mirror2);
			par.image_speed = irandom_range(3,5);
			par.spdBuiltIn = irandom_range(1,1.5);
			par.destroyAfterAnimation = true;
		}
		mirrorDashParticleTimer = -1;
	}
	
	//Run Cancel Timer
	
	if (runCancelTimer > 0)
	{
		runCancelTimer -= 1;
	}
	else if (runCancelTimer == 0)
	{
		if ((!keyboard_check(keyLeft)) and (!keyboard_check(keyRight)) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr)))
	    {
	        runCancelTimer = runCancelTimerMax;
	        run = false;
	        runDoubleTap = 0;
	    }
	    else
	    {
	        runCancelTimer = -1;
	    }
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (attackNumber == "cutterDash")
		{
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
	        if (instance_exists(cutterDashMaskProj)) instance_destroy(cutterDashMaskProj);
			state = playerStates.normal;
		}
		if ((attackNumber == "beamNormal") or (attackNumber == "beamAir") or (attackNumber == "beamUp"))
		{
			audio_stop_sound(sndBeam);
			beamAttack2Timer = -1;
		}
		if (attackNumber == "stoneUp")
		{
			if (instance_exists(stoneFistMaskProj)) instance_destroy(stoneFistMaskProj);
			stoneFistReady = true;
		}
		if (attackNumber == "fireDash")
		{
			if (instance_exists(fireDashMaskProj)) instance_destroy(fireDashMaskProj);
			state = playerStates.normal;
		}
		if (attackNumber == "wingDash")
		{
			if (audio_is_playing(wingDashSfx)) audio_stop_sound(wingDashSfx);
	        if (instance_exists(wingMaskProj)) instance_destroy(wingMaskProj);
			invincible = false;
			state = playerStates.normal;
		}
		attack = false;
		attackable = true;
		attackNumber = "none";
	    attackTimer = -1;
	}
	
	//Cutter Catch Timer
	
	if (cutterCatchTimer > 0)
	{
		cutterCatchTimer -= 1;
	}
	else if (cutterCatchTimer == 0)
	{
		cutterCatch = false;
	    cutterCatchTimer = -1;
	}
	
	//Beam Attack 2 Timer
	
	if ((attack) and (attackNumber = "beamAir"))
	{
		if (beamAttack2Timer > 0)
		{
			beamAttack2Timer -= 1;
		}
		else if (beamAttack2Timer == 0)
		{
			var projBeam = instance_create_depth(x + (15 * dir),y + 10,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = id;
			projBeam.dmg = 18;
		    projBeam.dirX = -dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = random_range(6,8);
			projBeam.direction = 270 + (projBeam.dir * 45) + irandom_range(-25,25);
		    projBeam.state = 1;
		    projBeam.enemy = false;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
		    beamAttack2Timer = -1;
		}
	}
	
	//Waddle Doo Eye Flash Timer
	
	if (attackNumber == "waddleDooBeamNormal")
	{
		if (waddleDooEyeFlashTimer > 0)
		{
			waddleDooEyeFlashTimer -= 1;
		}
		else if (waddleDooEyeFlashTimer == 0)
		{
			if (waddleDooEyeFlash)
			{
				waddleDooEyeFlash = false;
			}
			else
			{
				waddleDooEyeFlash = true;
			}
			waddleDooEyeFlashTimer = waddleDooEyeFlashTimerMax;
		}
	}
	else
	{
		waddleDooEyeFlash = false;
		waddleDooEyeFlashTimer = -1;
	}
	
	//Stone Ready Timer
	
	if (stoneReadyTimer > 0)
	{
		stoneReadyTimer -= 1;
	}
	else if (stoneReadyTimer == 0)
	{
		stoneReady = false;
		if (!place_meeting(x,y + 1,obj_Wall))
		{
			scaleExX = -.1;
			scaleExY = .1;
		}
		grav = gravStone;
		gravLimit = gravLimitStone;
		stoneMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneMask);
		stoneMaskProj.dmg = 50;
		stoneMaskProj.hsp = hsp;
		stoneMaskProj.vsp = vsp;
		stoneMaskProj.enemy = false;
		stoneMaskProj.owner = id;
		stoneMaskProj.hitInvincibility = stoneMaskProj.hitInvincibilityMax;
		stoneMaskProj.image_xscale = image_xscale;
		stoneMaskProj.image_yscale = image_yscale;
		var stoneRarity = irandom_range(0,24);
		if (stoneRarity == 0) sprite_index = sprStoneAttack1Rare;
		if ((stoneRarity >= 1) and (stoneRarity <= 10)) sprite_index = sprStoneAttack1Uncommon;
		if ((stoneRarity >= 11) and (stoneRarity <= 24)) sprite_index = sprStoneAttack1Common;
		image_index = irandom_range(0,image_number - 1);
	    stoneReadyTimer = -1;
	}
	
	//Stone Release Particle Timer
	
	if (stoneReleaseParticleTimer > 0)
	{
		stoneReleaseParticleTimer -= 1;
	}
	else if (stoneReleaseParticleTimer == 0)
	{
		stoneReleaseParticleCount += 1;
		switch (stoneReleaseParticleCount)
		{
			case 1:
			var par = instance_create_depth(x - 8,y - 4,depth - 1,obj_Particle);
			par.vsp = -2;
			stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			break;
			
			case 2:
			var par = instance_create_depth(x + 8,y - 4,depth - 1,obj_Particle);
			par.hsp = 2;
			par.vsp = -2;
			stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			break;
			
			case 3:
			var par = instance_create_depth(x - 8,y - 2,depth - 1,obj_Particle);
			par.hsp = -2;
			stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			break;
			
			case 4:
			var par = instance_create_depth(x +  8,y - 2,depth - 1,obj_Particle);
			par.hsp = 2;
			stoneReleaseParticleCount = 0;
			stoneReleaseParticleTimer = -1;
			break;
		}
		par.sprite_index = spr_Particle_ShrinkingStar5;
		par.destroyAfterAnimation = true;
	}
	
	//Stone Particle Timer
	
	if (stoneParticleTimer > 0)
	{
		stoneParticleTimer -= 1;
	}
	else if (stoneParticleTimer == 0)
	{
		for (var i = 0; i < 6; i++)
		{
			switch (i)
			{
				case 0:
				var stonePar = instance_create_depth(x - 8,y - 16,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 1:
				var stonePar = instance_create_depth(x - 6,y + 10,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 2:
				var stonePar = instance_create_depth(x + 16,y,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 3:
				var stonePar = instance_create_depth(x + 14,y - 16,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 4:
				var stonePar = instance_create_depth(x - 16,y - 10,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 5:
				var stonePar = instance_create_depth(x + 12,y + 2,depth - 1,obj_Particle);
				stoneParticleTimer = -1;
				break;
			}
			stonePar.imageSpeed = 0;
			stonePar.sprite_index = spr_Particle_Stone1;
			stonePar.image_index = i;
			stonePar.destroyAfterCollidingFollow = false;
			stonePar.followObject = true;
			stonePar.followedObject = id;
			stonePar.dir = dir;
			stonePar.hasPalette = true;
			stonePar.paletteSpriteIndex = paletteIndex;
			stonePar.paletteIndex = 1;
			stonePar.destroyTimer = 7;
		}
	}
	
	//Stone Fist Ready Timer
	
	if (stoneFistReadyTimer > 0)
	{
		stoneFistReadyTimer -= 1;
	}
	else if (stoneFistReadyTimer == 0)
	{
		if (audio_is_playing(snd_StoneFist)) audio_stop_sound(snd_StoneFist);
		audio_play_sound(snd_StoneFist,0,false);
		if (instance_exists(obj_Camera))
		{
			obj_Camera.shakeX = 2;
			obj_Camera.shakeY = 2;
		}
		stoneFistReady = false;
		stoneFistReleaseTimer = stoneFistReleaseTimerMax;
		sprite_index = sprStoneAttack2;
		image_index = 0;
		stoneFistMaskProj = instance_create_depth(x + (10 * dir),y - 7,depth - 1,obj_Projectile_StoneFistMask);
		stoneFistMaskProj.dmg = 40;
		stoneFistMaskProj.dirX = dir;
		stoneFistMaskProj.xPos = 12;
		stoneFistMaskProj.yPos = -10;
		stoneFistMaskProj.enemy = false;
		stoneFistMaskProj.owner = id;
		stoneFistMaskProj.image_xscale = image_xscale;
		stoneFistMaskProj.image_yscale = image_yscale;
	    stoneFistReadyTimer = -1;
	}
	
	//Stone Fist Release Timer
	
	if (stoneFistReleaseTimer > 0)
	{
		stoneFistReleaseTimer -= 1;
	}
	else if (stoneFistReleaseTimer == 0)
	{
		attackTimer = 10;
		sprite_index = sprStoneAttack2Release;
		image_index = 0;
	    stoneFistReleaseTimer = -1;
	}
	
	//Mirror Normal Attack Timer
	
	if (mirrorNormalAttackTimer > 0)
	{
		mirrorNormalAttackTimer -= 1;
	}
	else if (mirrorNormalAttackTimer == 0)
	{
		mirrorAttackDir *= -1;
		if (audio_is_playing(snd_Mirror1)) audio_stop_sound(snd_Mirror1);
		audio_play_sound(snd_Mirror1,0,false);
		var par = instance_create_depth(x + (8 * dir),y - 4,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Mirror3;
		par.dir = dir;
		par.image_xscale = dir;
		par.destroyTimer = 1;
		var projectile = instance_create_depth(x + (24 * dir),y - 6,depth - 1,obj_Projectile_Mirror);
		projectile.owner = id;
		projectile.dmg = 4;
		if (mirrorFirstAttack)
		{
			projectile.dmg = 12;
			mirrorFirstAttack = false;
		}
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.hsp = 2 * dir;
		projectile.vsp = .8 * mirrorAttackDir;
	    mirrorNormalAttackTimer = -1;
	}
	
	//Mirror Shield Timer
	
	if (mirrorShieldTimer > 0)
	{
		mirrorShieldTimer -= 1;
	}
	else if (mirrorShieldTimer == 0)
	{
		mirrorShieldHp = mirrorShieldHpMax;
	    mirrorShieldTimer = -1;
	}
	
	//Fire Particle Timer
	
	if (playerAbility == "fire")
	{
		if (fireParticleTimer > 0)
		{
			fireParticleTimer -= 1;
		}
		else if (fireParticleTimer == 0)
		{
			var par = instance_create_depth(x + (irandom_range(8,-8)),y - 8,depth + 1,obj_Particle);
	        par.sprite_index = spr_Particle_Fire1;
	        par.direction = irandom_range(80,100);
	        par.image_angle = 90 + par.direction;
	        par.spdBuiltIn = irandom_range(1,3);
			par.destroyAfterAnimation = true;
		    fireParticleTimer = -1;
		}
	}
	else
	{
		fireParticleTimer = -1;
	}
	
	//Fire Normal Attack Timer
	
	if (fireNormalAttackTimer > 0)
	{
		fireNormalAttackTimer -= 1;
	}
	else if (fireNormalAttackTimer == 0)
	{
		if (!audio_is_playing(snd_Fire)) audio_play_sound(snd_Fire,0,false);
		var projectile = instance_create_depth(x + (10 * dir),y - 2,depth - 1,obj_Projectile_Fire);
		projectile.owner = id;
		projectile.dmg = 6;
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.hsp = 2 * dir;
        if ((!global.cutscene) and ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu))))
        {
            projectile.vsp = random_range(-.5,0) - .75;
        }
        else if ((!global.cutscene) and ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd))))
        {
            projectile.vsp = random_range(0,.5) + .75;
        }
        else
        {
            projectile.vsp = random_range(-.5,.5);
        }
	    fireNormalAttackTimer = -1;
	}
	
	//Ice Normal Attack Timer
	
	if (iceNormalAttackTimer > 0)
	{
		iceNormalAttackTimer -= 1;
	}
	else if (iceNormalAttackTimer == 0)
	{
		if (audio_is_playing(snd_Ice)) audio_stop_sound(snd_Ice);
		audio_play_sound(snd_Ice,0,false);
		var projectile = instance_create_depth(x + (14 * dir),y - 6,depth - 1,obj_Projectile_Ice);
		projectile.owner = id;
		projectile.dmg = 6;
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.hsp = 3.5 * dir;
		switch (icePosition)
		{
			case 0:
			projectile.vsp = random_range(-.5,.5);
			icePosition += 1;
			break;
			
			case 1:
			projectile.vsp = random_range(0,.5) + .75;
			icePosition += 1;
			break;
			
			case 2:
			projectile.vsp = random_range(-.5,.5);
			var par = instance_create_depth(x + (14 * dir),y - 6,depth - 2,obj_Particle);
	        par.sprite_index = spr_Particle_Ice1;
	        par.hsp = projectile.hsp + random_range(.5,.5);
	        par.vsp = projectile.vsp + random_range(.5,.5);
			par.destroyAfterAnimation = true;
			icePosition += 1;
			break;
			
			case 3:
			projectile.vsp = random_range(-.5,0) - .75;
			icePosition = 0;
			break;
		}
	    iceNormalAttackTimer = -1;
	}
	
	//Wing Dash Particle Timer
	
	if (attackNumber == "wingDash")
	{
		if (wingDashParticleTimer > 0)
		{
			wingDashParticleTimer -= 1;
		}
		else if (wingDashParticleTimer == 0)
		{
			var par = instance_create_depth(x - (12 * dir),y - 4,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Sparkle4;
			par.hsp = (4 * -dir);
			par.destroyAfterAnimation = true;
			var par = instance_create_depth(x - (12 * dir),y - 4,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Aura1;
			par.destroyTimer = 1;
			wingDashParticleTimer = wingDashParticleTimerMax;
		}
	}
	else
	{
		wingDashParticleTimer = -1;
	}
}
else
{
	//Debug Move
	
	if (global.debug)
	{
		if (mouse_check_button(mb_middle))
		{
			x = mouse_x;
			y = mouse_y;
		}
	}
}

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if ((global.gambleActive) and (playerCharacter != "gamble"))
	{
		var followerObject = instance_create_depth(x + (30 * -dir),y - 15,depth,obj_Familiar);
		followerObject.owner = id;
	}
	if ((global.hasCoop) and (instance_number(obj_Player) == 1))
	{
		var secondPlayer = instance_create_depth(x - 24,y,depth,obj_Player);
		secondPlayer.player = 1;
		player = 0;
	}
	setupTimer = -1;
}

//Character Setup Timer

if (characterSetupTimer > 0)
{
	characterSetupTimer -= 1;
}
else if (characterSetupTimer == 0)
{
	//Sprites
	
	if (player == 0)
	{
		var sprayPaint = global.sprayPaintP1;
	}
	else
	{
		var sprayPaint = global.sprayPaintP2;
	}
	
	var selectedCharacter = global.characterP1;
	if (player == 1) selectedCharacter = global.characterP2;
	
	paletteIndex = scr_SprayPaint_Setup(sprayPaint,selectedCharacter);
	
	switch (selectedCharacter)
	{
		case "kirby":
		gravNormal = .23;
		gravStone = .7;
		grav = gravNormal;
		gravFloat = .075;
		gravLimitNormal = 5;
		gravLimitFloat = 2.3;
		gravLimitStone = 7;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 6;
		jumpspeedFloat = 1.8;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.7;
		movespeedRun = 2.6;
		movespeedSlide = 5;
		movespeedFloat = 1.9;
		movespeedCarry = 2;
		movespeedBurst = 6;
		movespeed = movespeedNormal;
		ufoFloatSpd = 2;
		accel = .2;
		accelFloat = .1;
		decel = .075;
		decelSlide = .125;
		decelFloat = .025;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = true;
		canJump = true;
		canAutoJump = false;
		canAttack = true;
		canDuck = true;
		canDuckHighJump = false;
		canSlide = true;
		canClimb = true;
		canFloat = true;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = 0;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_Kirby_Normal_Idle;
		sprIdleBlink = spr_Kirby_Normal_IdleBlink;
		sprIdleNormalSlopeL = spr_Kirby_Normal_Idle_NormalSlopeL;
		sprIdleNormalSlopeLBlink = spr_Kirby_Normal_Idle_NormalSlopeLBlink;
		sprIdleNormalSlopeR = spr_Kirby_Normal_Idle_NormalSlopeR;
		sprIdleNormalSlopeRBlink = spr_Kirby_Normal_Idle_NormalSlopeRBlink;
		sprIdleSteepSlopeL = spr_Kirby_Normal_Idle_SteepSlopeL;
		sprIdleSteepSlopeLBlink = spr_Kirby_Normal_Idle_SteepSlopeLBlink;
		sprIdleSteepSlopeR = spr_Kirby_Normal_Idle_SteepSlopeR;
		sprIdleSteepSlopeRBlink = spr_Kirby_Normal_Idle_SteepSlopeRBlink;
		sprWalk = spr_Kirby_Normal_Walk;
		sprRun = spr_Kirby_Normal_Run;
		sprRunTurn = spr_Kirby_Normal_RunTurn;
		sprJump = spr_Kirby_Normal_Jump;
		sprRoll = spr_Kirby_Normal_Roll;
		sprBackflip = spr_Kirby_Normal_Backflip;
		sprFall = spr_Kirby_Normal_Fall;
		sprSquish = spr_Kirby_Normal_Squish;
		sprDuck = spr_Kirby_Normal_Duck;
		sprDuckBlink = spr_Kirby_Normal_DuckBlink;
		sprDuckNormalSlopeL = spr_Kirby_Normal_Duck_NormalSlopeL;
		sprDuckNormalSlopeLBlink = spr_Kirby_Normal_Duck_NormalSlopeLBlink;
		sprDuckNormalSlopeR = spr_Kirby_Normal_Duck_NormalSlopeR;
		sprDuckNormalSlopeRBlink = spr_Kirby_Normal_Duck_NormalSlopeRBlink;
		sprDuckSteepSlopeL = spr_Kirby_Normal_Duck_SteepSlopeL;
		sprDuckSteepSlopeLBlink = spr_Kirby_Normal_Duck_SteepSlopeLBlink;
		sprDuckSteepSlopeR = spr_Kirby_Normal_Duck_SteepSlopeR;
		sprDuckSteepSlopeRBlink = spr_Kirby_Normal_Duck_SteepSlopeRBlink;
		sprSlide = spr_Kirby_Normal_Slide;
		sprSlideEnd = spr_Kirby_Normal_SlideEnd;
		sprFloatReady = spr_Kirby_Normal_FloatReady;
		sprFloat = spr_Kirby_Normal_Float;
		sprFlap = spr_Kirby_Normal_Flap;
		sprFloatSpit = spr_Kirby_Normal_FloatSpit;
		sprEnter = spr_Kirby_Normal_Enter;
		sprClimbUp = spr_Kirby_Normal_ClimbUp;
		sprClimbDown = spr_Kirby_Normal_ClimbDown;
		sprInhaleReady = spr_Kirby_Normal_InhaleReady;
		sprInhale = spr_Kirby_Normal_Inhale;
		sprInhaleEnd = spr_Kirby_Normal_InhaleEnd;
		sprCarryIdle = spr_Kirby_Normal_CarryIdle;
		sprCarryIdleBlink = spr_Kirby_Normal_CarryIdleBlink;
		sprCarryIdleNormalSlopeL = spr_Kirby_Normal_CarryIdle_NormalSlopeL;
		sprCarryIdleNormalSlopeLBlink = spr_Kirby_Normal_CarryIdle_NormalSlopeLBlink;
		sprCarryIdleNormalSlopeR = spr_Kirby_Normal_CarryIdle_NormalSlopeR;
		sprCarryIdleNormalSlopeRBlink = spr_Kirby_Normal_CarryIdle_NormalSlopeRBlink;
		sprCarryIdleSteepSlopeL = spr_Kirby_Normal_CarryIdle_SteepSlopeL;
		sprCarryIdleSteepSlopeLBlink = spr_Kirby_Normal_CarryIdle_SteepSlopeLBlink;
		sprCarryIdleSteepSlopeR = spr_Kirby_Normal_CarryIdle_SteepSlopeR;
		sprCarryIdleSteepSlopeRBlink = spr_Kirby_Normal_CarryIdle_SteepSlopeRBlink;
		sprCarryWalk = spr_Kirby_Normal_CarryWalk;
		sprCarryJump = spr_Kirby_Normal_CarryJump;
		sprCarryFall = spr_Kirby_Normal_CarryFall;
		sprCarryDuck = spr_Kirby_Normal_CarryDuck;
		sprSpit = spr_Kirby_Normal_Spit;
		sprSwallow = spr_Kirby_Normal_Swallow;
		sprHardSwallow = spr_Kirby_Normal_HardSwallow;
		sprAbilityChange = spr_Kirby_Normal_AbilityChange;
		sprWarpStar1 = spr_Kirby_Normal_WarpStar1;
		sprWarpStar2 = spr_Kirby_Normal_WarpStar2;
		sprCutterCharge = spr_SirKibble_Normal_Catch;
		sprCutterAttack1 = spr_Kirby_Normal_Cutter_Attack1;
		sprCutterAttack2 = spr_Kirby_Normal_Cutter_Attack2;
		sprCutterCatch = spr_Kirby_Normal_Cutter_Catch;
		sprBeamCharge = spr_Kirby_Normal_Beam_Charge;
		sprBeamAttack1 = spr_Kirby_Normal_Beam_Attack1;
		sprBeamAttack2 = spr_Kirby_Normal_Beam_Attack2;
		sprBeamAttack3 = spr_Kirby_Normal_Beam_Attack3;
		sprBeamAttack4 = spr_Kirby_Normal_Beam_Attack4;
		sprBeamAttack5 = spr_Kirby_Normal_Beam_Attack5;
		sprStoneAttack1Ready = spr_Kirby_Normal_Stone_Attack1Ready;
		if (player == 0)
		{
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
		}
		else
		{
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common2;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon2;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare2;
		}
		sprStoneAttack2Ready = spr_Kirby_Normal_Stone_Attack2Ready;
		sprStoneAttack2 = spr_Kirby_Normal_Stone_Attack2;
		sprStoneAttack2Release = spr_Kirby_Normal_Stone_Attack2Release;
		sprUfoIdle = spr_Kirby_Normal_Ufo_Idle;
		sprMirrorDash = spr_Kirby_Normal_Mirror_Dash;
		sprMirrorAttack1 = spr_Kirby_Normal_Mirror_Attack1;
		sprMirrorAttack2 = spr_Kirby_Normal_Mirror_Attack2;
		sprMirrorAttack2Release = spr_Kirby_Normal_Mirror_Attack2Release;
		sprMirrorAttack3 = spr_Kirby_Normal_Mirror_Attack3;
		sprMirrorAttack4 = spr_Kirby_Normal_Mirror_Attack4;
		sprMirrorAttack5 = spr_Kirby_Normal_Mirror_Attack5;
		sprNinjaCharge = spr_Kirby_Normal_Ninja_Charge;
		sprNinjaAttack1 = spr_Kirby_Normal_Ninja_Attack1;
		sprNinjaAttack2 = spr_Kirby_Normal_Ninja_Attack2;
		sprFireAttack1 = spr_Kirby_Normal_Fire_Attack1;
		sprFireAttack2 = spr_Kirby_Normal_Fire_Attack2;
		sprWingAttack1 = spr_Kirby_Normal_Wing_Attack1;
		sprWingAttack2Ready = spr_Kirby_Normal_Wing_Attack2Ready;
		sprWingAttack2 = spr_Kirby_Normal_Wing_Attack2;
		sprSleep = spr_Kirby_Normal_Sleep;
		sprFreezeAttack1Ready = spr_Kirby_Normal_Freeze_Attack1Ready;
		sprFreezeAttack1 = spr_Kirby_Normal_Freeze_Attack1;
		sprHurt = spr_Kirby_Normal_Walk;
		sprDeath = spr_Kirby_Normal_Death;
		break;
		
		case "gamble":
		gravNormal = .23;
		gravStone = .7;
		grav = gravNormal;
		gravFloat = .075;
		gravLimitNormal = 5;
		gravLimitFloat = 2.3;
		gravLimitStone = 7;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 6;
		jumpspeedFloat = 1.8;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.7;
		movespeedRun = 2.6;
		movespeedSlide = 5;
		movespeedFloat = 1.9;
		movespeedCarry = 2;
		movespeedBurst = 6;
		movespeed = movespeedNormal;
		ufoFloatSpd = 2;
		accel = .2;
		accelFloat = .1;
		decel = .075;
		decelSlide = .125;
		decelFloat = .025;
		climbSpeed = 2;
		
		hasGravity = false;
		hasJumpLimit = true;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = false;
		canAttack = true;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = true;
		runImageSpeedIncrease = 0;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_Gamble_Normal_Side_Idle;
		sprWalk = spr_Gamble_Normal_Side_Walk;
		sprRun = spr_Kirby_Normal_Run;
		sprJump = spr_Gamble_Normal_Side_Jump;
		sprRoll = spr_Gamble_Normal_Side_Jump;
		sprFall = spr_Gamble_Normal_Side_Jump;
		sprDuck = spr_Gamble_Normal_Side_LayDown;
		sprEnter = spr_Gamble_Normal_Side_Jump;
		sprClimbUp = spr_Gamble_Normal_Back_Idle;
		sprClimbDown = spr_Gamble_Normal_Back_Idle;
		sprHurt = spr_Gamble_Normal_Side_Walk;
		sprDeath = spr_Gamble_Normal_Side_Death;
		break;
		
		case "waddleDee":
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = .5;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_WaddleDee_Normal_Idle;
		sprWalk = spr_WaddleDee_Normal_Walk;
		sprRun = spr_WaddleDee_Normal_Walk;
		sprJump = spr_WaddleDee_Normal_Jump;
		sprFall = spr_WaddleDee_Normal_Fall;
		sprSquish = spr_WaddleDee_Normal_Idle;
		sprDuck = spr_WaddleDee_Normal_Duck;
		sprEnter = spr_WaddleDee_Normal_Walk;
		sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
		sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
		sprHurt = spr_WaddleDee_Normal_Hurt;
		sprDeath = spr_WaddleDee_Normal_Hurt;
		break;
		
		case "waddleDoo":
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canAttack = true;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = .5;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_WaddleDoo_Normal_Idle;
		sprWalk = spr_WaddleDoo_Normal_Walk;
		sprRun = spr_WaddleDoo_Normal_Walk;
		sprJump = spr_WaddleDoo_Normal_Jump;
		sprFall = spr_WaddleDoo_Normal_Fall;
		sprSquish = spr_WaddleDoo_Normal_Idle;
		sprDuck = spr_WaddleDoo_Normal_Duck;
		sprEnter = spr_WaddleDoo_Normal_Walk;
		sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
		sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
		sprHurt = spr_WaddleDoo_Normal_Hurt;
		sprDeath = spr_WaddleDoo_Normal_Hurt;
		sprBeamAttack1 = spr_WaddleDoo_Normal_Attack;
		sprWaddleDooFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
		break;
		
		case "brontoBurt":
		movespeed = .75;
		jumpspeed = 1.5;
		gravNormal = .1;
		grav = gravNormal;
		gravLimitNormal = 2;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 3;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 2;
		movespeedRun = 2.5;
		movespeed = movespeedNormal;
		accel = .1;
		decel = .04;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = true;
		multiJumpLimit = 5;
		canAttack = false;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = .75;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_BrontoBurt_Normal_Idle;
		sprWalk = spr_BrontoBurt_Normal_Walk;
		sprRun = spr_BrontoBurt_Normal_Walk;
		sprJump = spr_BrontoBurt_Normal_Fly;
		sprFall = spr_BrontoBurt_Normal_Fly;
		sprSquish = spr_BrontoBurt_Normal_Ready;
		sprDuck = spr_BrontoBurt_Normal_Ready;
		sprEnter = spr_BrontoBurt_Normal_Ready;
		sprHurt = spr_BrontoBurt_Normal_HurtGround;
		sprDeath = spr_BrontoBurt_Normal_HurtFly;
		break;
		
		case "twizzy":
		movespeed = .75;
		jumpspeed = 1.5;
		gravNormal = .1;
		grav = gravNormal;
		gravLimitNormal = 2.25;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 3;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.75;
		movespeed = movespeedNormal;
		accel = .1;
		decel = .04;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = true;
		multiJumpLimit = 6;
		canAttack = false;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = .75;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_Twizzy_Normal_Idle;
		sprWalk = spr_Twizzy_Normal_Fly;
		sprRun = spr_Twizzy_Normal_Fly;
		sprJump = spr_Twizzy_Normal_Fly;
		sprFall = spr_Twizzy_Normal_Fly;
		sprSquish = spr_Twizzy_Normal_Idle;
		sprDuck = spr_Twizzy_Normal_Idle;
		sprEnter = spr_Twizzy_Normal_Idle;
		sprHurt = spr_Twizzy_Normal_Hurt;
		sprDeath = spr_Twizzy_Normal_Hurt;
		break;
		
		case "tookey":
		movespeed = .75;
		jumpspeed = 1.5;
		gravNormal = .1;
		grav = gravNormal;
		gravLimitNormal = 2.25;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 3;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.75;
		movespeed = movespeedNormal;
		accel = .1;
		decel = .04;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = true;
		multiJumpLimit = 6;
		canAttack = false;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = .75;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_Tookey_Normal_Idle;
		sprWalk = spr_Tookey_Normal_Fly;
		sprRun = spr_Tookey_Normal_Fly;
		sprJump = spr_Tookey_Normal_Fly;
		sprFall = spr_Tookey_Normal_Fly;
		sprSquish = spr_Tookey_Normal_Idle;
		sprDuck = spr_Tookey_Normal_Idle;
		sprEnter = spr_Tookey_Normal_Idle;
		sprHurt = spr_Tookey_Normal_Hurt;
		sprDeath = spr_Tookey_Normal_Hurt;
		break;
		
		case "sirKibble":
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5.5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		climbSpeed = 2;
		
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = true;
		canDuck = false;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = .5;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_SirKibble_Normal_Idle;
		sprWalk = spr_SirKibble_Normal_Walk;
		sprRun = spr_SirKibble_Normal_Walk;
		sprJump = spr_SirKibble_Normal_Catch;
		sprFall = spr_SirKibble_Normal_Catch;
		sprSquish = spr_SirKibble_Normal_Idle;
		sprDuck = spr_SirKibble_Normal_Idle;
		sprEnter = spr_SirKibble_Normal_Walk;
		sprClimbUp = spr_Kirby_Normal_ClimbUp;
		sprClimbDown = spr_Kirby_Normal_ClimbDown;
		sprHurt = spr_SirKibble_Normal_Hurt;
		sprDeath = spr_SirKibble_Normal_HurtAir;
		sprCutterCharge = spr_SirKibble_Normal_Catch;
		sprCutterAttack1 = spr_SirKibble_Normal_Attack;
		sprCutterCatch = spr_SirKibble_Normal_Catch;
		break;
		
		case "bouncy":
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		runImageSpeedIncrease = 0;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_Bouncy_Normal_Idle;
		sprWalk = spr_Bouncy_Normal_Jump;
		sprJump = spr_Bouncy_Normal_Jump;
		sprFall = spr_Bouncy_Normal_Idle;
		sprSquish = spr_Bouncy_Normal_Idle;
		sprDuck = spr_Bouncy_Normal_Duck;
		sprEnter = spr_Bouncy_Normal_Idle;
		sprHurt = spr_Bouncy_Normal_Hurt;
		sprDeath = spr_Bouncy_Normal_Hurt;
		break;
		
		case "gordo":
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 4;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.5;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = false;
		runImageSpeedIncrease = 0;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_Gordo_Normal_Idle;
		sprWalk = spr_Gordo_Normal_Idle;
		sprJump = spr_Gordo_Normal_Idle;
		sprFall = spr_Gordo_Normal_Idle;
		sprSquish = spr_Gordo_Normal_Idle;
		sprDuck = spr_Gordo_Normal_Idle;
		sprEnter = spr_Gordo_Normal_Idle;
		sprHurt = spr_Gordo_Normal_Idle;
		sprDeath = spr_Gordo_Normal_Idle;
		break;
		
		case "bloodGordo":
		gravNormal = .4;
		grav = gravNormal;
		gravLimitNormal = 8;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 6;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.5;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = false;
		runImageSpeedIncrease = 0;
		
		maskIndex = spr_16Square_Mask;
		sprIdle = spr_BloodGordo_Normal_Idle;
		sprWalk = spr_BloodGordo_Normal_Idle;
		sprJump = spr_BloodGordo_Normal_Idle;
		sprFall = spr_BloodGordo_Normal_Idle;
		sprSquish = spr_BloodGordo_Normal_Idle;
		sprDuck = spr_BloodGordo_Normal_Idle;
		sprEnter = spr_BloodGordo_Normal_Idle;
		sprHurt = spr_BloodGordo_Normal_Idle;
		sprDeath = spr_BloodGordo_Normal_Idle;
		break;
	}
	characterSetupTimer = -1;
}

//Death Timer

if (deathTimer > 0)
{
	deathTimer -= 1;
}
else if (deathTimer == 0)
{
	global.abilityP1 = "none";
	var musDeath = mus_Death1;
	if (global.playerLives <= 0) musDeath = mus_Death2;
	audio_play_sound(musDeath,0,false);
	deathRestartTimer = deathRestartTimerMax;
	vsp = -jumpspeedNormal;
	if (y > room_height) vsp = -(jumpspeedNormal * 1.7);
	state = playerStates.death;
    deathTimer = -1;
}

//Death Restart Timer

if (deathRestartTimer > 0)
{
	deathRestartTimer -= 1;
}
else if (deathRestartTimer == 0)
{
	global.playerLives -= 1;
	var fadeTrans = instance_create_depth(0,0,-999,obj_Fade);
	fadeTrans.targetRoom = global.roomCheckpoint;
	fadeTrans.alphaSpd = 0.02;
	fadeTrans.pausable = false;
	if (global.playerLives < 0) fadeTrans.targetRoom = rm_GameOver;
    deathRestartTimer = -1;
}

//Bubble Position Timer

if (sprite_index == sprSleep)
{
	if (bubblePosTimer > 0)
	{
		bubblePosTimer -= 1;
	}
	else if (bubblePosTimer == 0)
	{
		if (bubblePos == 0)
		{
			bubblePos = 1;
		}
		else
		{
			bubblePos = 0;
		}
		bubblePosTimer = bubblePosTimerMax;
	}
}