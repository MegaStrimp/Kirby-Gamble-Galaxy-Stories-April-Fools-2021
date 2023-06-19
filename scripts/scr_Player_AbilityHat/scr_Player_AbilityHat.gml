///@description Player - Ability Hat Shadow
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_AbilityHat(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var abilityHatIndex;
	
	switch (selectedCharacter)
	{
		case "kirby":
		switch (abilityToCheck)
		{
			case "cutter":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeCutterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeCutterP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_WarpStar2;
					break;
					
					case sprCutterAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack1;
					break;
					
					case sprCutterCatch:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Catch;
					break;
					
					case sprCutterAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "beam":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBeamP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBeamP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_WarpStar2;
					break;
					
					case sprBeamCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Charge;
					break;
					
					case sprBeamAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack1;
					break;
					
					case sprBeamAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack2;
					break;
					
					case sprBeamAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack3;
					break;
					
					case sprBeamAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack5;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "stone":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeStoneP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeStoneP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_WarpStar2;
					break;
					
					case sprStoneAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack1Ready;
					break;
					
					case sprStoneAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack2;
					break;
					
					case sprStoneAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack2Release;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_WarpStar2;
					break;
					
					case sprStoneAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack1Ready;
					break;
					
					case sprStoneAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack2;
					break;
					
					case sprStoneAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack2Release;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "ufo":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeUfoP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeUfoP2;
			}
			
			switch (altHatToCheck)
			{
				case "modern":
				switch (sprite_index)
				{
					case sprUfoIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Ufo_Modern_Idle;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "mirror":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeMirrorP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeMirrorP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Walk;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_WarpStar2;
					break;
					
					case sprMirrorDash:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Dash;
					break;
					
					case sprMirrorAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack1;
					break;
					
					case sprMirrorAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack2Release;
					break;
					
					case sprMirrorAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack3;
					break;
					
					case sprMirrorAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack4;
					break;
					
					case sprMirrorAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack5;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Walk;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_WarpStar2;
					break;
					
					case sprMirrorDash:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Dash;
					break;
					
					case sprMirrorAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack1;
					break;
					
					case sprMirrorAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack2Release;
					break;
					
					case sprMirrorAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack3;
					break;
					
					case sprMirrorAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack4;
					break;
					
					case sprMirrorAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack5;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "ninja":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeNinjaP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeNinjaP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_WarpStar2;
					break;
					
					case sprNinjaCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Charge;
					break;
					
					case sprNinjaAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Attack1;
					break;
					
					case sprNinjaAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_WarpStar2;
					break;
					
					case sprNinjaCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Charge;
					break;
					
					case sprNinjaAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Attack1;
					break;
					
					case sprNinjaAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "bomb":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBombP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBombP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_WarpStar2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_WarpStar2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "fire":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFireP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFireP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_AbilityChange;
					break;
					
					case sprFireAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Attack1;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "ice":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeIceP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeIceP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_AbilityChange;
					break;
					
					case sprIceAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Attack1Ready;
					break;
					
					case sprIceAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Attack1;
					break;
					
					case sprIceAttack1Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Attack1Release;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "snowman":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Idle;
					break;
					
					/*case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Run;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Roll;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Squish;
					break;*/
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Duck;
					break;
					
					/*case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_AbilityChange;
					break;*/
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "plasma":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypePlasmaP1;
			}
			else
			{
				var altHatToCheck = global.hatTypePlasmaP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Plasma_KSSU_AbilityChange;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "yoyo":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeYoyoP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeYoyoP2;
			}
				
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_WarpStar2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
					
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "wheel":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWheelP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWheelP2;
			}
				
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_WarpStar2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
					
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "artist":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeArtistP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeArtistP2;
			}
				
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_WarpStar2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_Modern_Idle;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_Modern_Duck;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
					
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "fighter":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFighterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFighterP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_AbilityChange;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "suplex":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSuplexP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSuplexP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_FloatReady;
					break;
					
					case sprFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Float;
					break;
					
					case sprFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_AbilityChange;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "wing":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWingP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWingP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_AbilityChange;
					break;
					
					case sprWingAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Attack1;
					break;
					
					case sprWingAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Attack2Ready;
					break;
					
					case sprWingAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "jet":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeJetP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeJetP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_AbilityChange;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case "bell":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeJetP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeJetP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Squish;
					break;
					
					case sprDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_AbilityChange;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			default:
			abilityHatIndex = -1;
			break;
		}
		break;
		
		default:
		abilityHatIndex = -1;
		break;
	}
	return abilityHatIndex;
}