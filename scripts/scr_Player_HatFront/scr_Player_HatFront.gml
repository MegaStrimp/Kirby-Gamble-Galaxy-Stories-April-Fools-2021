///@description Player - Ability Hat Front
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatFront(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatFrontIndex;
	
	switch (selectedCharacter)
	{
		case "kirby":
		switch (abilityToCheck)
		{
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
					case sprClimbUp:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_ClimbDown;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;
				
				default:
				hatFrontIndex = -1;
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
					case sprClimbUp:
					hatFrontIndex = spr_Kirby_HatFront_Plasma_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatFrontIndex = spr_Kirby_HatFront_Plasma_KSSU_ClimbDown;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;
				
				default:
				hatFrontIndex = -1;
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
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprWalk:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Walk;
					break;
					
					case sprRun:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Jump;
					break;
					
					case sprRoll:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Roll;
					break;
					
					case sprFall:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Fall;
					break;
					
					case sprSquish:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Squish;
					break;
					
					case sprDuck:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprSlide:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_AbilityChange;
					break;
					
					case sprWingAttack1:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Attack1;
					break;
					
					case sprWingAttack2:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Attack2;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;
				
				default:
				hatFrontIndex = -1;
				break;
			}
			break;
			
			default:
			hatFrontIndex = -1;
			break;
		}
		break;
		
		default:
		hatFrontIndex = -1;
		break;
	}
	return hatFrontIndex;
}