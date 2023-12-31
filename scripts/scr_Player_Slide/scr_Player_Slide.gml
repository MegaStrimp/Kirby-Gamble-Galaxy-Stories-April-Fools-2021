///@description Slide State

function scr_Player_Slide()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		//Gravity
		
		if (vsp < gravLimitNormal)
		{
			vsp += grav;
		}
		else
		{
			duckJumpCharge = 0;
			duckSlide = false;
			duck = false;
			state = playerStates.normal;
			vsp = gravLimitNormal;
		}
		
		//Duck
		
		if (duck)
		{
			if (!global.cutscene)
			{
			    if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl))) dir = -1;
			    if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr))) dir = 1;
			}
		    hsp = 0;
		    if (place_meeting(x,y + 1,obj_Wall))
		    {
				if (!idleAnimation)
				{
					if (idleAnimationTimer < idleAnimationTimerMax)
					{
						idleAnimationTimer += 1;
					}
					else
					{
						image_index = 0;
						idleAnimationTimer = 0;
						idleAnimation = true;
					}
				}
				
				var ducksprite = sprDuck;
				var duckblinksprite = sprDuckBlink;
				
				var collidedWall = instance_place(x,y + 1,obj_Wall);
				if ((playerCharacter == "kirby") and (collidedWall.slope))
				{
					switch (collidedWall.slopeType)
					{
						case "normal":
						if (dir == 1)
						{
							if (sign(collidedWall.image_xscale) == 1)
							{
								ducksprite = sprDuckNormalSlopeL;
								duckblinksprite = sprDuckNormalSlopeLBlink;
							}
							else
							{
								ducksprite = sprDuckNormalSlopeR;
								duckblinksprite = sprDuckNormalSlopeRBlink;
							}
						}
						else
						{
							if (sign(collidedWall.image_xscale) == 1)
							{
								ducksprite = sprDuckNormalSlopeR;
								duckblinksprite = sprDuckNormalSlopeRBlink;
							}
							else
							{
								ducksprite = sprDuckNormalSlopeL;
								duckblinksprite = sprDuckNormalSlopeLBlink;
							}
						}
						break;
						
						case "gentle":
						if (dir == 1)
						{
							if (sign(collidedWall.image_xscale) == 1)
							{
								ducksprite = sprDuckNormalSlopeR;
								duckblinksprite = sprDuckNormalSlopeRBlink;
							}
							else
							{
								ducksprite = sprDuckNormalSlopeL;
								duckblinksprite = sprDuckNormalSlopeLBlink;
							}
						}
						else
						{
							if (sign(collidedWall.image_xscale) == 1)
							{
								ducksprite = sprDuckNormalSlopeL;
								duckblinksprite = sprDuckNormalSlopeLBlink;
							}
							else
							{
								ducksprite = sprDuckNormalSlopeR;
								duckblinksprite = sprDuckNormalSlopeRBlink;
							}
						}
						break;
						
						case "steep":
						if (dir == 1)
						{
							if (sign(collidedWall.image_xscale) == 1)
							{
								ducksprite = sprDuckSteepSlopeR;
								duckblinksprite = sprDuckSteepSlopeRBlink;
							}
							else
							{
								ducksprite = sprDuckSteepSlopeL;
								duckblinksprite = sprDuckSteepSlopeLBlink;
							}
						}
						else
						{
							if (sign(collidedWall.image_xscale) == 1)
							{
								ducksprite = sprDuckSteepSlopeL;
								duckblinksprite = sprDuckSteepSlopeLBlink;
							}
							else
							{
								ducksprite = sprDuckSteepSlopeR;
								duckblinksprite = sprDuckSteepSlopeRBlink;
							}
						}
						break;
					}
				}
				
				if (idleAnimation)
				{
					switch (playerCharacter)
					{
						case "kirby":
						sprite_index = duckblinksprite;
						break;
						
						default:
						sprite_index = ducksprite;
						break;
					}
				}
				else
				{
					sprite_index = ducksprite;
				}
		    }
			else
			{
				if (idleAnimation) image_index = 0;
				idleAnimation = false;
				idleAnimationTimer = 0;
				idleAnimationTimerMax = 30;
				sprite_index = sprFall;
			}
			
			if (canDuckHighJump)
			{
				if (duckJumpCharge < duckJumpChargeMax)
				{
					if (duckJumpCharge == duckJumpChargeMax - 1)
					{
						audio_play_sound(snd_Charge_Ready,0,false);
						var particle = instance_create_depth(x,y - 4,depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_Flash1;
						particle.destroyAfterAnimation = true;
					}
					duckJumpCharge += 1;
				}
				else
				{
					if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
					duckJumpCharge = duckJumpChargeMax;
				}
				scaleExX = (.15 / duckJumpChargeMax) * duckJumpCharge;
				scaleExY = (-.15 / duckJumpChargeMax) * duckJumpCharge;
			}
			
		    if ((!global.cutscene) and (canSlide) and (!duckSlide) and (place_meeting(x,y + 1,obj_Wall)) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))))
		    {
				if (audio_is_playing(snd_Slide)) audio_stop_sound(snd_Slide);
				slideSfx = audio_play_sound(snd_Slide,0,false);
				slideMaskProj = instance_create_depth(x,y,depth,obj_Projectile_SlideMask);
				slideMaskProj.owner = id;
				slideMaskProj.dmg = dmg;
				slideMaskProj.image_xscale = image_xscale;
				slideMaskProj.image_yscale = image_yscale;
		        hsp = movespeedSlide * dir;
		        duckSlide = true;
		        duck = false;
		    }
			
			//Cancel Ducking
			
			if ((!global.cutscene) and ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd))) or ((canDuckHighJump) and (duckJumpCharge == duckJumpChargeMax) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1)))))
			{
				if (duckJumpCharge == duckJumpChargeMax)
				{
					var playerCharacter = global.characterP1;
					if (player == 1) playerCharacter = global.characterP2;
					
					switch (playerCharacter)
					{
						case "waddleDee":
						var jumpSound = choose(snd_WaddleDee1,snd_WaddleDee6,snd_WaddleDee7,snd_WaddleDee8,snd_WaddleDee9,snd_WaddleDee10,snd_WaddleDee11);
						audio_play_sound(jumpSound,0,false);
						if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
						audio_play_sound(snd_BigJump,0,false);
						var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 90 + (20 * dir);
						sprite_index = sprJump;
						image_index = 0;
						scaleExX = -.25;
						scaleExY = .25;
						vsp = -(jumpspeed * 1.25);
						break;
						
						case "waddleDoo":
						if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
						audio_play_sound(snd_BigJump,0,false);
						var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 90 + (20 * dir);
						sprite_index = sprJump;
						image_index = 0;
						scaleExX = -.25;
						scaleExY = .25;
						vsp = -(jumpspeed * 1.25);
						break;
						
						default:
						if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
						audio_play_sound(snd_BigJump,0,false);
						var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 90 + (20 * dir);
						sprite_index = sprJump;
						image_index = 0;
						vsp = -(jumpspeed * 1.25);
						break;
					}
					if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
					chargeSfxState = "intro";
					invincibleFlash = false;
					invincibleFlashTimer = -1;
					jumpLimit = false;
					jumpLimitTimer = (jumpLimitTimerMax * 2);
				}
				duckJumpCharge = 0;
			    duckSlide = false;
			    duck = false;
			    state = playerStates.normal;
			}
		}
		
		//Slide
		
		if (duckSlide)
		{
		    if (hsp >= decelSlide) hsp -= decelSlide;
		    if (hsp <= -decelSlide) hsp += decelSlide;
			if ((hsp > -decelSlide) and (hsp < decelSlide)) hsp = 0;
			
			if (idleAnimation) image_index = 0;
			idleAnimation = false;
			idleAnimationTimer = 0;
			idleAnimationTimerMax = 30;
		    if (place_meeting(x,y + 1,obj_Wall))
		    {
				if (abs(hsp) > (decelSlide * 5))
				{
					sprite_index = sprSlide;
				}
				else
				{
					sprite_index = sprSlideEnd;
				}
		    }
			else
			{
				sprite_index = sprFall;
			}
		    if (hsp == 0)
		    {
				if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
				if (instance_exists(slideMaskProj)) instance_destroy(slideMaskProj);
		        duck = true;
		        duckSlide = false;
		    }
		}
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}