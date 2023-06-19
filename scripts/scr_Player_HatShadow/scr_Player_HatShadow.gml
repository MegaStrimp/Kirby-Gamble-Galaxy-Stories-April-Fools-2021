///@description Player - Ability Hat Shadow
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatShadow(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatShadowIndex;
	
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
				hatShadowIndex = -1;
				break;
				
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_ClimbUp;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_WarpStar2;
					break;
					
					case sprBeamCharge:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Charge;
					break;
					
					case sprBeamAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Attack1;
					break;
					
					case sprBeamAttack4:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					hatShadowIndex = spr_Kirby_HatShadow_Beam_KSSU_Attack5;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Fall;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_WarpStar2;
					break;
					
					case sprStoneAttack1Ready:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Attack1Ready;
					break;
					
					case sprStoneAttack2Ready:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Attack2;
					break;
					
					case sprStoneAttack2Release:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_KSSU_Attack2Release;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Squish;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_WarpStar2;
					break;
					
					case sprStoneAttack1Ready:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Attack1Ready;
					break;
					
					case sprStoneAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Attack2;
					break;
					
					case sprStoneAttack2Release:
					hatShadowIndex = spr_Kirby_HatShadow_Stone_Modern_Attack2Release;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Walk;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_ClimbUp;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_WarpStar2;
					break;
					
					case sprMirrorAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Attack1;
					break;
					
					case sprMirrorAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Attack2Release;
					break;
					
					case sprMirrorAttack4:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Attack4;
					break;
					
					case sprMirrorAttack5:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_KSSU_Attack5;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Walk;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_ClimbUp;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_WarpStar2;
					break;
					
					case sprMirrorAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Attack1;
					break;
					
					case sprMirrorAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Attack2Release;
					break;
					
					case sprMirrorAttack3:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Attack3;
					break;
					
					case sprMirrorAttack4:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Attack4;
					break;
					
					case sprMirrorAttack5:
					hatShadowIndex = spr_Kirby_HatShadow_Mirror_Modern_Attack5;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Fall;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_WarpStar2;
					break;
					
					case sprNinjaCharge:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Charge;
					break;
					
					case sprNinjaAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Attack1;
					break;
					
					case sprNinjaAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_KSSU_Attack2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_WarpStar2;
					break;
					
					case sprNinjaCharge:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Charge;
					break;
					
					case sprNinjaAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Attack1;
					break;
					
					case sprNinjaAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Ninja_Modern_Attack2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
				break;
			}
			break;
			
			default:
			hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Walk;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Fall;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_KSSU_AbilityChange;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Bomb_Modern_WarpStar2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_AbilityChange;
					break;
					
					case sprFireAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Fire_KSSU_Attack1;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_ClimbUp;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_AbilityChange;
					break;
					
					case sprIceAttack1Ready:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Attack1Ready;
					break;
					
					case sprIceAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Attack1;
					break;
					
					case sprIceAttack1Release:
					hatShadowIndex = spr_Kirby_HatShadow_Ice_KSSU_Attack1Release;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Plasma_KSSU_AbilityChange;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Yoyo_KSSU_WarpStar2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
					
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Wheel_KSSU_WarpStar2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
					
				default:
				hatShadowIndex = -1;
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
				switch(sprite_index)
				{
					case sprIdle:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Roll;
					break;
					
					case sprRollDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatShadowIndex = spr_Kirby_HatShadow_Artist_KSSU_WarpStar2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
					
				default:
				hatShadowIndex = -1;
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
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Fall;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_FloatReady;
					break;
					
					case sprFloat:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Float;
					break;
					
					case sprFlap:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_FloatSpit;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Fighter_KSSU_AbilityChange;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
				hatShadowIndex = -1;
				break;
				
				default:
				hatShadowIndex = -1;
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
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_AbilityChange;
					break;
					
					case sprWingAttack1:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Attack1;
					break;
					
					case sprWingAttack2Ready:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Attack2Ready;
					break;
					
					case sprWingAttack2:
					hatShadowIndex = spr_Kirby_HatShadow_Wing_KSSU_Attack2;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
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
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Idle;
					break;
					
					case sprWalk:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Walk;
					break;
					
					case sprRun:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Jump;
					break;
					
					case sprRoll:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Roll;
					break;
					
					case sprBackflip:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Backflip;
					break;
					
					case sprFall:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Fall;
					break;
					
					case sprSquish:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Squish;
					break;
					
					case sprDuck:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Duck;
					break;
					
					case sprSlide:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_Enter;
					break;
					
					case sprClimbUp:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					hatShadowIndex = spr_Kirby_HatShadow_Jet_KSSU_AbilityChange;
					break;
					
					default:
					hatShadowIndex = -1;
					break;
				}
				break;
				
				default:
				hatShadowIndex = -1;
				break;
			}
			break;
			
			default:
			hatShadowIndex = -1;
			break;
		}
		break;
		
		default:
		hatShadowIndex = -1;
		break;
	}
	return hatShadowIndex;
}