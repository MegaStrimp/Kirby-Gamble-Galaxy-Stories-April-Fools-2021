///@description Hud - Ability Icon
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Hud_AbilityIcon(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var iconIndex;
	
	switch (abilityToCheck)
	{
		case "none":
		switch (selectedCharacter)
		{
			case "kirby":
			iconIndex = spr_Hud_Icon_Kirby;
			break;
			
			case "gamble":
			iconIndex = spr_Hud_Icon_Gamble;
			break;
			
			case "waddleDee":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "waddleDoo":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "brontoBurt":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "twizzy":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "tookey":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "sirKibble":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "bouncy":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "gordo":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case "bloodGordo":
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			default:
			iconIndex = spr_Hud_Icon_Kirby;
			break;
		}
		break;
		
		case "cutter":
		iconIndex = spr_Hud_Icon_Cutter;
		break;
		
		case "beam":
		iconIndex = spr_Hud_Icon_Beam;
		break;
		
		case "mysticBeam":
		iconIndex = spr_Hud_Icon_MysticBeam;
		break;
		
		case "stone":
		iconIndex = spr_Hud_Icon_Stone;
		break;
		
		case "ufo":
		iconIndex = spr_Hud_Icon_Ufo;
		break;
		
		case "mirror":
		iconIndex = spr_Hud_Icon_Mirror;
		break;
		
		case "ninja":
		iconIndex = spr_Hud_Icon_Ninja;
		break;
		
		case "bomb":
		iconIndex = spr_Hud_Icon_Bomb;
		break;
		
		case "fire":
		iconIndex = spr_Hud_Icon_Fire;
		break;
		
		case "ice":
		iconIndex = spr_Hud_Icon_Ice;
		break;
		
		case "plasma":
		iconIndex = spr_Hud_Icon_Plasma;
		break;
		
		case "yoyo":
		iconIndex = spr_Hud_Icon_Yoyo;
		break;
		
		case "wheel":
		iconIndex = spr_Hud_Icon_Wheel;
		break;
		
		case "artist":
		iconIndex = spr_Hud_Icon_Artist;
		break;
		
		case "fighter":
		iconIndex = spr_Hud_Icon_Fighter;
		break;
		
		case "suplex":
		iconIndex = spr_Hud_Icon_Suplex;
		break;
		
		case "wing":
		iconIndex = spr_Hud_Icon_Wing;
		break;
		
		case "jet":
		iconIndex = spr_Hud_Icon_Jet;
		break;
		
		case "sword":
		iconIndex = spr_Hud_Icon_Sword;
		break;
		
		case "parasol":
		iconIndex = spr_Hud_Icon_Parasol;
		break;
		
		case "hammer":
		iconIndex = spr_Hud_Icon_Hammer;
		break;
		
		case "mysticFire":
		iconIndex = spr_Hud_Icon_MysticFire;
		break;
		
		case "bell":
		iconIndex = spr_Hud_Icon_Bell;
		break;
		
		case "ultraSword":
		iconIndex = spr_Hud_Icon_UltraSword;
		break;
		
		case "water":
		iconIndex = spr_Hud_Icon_Water;
		break;
		
		default:
		iconIndex = spr_Hud_Icon_Water;
		break;
	}
	return iconIndex;
}