///@description Normal State

function scr_Player_Normal()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		//Run
		
		if ((canRun) and (playerAbility != "ufo"))
		{
			if (runDoubleTap > -1) runDoubleTap -= 1;
			if ((!global.cutscene) and (!runTurn) and (((keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight))) or ((gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr)))))
			{
			    if (runDoubleTap > 0)
			    {
					if (!run)
					{
						if (!place_meeting(x,y + 1,obj_Wall))
						{
							var parJump = instance_create_depth(x,y,depth + 1,obj_Particle);
							parJump.sprite_index = spr_Particle_Jump;
							parJump.destroyAfterAnimation = true;
							parJump.spdBuiltIn = 6;
							parJump.fricSpd = .6;
							parJump.direction = 180;
							if (dir == -1) parJump.direction = 0;
						}
						if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
						audio_play_sound(snd_DashBegin,0,false);
						if (playerAbility == "mirror")
						{
							mirrorDashParticleTimer = 0;
						}
						else
						{
							runParticleTimer = 0;
						}
						run = true;
					}
			    }
			    runDoubleTap = 20;
			}
		}
		
		if (run)
		{
		    movespeed = movespeedRun;
		    if ((runCancelTimer == -1) and ((keyboard_check_released(keyLeft)) or (keyboard_check_released(keyRight))) or (gamepad_button_check_released(0,gp_padl)) or (gamepad_button_check_released(0,gp_padr) or (global.cutscene)))
		    {
		        runCancelTimer = 15;
		    }
			if (sprite_index == sprMirrorDash)
			{
				if (!audio_is_playing(mirrorDashSfx)) mirrorDashSfx = audio_play_sound(snd_Mirror3,0,false);
				if (mirrorDashParticleTimer == -1) mirrorDashParticleTimer = mirrorDashParticleTimerMax;
				image_index = 0;
				var afterimage = instance_create_depth(x,y,depth + 1,obj_Afterimage);
				afterimage.sprite_index = scr_Player_AbilityHat(playerAbility,playerCharacter);
				afterimage.image_index = choose(1,2);
				afterimage.image_xscale = image_xscale;
				afterimage.image_alpha = .6;
				afterimage.paletteIndex = spr_Kirby_Normal_Palette_Misc_MirrorCyan;
				afterimage.destroyTimer = 4;
			}
			else
			{
				if (audio_is_playing(mirrorDashSfx)) audio_stop_sound(mirrorDashSfx);
				mirrorDashParticleTimer = -1;
			}
		}
		else
		{
		    movespeed = movespeedNormal;
		}
		
		if ((runTurn) and (hsp == 0))
		{
			run = false;
			runTurn = false;
		}
		
		//Movement
		
		if ((hspLimit) and (!hurt) and (walkSquishTimer == -1))
		{
			if ((!global.cutscene) and (canWalk) and (!runTurn))
			{
				if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
				{
					if (!attack)
					{
						hsp += accel;
						if (!runTurn) dir = 1;
						if ((place_meeting(x,y + 1,obj_Wall)) and (run) and (playerAbility != "mirror") and (sign(hsp) != 0) and (sign(hsp) != sign(dir)))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							dir = -1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurn = true;
						}
					}
				}
				if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
				{
					if (!attack)
					{
						hsp -= accel;
						if (!runTurn) dir = -1;
						if ((place_meeting(x,y + 1,obj_Wall)) and (run) and (playerAbility != "mirror") and (sign(hsp) != 0) and (sign(hsp) != sign(dir)))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							dir = 1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurn = true;
						}
					}
				}
			}
			
			if ((canUfoFloat) or (playerAbility == "ufo"))
			{
				if (!global.cutscene)
				{
					if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
					{
						if (!attack) vsp -= accel;
					}
					if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
					{
						if (!attack) vsp += accel;
					}
				}
				
				if ((((keyboard_check(keyDown)) and (keyboard_check(keyUp)) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))) or ((gamepad_button_check(0,gp_padu)) and (gamepad_button_check(0,gp_padd)) and (!keyboard_check(keyDown)) and (!keyboard_check(keyUp))) or ((!keyboard_check(keyDown)) and (!keyboard_check(keyUp) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))))) or (attack) or (global.cutscene))
				{
					if (vsp >= decel) vsp -= decel;
					if (vsp <= -decel) vsp += decel;
					if ((vsp > -decel) and (vsp < decel)) vsp = 0;
				}
				
				hsp = clamp(hsp, -ufoFloatSpd, ufoFloatSpd);
				vsp = clamp(vsp, -ufoFloatSpd, ufoFloatSpd);
			}
			else
			{
				hsp = clamp(hsp, -movespeed, movespeed);
			}
			
			if ((((keyboard_check(keyLeft)) and (keyboard_check(keyRight)) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))) or ((gamepad_button_check(0,gp_padl)) and (gamepad_button_check(0,gp_padr)) and (!keyboard_check(keyLeft)) and (!keyboard_check(keyRight))) or ((!keyboard_check(keyLeft)) and (!keyboard_check(keyRight) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))))) or (attack) or (runTurn) or (global.cutscene))
			{
				var ultiDecel = decel;
				if (attackNumber == "beamAir") ultiDecel = decel - .025;
				if (hsp >= ultiDecel) hsp -= ultiDecel;
				if (hsp <= -ultiDecel) hsp += ultiDecel;
				if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
			}
			
		}
		
		if ((hasGravity) and (playerAbility != "ufo"))
		{
			var gravOffset = 0;
			if (attackNumber == "beamAir") gravOffset = .05;
			if (vsp < gravLimit)
			{
				vsp += grav - gravOffset;
			}
			else
			{
				vsp = gravLimit - (gravOffset * 5);
				if ((playerCharacter == "kirby") and (fallHopCounter < fallHopCounterMax)) fallHopCounter += 1;
			}
		}
		
		if ((!global.cutscene) and (!canUfoFloat) and (playerAbility != "ufo") and (vsp < 0) and (!keyboard_check(keyJump)) and (!gamepad_button_check(0,gp_face1)))
		{
			var jumpLimitValue = -jumpspeed / 4;
			switch (playerCharacter)
			{
				case "bouncy":
				jumpLimitValue = -jumpspeed / 2;
				break;
				
				default:
				jumpLimitValue = -jumpspeed / 4;
				break;
			}
		    if ((hasJumpLimit) and (jumpLimit)) vsp = max(vsp,jumpLimitValue);
		}
		
		//Grounded
		
		if (((!canUfoFloat) and (playerAbility != "ufo")))
		{
			if (place_meeting(x,y + 1,obj_Wall))
			{
				if ((canMultiJump) and (multiJumpLimit != -1))
				{
					multiJumpCounter = 0;
					if (!invincible)
					{
						invincibleFlash = false;
						invincibleFlashTimer = -1;
					}
				}
				fallRoll = false;
				if (jumpLimit) vsp = 0;
				if (fallHopCounter != 0) fallHopCounter = 0;
			}
		}
		
		//Abilities
		
		if (canAttack)
		{
			switch (playerCharacter)
			{
				case "kirby":
				switch (playerAbility)
				{
					case "none":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt))
				    {
						if (!hurt)
						{
						    var inhaleMask = instance_create_depth(x + (3 * dir),y - 2,depth + 1,obj_InhaleMask);
							inhaleMask.image_xscale = image_xscale;
							inhaleMask.owner = id;
						}
				        run = false;
				        image_index = 0;
						inhaling = false;
				        state = playerStates.inhale;
				    }
					break;
					
					case "cutter":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						if (run = true) and (vsp = 0) and (hsp != 0)
						{
							attack = true;
							attackNumber = "cutterDash";
							sprite_index = sprCutterAttack2;
					        image_index = 0;
			                cutterCatch = false;
						}
						else
						{
							attack = true;
							attackNumber = "cutterNormal";
							sprite_index = sprCutterAttack1;
					        image_index = 0;
						}
				    }
					
					if (attackNumber == "cutterNormal")
					{
						if ((round(image_index) == (image_number - 1)) and (attackable))
						{
							if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
							audio_play_sound(snd_Cutter,0,false);
					        var projectile = instance_create_depth(x,y - 5,depth,obj_Projectile_Cutter);
							projectile.owner = id;
							projectile.dmg = 12;
							projectile.sprite_index = projectile.sprIdle;
							projectile.hsp = dir * projectile.decelMax;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							attackable = false;
						}
					}
					
					if (attackNumber == "cutterDash")
					{
						if (attackable)
						{
			                hsp = movespeedSlide * dir;
							run = false;
			                attack = true;
							attackable = false;
			                attackTimer = 45;
			                state = playerStates.cutterDash;
							if (audio_is_playing(snd_CutterDash)) audio_stop_sound(snd_CutterDash);
							slideSfx = audio_play_sound(snd_CutterDash,0,false);
							cutterDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDashMask);
							cutterDashMaskProj.owner = id;
							cutterDashMaskProj.dmg = 18;
							cutterDashMaskProj.dmgMax = 18;
							cutterDashMaskProj.dmgMin = 16;
							cutterDashMaskProj.image_xscale = image_xscale;
							cutterDashMaskProj.image_yscale = image_yscale;
						}
					}
					break;
					
					case "beam":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
						{
							if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
							sndBeam = audio_play_sound(snd_Beam,0,false);
							attack = true;
							attackNumber = "beamUp";
							sprite_index = sprBeamAttack4;
					        image_index = 0;
						}
						else
						{
							if (run)
							{
								if (place_meeting(x,y + 1,obj_Wall))
								{
									attack = true;
									attackNumber = "beamCharge";
									sprite_index = sprBeamCharge;
							        image_index = 0;
								}
								else
								{
									attackTimer = 45;
									if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
									sndBeam = audio_play_sound(snd_BeamAir,0,false);
									attack = true;
									attackNumber = "beamAir";
									jumpLimit = false;
									jumpLimitTimer = jumpLimitTimerMax;
									vsp = -(jumpspeed / 2);
									sprite_index = sprBeamAttack2;
							        image_index = 0;
								}
							}
							else
							{
								attack = true;
								attackNumber = "beamCharge";
								sprite_index = sprBeamCharge;
						        image_index = 0;
							}
						}
				    }
					
					if (attackNumber == "beamCharge")
					{
						if (beamCharge == beamChargeMax - 1)
						{
							audio_play_sound(snd_Charge_Ready,0,false);
							var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
							particle.sprite_index = spr_Particle_Flash1;
							particle.scale = 1.5;
							particle.destroyAfterAnimation = true;
						}
						beamCharge += 1;
						if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
						{
							if (chargeSfxState == "intro")
							{
							    chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
							    chargeSfxState = "loop";
							}
							else
							{
							    chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
							}
						}
						
						if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
						{
							dir = 1;
						}
						if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
						{
							dir = -1;
						}
						
						if (beamCharge < beamChargeMax)
						{
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								beamCharge = 0;
								if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
								chargeSfxState = "intro";
								if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
								sndBeam = audio_play_sound(snd_Beam,0,false);
								attack = true;
								attackNumber = "beamNormal";
								sprite_index = sprBeamAttack1;
							    image_index = 0;
							}
						}
						else
						{
							if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								beamCharge = 0;
								if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
								chargeSfxState = "intro";
								invincibleFlash = false;
								invincibleFlashTimer = -1;
								attack = true;
								attackNumber = "beamChargeAttack";
								sprite_index = sprBeamAttack5;
							    image_index = 0;
							}
						}
					}
					
					if (attackNumber == "beamNormal")
					{
						if (attackable)
						{
							attackTimer = 35;
							parBeamCycle1 = instance_create_depth(-100,-100,depth - 1,obj_Particle);
		                    parBeamCycle1.followObject = false;
		                    parBeamCycle1.followedObject = id;
		                    parBeamCycle1.sprite_index = spr_Particle_BeamCycle;
							parBeamCycle1.turnSpd = (5 * -dir);
							parBeamCycle1.turnAroundObject = true;
							parBeamCycle1.angle = 90 + (10 * dir);
		                    parBeamCycle1.orbit = 20;
							parBeamCycle1.invisTimerMax = 2;
		                    parBeamCycle1.invisTimer = parBeamCycle1.invisTimerMax;
		                    parBeamCycle1.destroyTimer = attackTimer;
							for (var i = 0; i < 5; i++)
							{
								var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
								projBeam.owner = id;
								projBeam.dmg = 12;
								switch (i)
								{
									case 0:
									projBeam.angle = 90 + (40 * -dir);
									break;
									
									case 1:
									projBeam.angle = 90 + (35 * -dir);
									break;
									
									case 2:
									projBeam.angle = 90 + (25 * -dir);
									break;
									
									case 3:
									projBeam.angle = 90 + (10 * -dir);
									break;
									
									case 4:
									projBeam.angle = 90 - (8 * -dir);
									break;
								}
								projBeam.centerX = (10 * dir);
								projBeam.centerY = -5;
								projBeam.orbit = 20 + (15 * i);
								projBeam.invisTimer = -1 + (2 * i);
								if (i > 0) projBeam.visible = false;
								projBeam.imageIndex = i - 1;
								if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
								projBeam.spd = (2.4 + (i * .4)) * -dir;
								projBeam.image_index = projBeam.imageIndex;
								projBeam.enemy = false;
								projBeam.destroyableByWall = false;
								projBeam.destroyableByEnemy = false;
								projBeam.destroyableByObject = false;
								projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
								projBeam.pulseTimer = projBeam.pulseTimerMax;
								projBeam.invisTimerMax = -1;
								projBeam.destroyTimer = 25 + (2 * i);
							}
							attackable = false;
						}
						if (instance_exists(parBeamCycle1))
						{
							if (floor(image_index) == 2) parBeamCycle1.visible = false;
							if (floor(image_index) == 3)
							{
								parBeamCycle1.visible = true;
								parBeamCycle1.turnSpd = (11 * -dir);
								parBeamCycle1.orbit = 14;
							}
						}
					}
					
					if (attackNumber == "beamAir")
					{
						attackable = false;
						if (beamAttack2Timer == -1) beamAttack2Timer = (beamAttack2TimerMax + irandom_range(-1,1));
						
						if (place_meeting(x,y + 1,obj_Wall))
						{
							audio_stop_sound(sndBeam);
							beamAttack2Timer = -1;
							attack = false;
							attackable = true;
							attackNumber = "none";
						}
					}
					
					if (attackNumber == "beamUp")
					{
						if (attackable)
						{
							for (var i = 0; i < 5; i++)
							{
								var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
								projBeam.owner = id;
								projBeam.dmg = 12;
								switch (i)
								{
									case 0:
									projBeam.angle = (270 + (dir * 100)) - (38 * -dir);
									break;
									
									case 1:
									projBeam.angle = (270 + (dir * 100)) - (35 * -dir);
									break;
									
									case 2:
									projBeam.angle = (270 + (dir * 100)) - (26 * -dir);
									break;
									
									case 3:
									projBeam.angle = (270 + (dir * 100)) - (14 * -dir);
									break;
									
									case 4:
									projBeam.angle = (270 + (dir * 100)) + (0 * -dir);
									break;
								}
								projBeam.orbit = 38 + (15 * i);
								projBeam.invisTimer = -1 + (2 * i);
								if (i > 0) projBeam.visible = false;
								projBeam.imageIndex = i - 1;
								if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
								projBeam.spd = (2.8 + (i * .4)) * dir;
								projBeam.image_index = projBeam.imageIndex;
								projBeam.enemy = false;
								projBeam.destroyableByWall = false;
								projBeam.destroyableByEnemy = false;
								projBeam.destroyableByObject = false;
								projBeam.hasLimit = false;
								projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
								projBeam.pulseTimer = projBeam.pulseTimerMax;
								projBeam.invisTimerMax = -1;
								projBeam.destroyTimer = 25 + (2 * i);
							}
							attackable = false;
						}
					}
					
					if (attackNumber == "beamChargeAttack")
					{
						if (attackable)
						{
							scaleExX = .2;
							scaleExY = -.2;
							hsp = 1 * -dir;
							attackTimer = 20;
							if (audio_is_playing(snd_BeamCharge)) audio_stop_sound(snd_BeamCharge);
							audio_play_sound(snd_BeamCharge,0,false);
						    var projectile = instance_create_depth(x + (6 * dir),y - 5,depth,obj_Projectile_BeamCharge);
							projectile.owner = id;
							projectile.dmg = 30;
							projectile.hsp = dir * 6.5;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							attackable = false;
						}
					}
					
					/*if (attackNumber == "beamUp")
					{
						if (attackable)
						{
							attackTimer = 24;
							for (var i = 0; i < 5; i++)
							{
								var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
								projBeam.owner = id;
								projBeam.invisTimer = -1 + (2 * i);
								if (i > 0) projBeam.visible = false;
								projBeam.imageIndex = i - 1;
								if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
								projBeam.orbit = 20 + (15 * i);
								projBeam.angle = 90 + ((40 - (5 * i)) * -dir);
								projBeam.spd = 0;
								projBeam.orbitSpd = 2;
								projBeam.image_index = projBeam.imageIndex;
								projBeam.enemy = false;
								projBeam.destroyableByWall = false;
								projBeam.destroyableByEnemy = false;
								projBeam.destroyableByObject = false;
								projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
								projBeam.hasLimit = false;
								projBeam.pulseTimer = projBeam.pulseTimerMax;
								projBeam.invisTimerMax = -1;
								projBeam.destroyTimer = 4 + (2 * i);
								if (i == 4) projBeam.destroyTimer = 22;
							}
							attackable = false;
						}
					}*/
					break;
					
					case "stone":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable))
				    {
						if (!keyboard_check(keyUp))
						{
							if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
							audio_play_sound(snd_StoneReady,0,false);
							hsp = 0;
							if (place_meeting(x,y + 1,obj_Wall))
							{
								if (run) hsp = (movespeedRun * 2) * dir;
							}
							else
							{
								vsp = -jumpspeed;
							}
							invincible = true;
				            attack = true;
				            attackNumber = "stoneNormal";
				            attackable = false;
							stoneParticleTimer = 0;
							sprite_index = sprStoneAttack1Ready;
							image_index = 0;
						}
						else
						{
							if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
							audio_play_sound(snd_StoneReady,0,false);
							stoneFistReadyTimer = stoneFistReadyTimerMax;
				            attack = true;
				            attackNumber = "stoneUp";
				            attackable = false;
							sprite_index = sprStoneAttack2Ready;
				            image_index = 0;
						}
				    }
					
					if (attackNumber == "stoneNormal")
					{
						if ((!stoneFallen) and (!stoneReady) and (place_meeting(x,y + vsp + 1,obj_Wall)) and (sign(vsp) == 1))
						{
							if (audio_is_playing(snd_StoneFallen)) audio_stop_sound(snd_StoneFallen);
							audio_play_sound(snd_StoneFallen,0,false);
							stoneFallen = true;
							scaleExX = .2;
							scaleExY = -.2;
							shakeY = 3;
							for (var i = 0; i < 2; i++)
							{
								var parXDir = 4;
								if (i == 1) var parXDir = -4;
								var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_Particle);
								par.sprite_index = spr_Particle_ShrinkingStar4;
								if (i == 0)
								{
									par.hsp = 3;
								}
								else if (i == 1)
								{
									par.hsp = -3;
								}
								par.dir = sign(par.hsp);
								par.destroyAfterAnimation = true;
							}
							if (instance_exists(obj_Camera))
							{
								obj_Camera.shakeX = 2;
								obj_Camera.shakeY = 2;
							}
						}
						
						if (stoneReady)
						{
							shakeX = 2;
						}
						else if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))))
						{
							if (audio_is_playing(snd_StoneRelease)) audio_stop_sound(snd_StoneRelease);
							audio_play_sound(snd_StoneRelease,0,false);
							var stoneEnd = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneStop);
							stoneEnd.dmg = 205
							stoneEnd.enemy = false;
							stoneEnd.owner = id;
							vsp = -(jumpspeed / 3);
							grav = gravNormal;
							gravLimit = gravLimitNormal;
							invincible = false;
							attackTimer = 15;
							stoneReady = true;
							stoneFallen = false;
							if (instance_exists(stoneMaskProj)) instance_destroy(stoneMaskProj);
				            attack = false;
							attackNumber = "none";
							if (stoneReleaseParticleTimer == -1) stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
						}
					}
					
					if ((!global.cutscene) and (attackNumber == "stoneUp") and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)) and (stoneFistReady))
					{
						stoneFistReadyTimer = 0;
					}
					break;
					
					case "ufo":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						attackNumber = "ufoCharge";
						sprite_index = sprBeamCharge;
						image_index = 0;
				    }
					
					if (attackNumber == "ufoCharge")
					{
						if (ufoCharge == ufoChargeMax - 1)
						{
							audio_play_sound(snd_Charge_Ready,0,false);
							var particle = instance_create_depth(x,y - 4,depth - 1,obj_Particle);
							particle.sprite_index = spr_Particle_Flash1;
							particle.destroyAfterAnimation = true;
						}
						ufoCharge += 1;
						if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
						{
							if (chargeSfxState == "intro")
							{
							    chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
							    chargeSfxState = "loop";
							}
							else
							{
							    chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
							}
						}
						
						if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
						{
							dir = 1;
						}
						if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
						{
							dir = -1;
						}
						
						if (ufoCharge < ufoChargeMax)
						{
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								ufoCharge = 0;
								if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
								chargeSfxState = "intro";
								if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
								sndBeam = audio_play_sound(snd_Beam,0,false);
								attack = true;
								attackNumber = "ufoBeam";
								//sprite_index = sprBeamAttack1;
							    //image_index = 0;
							}
						}
						else
						{
							if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								ufoCharge = 0;
								if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
								chargeSfxState = "intro";
							}
						}
					}
					
					if (attackNumber == "ufoBeam")
					{
						shakeX = 2;
						shakeY = 2;
						if (attackable)
						{
							attackTimer = 35;
							for (var i = 0; i < 4; i++)
							{
								var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
								projBeam.visible = false;
								projBeam.owner = id;
								projBeam.angle = 90 + ((40 - (i * 10)) * -dir);
								projBeam.spd = (1.8 + (i * .4)) * -dir;
								projBeam.orbit = 25 + (i * 18);
								projBeam.enemy = false;
								projBeam.centerY = -4;
								projBeam.destroyableByWall = false;
								projBeam.destroyableByEnemy = false;
								projBeam.destroyableByObject = false;
								projBeam.hasLimit = false;
								projBeam.character = 5;
								projBeam.sprite_index = spr_Projectile_Beam_Ufo;
								projBeam.invisTimer = 2 + (2 * i);
								projBeam.invisTimerMax = 3;
								if (i % 2 == 0) projBeam.invisTimerMax = 5;
								projBeam.destroyTimer = 35;
							}
							attackable = false;
						}
					}
					break;
					
					case "mirror":
					if ((!global.cutscene) and (!hurt) and (!attack))
					{
						if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
						{
							if (((!keyboard_check(keyUp)) and (!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))))
					        {
								if (!run)
								{
									if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
									{
								        attack = true;
										attackable = false;
										attackTimer = 20;
							            attackNumber = "mirrorSlash";
										sprite_index = sprMirrorAttack1;
										image_index = 0;
										if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
										audio_play_sound(snd_Slash,0,false);
										mirrorSlashProj = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorSlash);
										mirrorSlashProj.dmg = 22;
										mirrorSlashProj.enemy = false;
										mirrorSlashProj.owner = id;
										mirrorSlashProj.image_xscale = image_xscale;
										mirrorSlashProj.image_yscale = image_yscale;
									}
								}
								else
								{
							        attack = true;
									attackable = false;
									attackTimer = 35;
						            attackNumber = "mirrorDash";
						            invincible = true;
									sprite_index = sprMirrorAttack3;
						            if (audio_is_playing(snd_Mirror2)) audio_stop_sound(snd_Mirror2);
									audio_play_sound(snd_Mirror2,0,false);
									for (var i = 0; i < 2; i++)
									{
							            var projMirror = instance_create_depth(x,y,depth,obj_Projectile_MirrorPlayer);
										projMirror.owner = id;
										projMirror.dmg = 16;
							            projMirror.dirX = 1;
										projMirror.image_xscale = scale * dir;
										projMirror.destroyableByWall = false;
										projMirror.destroyableByEnemy = false;
										projMirror.destroyableByObject = false;
							            if (i == 1)
										{
											projMirror.dirX = -1;
											projMirror.image_xscale = -(scale * dir);
										}
										if (vsp != 0)
										{
											if (hsp > 0)
											{
												projMirror.jumpAngle = 45;
											}
											else if (hsp < 0)
											{
												projMirror.jumpAngle = 45 + 90;
											}
										}
										projMirror.spriteIndex = sprMirrorAttack3;
										projMirror.paletteIndex = paletteIndex;
										projMirror.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
										projMirror.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
										projMirror.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
									}
									for (var i = 0; i < 3; i++)
									{
							            var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
							            par.direction = random_range(0,359);
							            par.sprite_index = spr_Particle_Mirror1;
							            par.spdBuiltIn = irandom_range(1,2);
										par.destroyAfterAnimation = true;
									}
						            state = playerStates.mirrorDash;
								}
					        }
						
					        if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
					        {
					            attack = true;
					            attackNumber = "mirrorDown";
					            invincible = true;
								sprite_index = sprMirrorAttack4;
					            var mirrorSpawner = instance_create_depth(x,y,depth,obj_MirrorAttackSpawner);
					            mirrorSpawner.owner = id;
					            mirrorSpawner.dir = dir;
								mirrorSpawner.spriteIndex = sprMirrorAttack4;
								mirrorSpawner.paletteIndex = paletteIndex;
								mirrorSpawner.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
								mirrorSpawner.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
								mirrorSpawner.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								for (var i = 0; i < 3; i++)
								{
						            var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
						            par.direction = random_range(0,359);
						            par.sprite_index = spr_Particle_Mirror1;
						            par.spdBuiltIn = irandom_range(1,2);
									par.destroyAfterAnimation = true;
								}
					            state = playerStates.mirrorDash;
					        }
						
							if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
					        {
					            attack = true;
					            attackNumber = "mirrorUp";
					            invincible = true;
								sprite_index = sprMirrorAttack5;
					            var mirrorSpawner = instance_create_depth(x,y,depth,obj_MirrorAttackSpawner);
								mirrorSpawner.owner = id;
					            mirrorSpawner.dir = image_xscale;
					            mirrorSpawner.state = 1;
								mirrorSpawner.spriteIndex = sprMirrorAttack5;
								mirrorSpawner.paletteIndex = paletteIndex;
								mirrorSpawner.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
								mirrorSpawner.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
								mirrorSpawner.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								for (var i = 0; i < 3; i++)
								{
							        var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
							        par.direction = random_range(0,359);
							        par.sprite_index = spr_Particle_Mirror1;
							        par.spdBuiltIn = irandom_range(1,2);
									par.destroyAfterAnimation = true;
								}
					            state = playerStates.mirrorDash;
					        }
						}
						else if ((keyboard_check(keyAttack)) or (gamepad_button_check(0,gp_face2)))
						{
							mirrorHold = true;
							attack = true;
							attackNumber = "mirrorNormal";
							sprite_index = sprMirrorAttack2;
							image_index = 0;
						}
					}
					
					if (attackNumber == "mirrorNormal")
					{
						if ((mirrorHold) and (mirrorNormalAttackTimer == -1)) mirrorNormalAttackTimer = mirrorNormalAttackTimerMax;
				        if ((mirrorHold) and (!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)))
				        {
							mirrorHold = false;
							mirrorFirstAttack = true;
							mirrorAttackDir = 1;
				            attackTimer = 15;
							mirrorNormalAttackTimer = -1;
							sprite_index = sprMirrorAttack2Release;
						    image_index = 0;
				        }
					}
				    break;
					
					case "ninja":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						attack = true;
						attackNumber = "ninjaCharge";
						sprite_index = sprNinjaCharge;
						image_index = 0;
				    }
					
					if (attackNumber == "ninjaCharge")
					{
						ninjaCharge += 1;
						
						if (ninjaCharge < ninjaChargeMax)
						{
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								ninjaCharge = 0;
								attack = true;
								attackNumber = "ninjaNormal";
								sprite_index = sprNinjaAttack1;
							    image_index = 0;
							}
						}
						else
						{
							if (!global.cutscene)
							{
								ninjaCharge = 0;
								attack = true;
								attackNumber = "ninjaSlash";
								sprite_index = sprNinjaAttack2;
							    image_index = 0;
							}
						}
					}
					
					if (attackNumber == "ninjaNormal")
					{
						if (attackable)
						{
							attackTimer = 4;
							if (audio_is_playing(snd_NinjaKnife)) audio_stop_sound(snd_NinjaKnife);
							audio_play_sound(snd_NinjaKnife,0,false);
						    var projectile = instance_create_depth(x + (8 * dir),y - 5 + (irandom_range(-3,3)),depth - 1,obj_Projectile_NinjaKunai);
							projectile.owner = id;
							projectile.dmg = 7;
							projectile.hsp = dir * 7;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							attackable = false;
						}
					}
					
					if (attackNumber == "ninjaSlash")
					{
						if (attackable)
						{
							attackTimer = 10;
							if (audio_is_playing(snd_NinjaKnife)) audio_stop_sound(snd_NinjaKnife);
							audio_play_sound(snd_NinjaKnife,0,false);
						    var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_NinjaSlash);
							projectile.owner = id;
							projectile.dmg = 25;
							projectile.hsp = dir * 4;
							projectile.vsp = 2;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							attackable = false;
						}
					}
					break;
					
					case "fire":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						if (run = true) and (hsp != 0)
						{
							fireDashHsp = movespeedBurst * dir;
							run = false;
			                attack = true;
							attackNumber = "fireDash";
							attackable = false;
			                attackTimer = 45;
			                state = playerStates.fireDash;
							if (audio_is_playing(snd_Fire)) audio_stop_sound(snd_Fire);
		                    audio_play_sound(snd_Fire,0,false);
							fireDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_BurstMask);
							fireDashMaskProj.owner = id;
							fireDashMaskProj.dmgMin = 18;
							fireDashMaskProj.dmgMax = 21;
							fireDashMaskProj.image_xscale = image_xscale;
							fireDashMaskProj.image_yscale = image_yscale;
		                    var par = instance_create_depth(x + (dir * 10),y - 4,depth - 1,obj_Particle);
		                    par.dir = dir;
		                    par.sprite_index = spr_Particle_Fire2;
							par.destroyAfterAnimation = true;
						}
						else
						{
							attack = true;
							attackNumber = "fireNormal";
							sprite_index = sprFireAttack1;
					        image_index = 0;
						}
				    }
					
					if (attackNumber == "fireNormal")
					{
						if (fireNormalAttackTimer == -1) fireNormalAttackTimer = fireNormalAttackTimerMax;
				        if ((!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check_pressed(0,gp_face2)))
				        {
				            attackTimer = 0;
				        }
					}
					break;
					
					case "ice":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						attack = true;
						sprite_index = sprIceAttack1Ready;
					    image_index = 0;
				    }
					
					if (attackNumber == "iceNormal")
					{
						if ((!iceReady) and (!iceRelease))
						{
							if (iceNormalAttackTimer == -1) iceNormalAttackTimer = iceNormalAttackTimerMax;
					        if ((!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check_pressed(0,gp_face2)))
					        {
								iceRelease = true;
								sprite_index = sprIceAttack1Release;
								image_index = 0;
					        }
						}
					}
					break;
					
					case "wing":
				    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				    {
						if (run = true) and (hsp != 0)
						{
							attack = true;
							sprite_index = sprWingAttack2Ready;
					        image_index = 0;
						}
						else
						{
							attack = true;
							attackNumber = "wingNormal";
							sprite_index = sprWingAttack1;
							image_index = 0;
						}
				    }
					
					if (attackNumber == "wingNormal")
					{
						if (attackable)
						{
							attackTimer = 10;
							if (audio_is_playing(snd_WingShot)) audio_stop_sound(snd_WingShot);
							audio_play_sound(snd_WingShot,0,false);
						    var projectile = instance_create_depth(x + (10 * dir),y - 1 + (irandom_range(-3,3)),depth - 1,obj_Projectile_WingFeather);
							projectile.owner = id;
							switch (wingFeatherPos)
							{
								case 0:
								projectile.image_index = 2;
								projectile.hsp = dir * 3;
								wingFeatherPos += 1;
								break;
								
								case 1:
								projectile.image_index = 1;
								projectile.hsp = dir * 3;
								projectile.vsp = -1;
								projectile.dirY = -1;
								wingFeatherPos += 1;
								break;
								
								case 2:
								projectile.image_index = 1;
								projectile.hsp = dir * 3;
								projectile.vsp = 1;
								wingFeatherPos += 1;
								break;
								
								case 3:
								projectile.image_index = 2;
								projectile.hsp = dir * 3;
								wingFeatherPos += 1;
								break;
								
								case 4:
								projectile.image_index = 0;
								projectile.hsp = dir * 3;
								projectile.vsp = -1.5;
								projectile.dirY = -1;
								wingFeatherPos += 1;
								break;
								
								case 5:
								projectile.image_index = 0;
								projectile.hsp = dir * 3;
								projectile.vsp = 1.5;
								wingFeatherPos = 0;
								break;
							}
							projectile.dmg = 6;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.scale * projectile.dirX;
							projectile.image_yscale = projectile.scale * projectile.dirY;
							projectile.enemy = false;
							attackable = false;
						}
					}
					
					if (attackNumber == "wingDash")
					{
						if (attackable)
						{
							wingDashParticleTimer = wingDashParticleTimerMax;
							run = false;
			                attack = true;
							attackable = false;
			                attackTimer = 35;
			                state = playerStates.wingDash;
							if (audio_is_playing(snd_WingDash)) audio_stop_sound(snd_WingDash);
							wingDashSfx = audio_play_sound(snd_WingDash,0,false);
							wingMaskProj = instance_create_depth(x,y,depth,obj_Projectile_WingDashMask);
							wingMaskProj.owner = id;
							wingMaskProj.dmg = 18;
							wingMaskProj.dmgMax = 18;
							wingMaskProj.dmgMin = 16;
							wingMaskProj.image_xscale = image_xscale;
							wingMaskProj.image_yscale = image_yscale;
						}
					}
					break;
					
					case "sleep":
					audio_play_sound(snd_AbilitySwitch,0,false);
					swallowActionTimer = 0;
					global.pause = true;
					hsp = 0;
					vsp = 0;
					run = false;
					state = playerStates.swallow;
					break;
					
					case "freeze":
				    if (((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable))
				    {
						audio_play_sound(snd_Freeze,0,false);
						invincible = true;
			            attack = true;
			            attackNumber = 7;
			            attackable = false;
						sprite_index = sprFreezeAttack1Ready;
			            image_index = 0;
						freezeMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_FreezeMask);
						freezeMaskProj.enemy = false;
						freezeMaskProj.owner = id;
						freezeMaskProj.hitInvincibility = freezeMaskProj.hitInvincibilityMax;
						freezeMaskProj.image_xscale = image_xscale;
						freezeMaskProj.image_yscale = image_yscale;
				    }
					
					if ((attackNumber == 7) and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)) and (!freezeReady))
				    {
						invincible = false;
						attackTimer = 15;
						freezeReady = true;
						if (instance_exists(freezeMaskProj)) instance_destroy(freezeMaskProj);
			            attack = false;
						attackNumber = "none";
				    }
					break;
				}
				break;
				
				case "waddleDoo":
				if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
				{
					if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
					sndBeam = audio_play_sound(snd_Beam,0,false);
					attack = true;
					attackNumber = "waddleDooBeamNormal";
					sprite_index = sprBeamAttack1;
					image_index = 0;
				}
				
				if (attackNumber == "waddleDooBeamNormal")
				{
					if (attackable)
					{
						waddleDooEyeFlashTimer = waddleDooEyeFlashTimerMax;
						attackTimer = 75;
						for (var i = 0; i < 4; i++)
						{
							var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
							projBeam.owner = id;
							projBeam.dmg = 12;
							projBeam.angle = 90 + ((40 - (i * 10)) * -dir);
							projBeam.spd = (1.2 + (i * .2)) * -dir;
							projBeam.orbit = 25 + (i * 15);
							projBeam.enemy = false;
							projBeam.centerY = -4;
							projBeam.destroyableByWall = false;
							projBeam.destroyableByEnemy = false;
							projBeam.destroyableByObject = false;
							projBeam.hasLimit = false;
							projBeam.character = 1;
							projBeam.sprite_index = spr_Projectile_Beam_Enemy;
							projBeam.particleTimer = -1;
							projBeam.destroyTimer = 60;
						}
						attackable = false;
					}
				}
				break;
				
				case "sirKibble":
				if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable) and (!attack))
				{
					attack = true;
					attackNumber = "sirKibbleCutterCharge";
					sprite_index = sprCutterCharge;
					image_index = 0;
				}
				
				if (attackNumber == "sirKibbleCutterCharge")
				{
					if (cutterCharge == cutterChargeMax - 1)
					{
						audio_play_sound(snd_Charge_Ready,0,false);
						var particle = instance_create_depth(x,y - 4,depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_Flash1;
						particle.destroyAfterAnimation = true;
					}
					cutterCharge += 1;
					if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
					{
						if (chargeSfxState == "intro")
						{
							chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
							chargeSfxState = "loop";
						}
						else
						{
							chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
						}
					}
					
					if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
					{
						dir = 1;
					}
					if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
					{
						dir = -1;
					}
					
					if (cutterCharge < cutterChargeMax)
					{
						if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
						{
							cutterCharge = 0;
							if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
							chargeSfxState = "intro";
							attack = true;
							attackNumber = "sirKibbleCutterNormal";
							sprite_index = sprCutterAttack1;
						    image_index = 0;
						}
					}
					else
					{
						if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
						if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
						{
							cutterCharge = 0;
							if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
							chargeSfxState = "intro";
						}
					}
				}
				
				if (attackNumber == "sirKibbleCutterNormal")
				{
					if ((round(image_index) == 2) and (attackable))
					{
						if (audio_is_playing(snd_Spit)) audio_stop_sound(snd_Spit);
						audio_play_sound(snd_Spit,0,false);
					    var projectile = instance_create_depth(x,y - 10,depth,obj_Projectile_Cutter);
						projectile.owner = id;
						projectile.dmg = 12;
						projectile.sprite_index = projectile.sprIdle;
						projectile.hsp = dir * projectile.decelMax;
						projectile.dirX = dir;
						projectile.image_xscale = projectile.dirX;
						projectile.enemy = false;
						attackable = false;
					}
				}
				break;
			}
		}
		
		//Jump
		
		if ((!global.cutscene) and (canJump) and (playerAbility != "ufo") and (((!canMultiJump) and (place_meeting(x,y + 1,obj_Wall))) or ((canMultiJump) and (multiJumpCounter < multiJumpLimit))) and (!place_meeting(x,y - 1,obj_Wall)) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))) and (!attack))
		{
			if ((canMultiJump) and (multiJumpLimit != -1)) multiJumpCounter += 1;
			
			switch (playerCharacter)
			{
				case "waddleDee":
				var jumpSound = choose(snd_WaddleDee1,snd_WaddleDee6,snd_WaddleDee7,snd_WaddleDee8,snd_WaddleDee9,snd_WaddleDee10,snd_WaddleDee11);
				audio_play_sound(jumpSound,0,false);
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "waddleDoo":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "brontoBurt":
				if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
				audio_play_sound(snd_WingFlap,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "twizzy":
				if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
				audio_play_sound(snd_WingFlap,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "tookey":
				if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
				audio_play_sound(snd_WingFlap,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "sirKibble":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "bouncy":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				default:
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
			}
		}
		
		//Jump Limit Flash
		
		if ((invincibleFlashTimer == -1) and (multiJumpLimit != -1) and (multiJumpCounter >= multiJumpLimit)) invincibleFlashTimer = invincibleFlashTimerMax;
		
		//Auto Jump
		
		if ((!global.cutscene) and (canAutoJump) and (place_meeting(x,y + 1,obj_Wall)) and (!place_meeting(x,y - 1,obj_Wall)) and (!attack))
		{
			switch (playerCharacter)
			{
				case "bouncy":
				if ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd)))
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
					var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dir);
					sprite_index = sprJump;
					image_index = 0;
					vsp = -jumpspeed;
				}
				break;
				
				case "gordo":
				if ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd)))
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
					var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dir);
					sprite_index = sprJump;
					image_index = 0;
					vsp = -jumpspeed;
				}
				break;
				
				case "bloodGordo":
				if ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd)))
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
					var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dir);
					sprite_index = sprJump;
					image_index = 0;
					vsp = -jumpspeed;
				}
				break;
				
				default:
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
			}
		}
		
		//Duck
		
		if ((!global.cutscene) and (canDuck) and (playerAbility != "ufo") and (place_meeting(x,y + 1,obj_Wall)) and ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd))) and (!attack))
		{
			var collidingWall = instance_place(x,y + 1,obj_Wall);
			if (!collidingWall.platform)
			{
			    if (vsp == 0)
			    {
					if ((mirrorShieldHp > 0) and (playerAbility == "mirror"))
					{
						if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
						audio_play_sound(snd_Guard,0,false);
						var mirrorShield = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorShield);
						mirrorShield.owner = id;
					}
					movespeed = movespeedNormal;
					run = false;
			        duck = true;
			        slide = false;
					duckSlide = false;
			        state = playerStates.slide;
			    }
			}
		}
		
		//Climb
		
		if ((!global.cutscene) and (playerAbility != "ufo") and (canClimb) and (place_meeting(x,y,obj_Ladder)))
		{
		    if ((((!place_meeting(x,y - 1,obj_Wall)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))) or ((!place_meeting(x,y + 1,obj_Wall)) and ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))))) and (!attack))
		    {
		        hsp = 0;
		        var ladder = instance_place(x,y,obj_Ladder);
		        x = ladder.x + (sprite_get_width(spr_Ladder) / 2);
		        image_index = 0;
		        state = playerStates.climb;
				
		    }
		}
		
		//Float
		
		if ((!global.cutscene) and (canFloat) and (playerAbility != "ufo") and ((((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))) or ((!place_meeting(x,y,obj_Ladder)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))))) and (!place_meeting(x,y,obj_AntiFloat)) and (!place_meeting(x,y + 1,obj_Wall))) and (!attack))
		{
			attackTimer = 0;
		    hurt = false;
			jumpspeed = jumpspeedFloat;
		    vsp = -jumpspeed;
		    float = false;
		    image_index = 0;
		    state = playerStates.float;
		}
		
		//Door
		
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) and (!attack))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
		        var nearbyDoor = instance_place(x,y,obj_Door);
				if (!nearbyDoor.locked)
				{
					if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
					audio_play_sound(snd_Enter,0,false);
			        var fade = instance_create_depth(x,y,-999,obj_Fade);
					fade.targetRoom = nearbyDoor.targetRoom;
			        hsp = 0;
			        vsp = 0;
			        image_index = 0;
			        state = playerStates.enter;
				}
		    }
		}
		
		//Animation
		
		image_speed = 1 + (runImageSpeedIncrease * run);
		if (fallHop) image_speed = .75;
		
		if ((!canUfoFloat) and (playerAbility != "ufo") and (!attack) and (!hurt))
		{
			if ((place_meeting(x,y + 1,obj_Wall)) and (vsp == 0))
			{
			    if (hsp == 0)
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
					
					var idlesprite = sprIdle;
					var idleblinksprite = sprIdleBlink;
					
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
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleNormalSlopeR;
								    idleblinksprite = sprIdleNormalSlopeRBlink;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeL;
								    idleblinksprite = sprIdleNormalSlopeLBlink;
								}
							}
							break;
							
							case "gentle":
							if (dir == 1)
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleNormalSlopeR;
								    idleblinksprite = sprIdleNormalSlopeRBlink;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeL;
								    idleblinksprite = sprIdleNormalSlopeLBlink;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleNormalSlopeL;
								    idleblinksprite = sprIdleNormalSlopeLBlink;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeR;
								    idleblinksprite = sprIdleNormalSlopeRBlink;
								}
							}
							break;
							
							case "steep":
							if (dir == 1)
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleSteepSlopeR;
									idleblinksprite = sprIdleSteepSlopeRBlink;
								}
								else
								{
									idlesprite = sprIdleSteepSlopeL;
									idleblinksprite = sprIdleSteepSlopeLBlink;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleSteepSlopeL;
									idleblinksprite = sprIdleSteepSlopeLBlink;
								}
								else
								{
									idlesprite = sprIdleSteepSlopeR;
									idleblinksprite = sprIdleSteepSlopeRBlink;
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
							sprite_index = idleblinksprite;
							break;
							
							default:
							sprite_index = idlesprite;
							break;
						}
					}
					else
					{
						sprite_index = idlesprite;
					}
				}
				else
				{
					if (idleAnimation) image_index = 0;
					idleAnimation = false;
					idleAnimationTimer = 0;
					idleAnimationTimerMax = 30;
					if (run)
					{
						if (playerAbility == "mirror")
						{
							sprite_index = sprMirrorDash;
						}
						else if (runTurn)
						{
							sprite_index = sprRunTurn;
						}
						else
						{
							sprite_index = sprRun;
						}
					}
					else
					{
						sprite_index = sprWalk;
					}
				}
			}
			else
			{
				if (idleAnimation) image_index = 0;
				idleAnimation = false;
				idleAnimationTimer = 0;
				idleAnimationTimerMax = 30;
				if (fallHop)
				{
					sprite_index = sprRoll;
				}
				else
				{
				    if (vsp < 0)
					{
						if (fallHop)
						{
							sprite_index = sprRoll;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
					else
					{
						if (fallRoll)
						{
							sprite_index = sprRoll;
						}
						else if (fallHop)
						{
							sprite_index = sprRoll;
						}
						else if (fallHopCounter >= fallHopCounterMax)
						{
							image_speed = .75;
							sprite_index = sprRoll;
							if (image_index > 3) image_index = 3;
						}
						else
						{
							sprite_index = sprFall;
						}
					}
				}
			}
		}
		
		if ((canUfoFloat) or (playerAbility == "ufo"))
		{
			if (playerAbility == "ufo")
			{
				sprite_index = sprUfoIdle;
			}
			else
			{
				if ((hsp == 0) and (vsp == 0))
				{
					sprite_index = sprIdle;
				}
				else
				{
					sprite_index = sprWalk;
				}
			}
		}
		
		if (hurt) sprite_index = sprHurt;
		
		//Walk Duck
		
		if ((!walkDuck) and (playerAbility != "ufo") and (place_meeting(x,y + (1 + vsp),obj_Wall)) and (vsp > 1) and (!attack))
		{
			switch (playerCharacter)
			{
				case "bouncy":
				image_index = 0;
				walkDuck = true;
				walkDuckTimer = walkDuckTimerMax;
				for (var i = 0; i < 2; i++)
				{
					var parDirection = 180 * i;
					var parScaleDir = 1;
					if ((parDirection > 90) and (parDirection <= 270))
					{
						parScaleDir = -1;
					}
					var parSquish = instance_create_depth(x,y + 6,depth + 1,obj_Particle);
					parSquish.sprite_index = spr_Particle_SmallStar;
					parSquish.destroyTimer = 30;
					parSquish.spdBuiltIn = 6;
					parSquish.fricSpd = .6;
					parSquish.direction = parDirection;
					parSquish.dir = parScaleDir;
				}
				break;
				
				case "gordo":
				image_index = 0;
				walkDuck = true;
				walkDuckTimer = walkDuckTimerMax;
				imageAngle += (45 * dir);
				for (var i = 0; i < 2; i++)
				{
					var parDirection = 180 * i;
					var parScaleDir = 1;
					if ((parDirection > 90) and (parDirection <= 270))
					{
						parScaleDir = -1;
					}
					var parSquish = instance_create_depth(x,y + 6,depth + 1,obj_Particle);
					parSquish.sprite_index = spr_Particle_SmallStar;
					parSquish.destroyTimer = 30;
					parSquish.spdBuiltIn = 6;
					parSquish.fricSpd = .6;
					parSquish.direction = parDirection;
					parSquish.dir = parScaleDir;
				}
				break;
				
				case "bloodGordo":
				image_index = 0;
				walkDuck = true;
				walkDuckTimer = walkDuckTimerMax;
				imageAngle += (45 * dir);
				for (var i = 0; i < 2; i++)
				{
					var parDirection = 180 * i;
					var parScaleDir = 1;
					if ((parDirection > 90) and (parDirection <= 270))
					{
						parScaleDir = -1;
					}
					var parSquish = instance_create_depth(x,y + 6,depth + 1,obj_Particle);
					parSquish.sprite_index = spr_Particle_SmallStar;
					parSquish.destroyTimer = 30;
					parSquish.spdBuiltIn = 6;
					parSquish.fricSpd = .6;
					parSquish.direction = parDirection;
					parSquish.dir = parScaleDir;
				}
				break;
				
				default:
				sprite_index = sprDuck;
				image_index = 0;
				walkDuck = true;
				walkDuckTimer = walkDuckTimerMax;
				if (audio_is_playing(snd_Squish)) audio_stop_sound(snd_Squish);
				audio_play_sound(snd_Squish,0,false);
				var parDirection = irandom_range(0,359);
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					parScaleDir = -1;
				}
				var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
				parSquish.sprite_index = spr_Particle_ShrinkingStar2;
				parSquish.destroyAfterAnimation = true;
				parSquish.spdBuiltIn = 7;
				parSquish.fricSpd = .6;
				parSquish.direction = parDirection;
				parSquish.dir = parScaleDir;
				if (fallHopCounter >= fallHopCounterMax)
				{
					scaleExX = .25;
					scaleExY = -.25;
					sprite_index = sprRollDuck;
					walkDuckTimer = walkDuckTimerMax - 1;
					fallHop = true;
				}
				break;
			}
		}
		
		if ((walkDuck) and (vsp == 0) and (!attack))
		{
			if (fallHop)
			{
				sprite_index = sprRollDuck;
			}
			else
			{
				sprite_index = sprDuck;
			}
		}
		
		//Walk Squish
		
		if ((!walkSquish) and (playerAbility != "ufo") and (place_meeting(x + hspFinal,y,obj_Wall)) and (place_meeting(x,y + 1,obj_Wall)) and (abs(hspFinal) >= (movespeed / 2)) and (!attack))
		{
			var walkSquishWall = instance_place(x + hspFinal,y,obj_Wall);
			var bottomWall = instance_place(x,y + 1,obj_Wall);
			if ((!walkSquishWall.slope) and (!walkSquishWall.platform) and (!bottomWall.slope))
			{
				sprite_index = sprSquish;
				image_index = 0;
				walkSquish = true;
				walkSquishTimer = walkSquishTimerMax;
				dir = sign(hspFinal);
				if (audio_is_playing(snd_Squish)) audio_stop_sound(snd_Squish);
				audio_play_sound(snd_Squish,0,false);
				var parDirection = irandom_range(0,359);
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					parScaleDir = -1;
				}
				var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
				parSquish.sprite_index = spr_Particle_ShrinkingStar2;
				parSquish.destroyAfterAnimation = true;
				parSquish.spdBuiltIn = 7;
				parSquish.fricSpd = .6;
				parSquish.direction = parDirection;
				parSquish.dir = parScaleDir;
			}
		}
		
		if ((walkSquishTimer > 0) and (vsp = 0) and (!attack))
		{
			sprite_index = sprSquish;
		}
		
		if ((cutterCatch) and (!attack)) sprite_index = sprCutterCatch;
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}