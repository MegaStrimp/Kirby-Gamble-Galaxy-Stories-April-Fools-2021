///@description Hud - Ability Text
///@param {real} spriteToReturn Which sprite to return.
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Hud_Healthbar(argument0,argument1,argument2)
{
	var spriteToReturn = argument0;
	var abilityToCheck = argument1;
	var selectedCharacter = argument2;
	var healthbarIndex;
	var healthbarBackIndex;
	
	switch (abilityToCheck)
	{
		case "none":
		switch (selectedCharacter)
		{
			case "kirby":
			healthbarIndex = spr_Hud_Healthbar_Kirby;
			healthbarBackIndex = spr_Hud_HealthbarBack_Kirby;
			break;
			
			case "gamble":
			healthbarIndex = spr_Hud_Healthbar_Gamble;
			healthbarBackIndex = spr_Hud_HealthbarBack_Gamble;
			break;
			
			case "waddleDee":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "waddleDoo":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "brontoBurt":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "twizzy":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "tookey":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "sirKibble":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "bouncy":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "gordo":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			case "bloodGordo":
			healthbarIndex = spr_Hud_Healthbar_Helper;
			healthbarBackIndex = spr_Hud_HealthbarBack_Helper;
			break;
			
			default:
			healthbarIndex = spr_Hud_Healthbar_Kirby;
			healthbarBackIndex = spr_Hud_HealthbarBack_Kirby;
			break;
		}
		break;
		
		case "cutter":
		healthbarIndex = spr_Hud_Healthbar_Cutter;
		healthbarBackIndex = spr_Hud_HealthbarBack_Cutter;
		break;
		
		case "beam":
		healthbarIndex = spr_Hud_Healthbar_Beam;
		healthbarBackIndex = spr_Hud_HealthbarBack_Beam;
		break;
		
		case "mysticBeam":
		healthbarIndex = spr_Hud_Healthbar_MysticBeam;
		healthbarBackIndex = spr_Hud_HealthbarBack_MysticBeam;
		break;
		
		case "stone":
		healthbarIndex = spr_Hud_Healthbar_Stone;
		healthbarBackIndex = spr_Hud_HealthbarBack_Stone;
		break;
		
		case "ufo":
		healthbarIndex = spr_Hud_Healthbar_Ufo;
		healthbarBackIndex = spr_Hud_HealthbarBack_Ufo;
		break;
		
		case "mirror":
		healthbarIndex = spr_Hud_Healthbar_Mirror;
		healthbarBackIndex = spr_Hud_HealthbarBack_Mirror;
		break;
		
		case "ninja":
		healthbarIndex = spr_Hud_Healthbar_Ninja;
		healthbarBackIndex = spr_Hud_HealthbarBack_Ninja;
		break;
		
		case "bomb":
		healthbarIndex = spr_Hud_Healthbar_Bomb;
		healthbarBackIndex = spr_Hud_HealthbarBack_Bomb;
		break;
		
		case "fire":
		healthbarIndex = spr_Hud_Healthbar_Fire;
		healthbarBackIndex = spr_Hud_HealthbarBack_Fire;
		break;
		
		case "mysticFire":
		healthbarIndex = spr_Hud_Healthbar_MysticFire;
		healthbarBackIndex = spr_Hud_HealthbarBack_MysticFire;
		break;
		
		case "ice":
		healthbarIndex = spr_Hud_Healthbar_Ice;
		healthbarBackIndex = spr_Hud_HealthbarBack_Ice;
		break;
		
		case "plasma":
		healthbarIndex = spr_Hud_Healthbar_Plasma;
		healthbarBackIndex = spr_Hud_HealthbarBack_Plasma;
		break;
		
		case "yoyo":
		healthbarIndex = spr_Hud_Healthbar_Yoyo;
		healthbarBackIndex = spr_Hud_HealthbarBack_Yoyo;
		break;
		
		case "wheel":
		healthbarIndex = spr_Hud_Healthbar_Wheel;
		healthbarBackIndex = spr_Hud_HealthbarBack_Wheel;
		break;
		
		case "artist":
		healthbarIndex = spr_Hud_Healthbar_Artist;
		healthbarBackIndex = spr_Hud_HealthbarBack_Artist;
		break;
		
		case "fighter":
		healthbarIndex = spr_Hud_Healthbar_Fighter;
		healthbarBackIndex = spr_Hud_HealthbarBack_Fighter;
		break;
		
		case "suplex":
		healthbarIndex = spr_Hud_Healthbar_Suplex;
		healthbarBackIndex = spr_Hud_HealthbarBack_Suplex;
		break;
		
		case "wing":
		healthbarIndex = spr_Hud_Healthbar_Wing;
		healthbarBackIndex = spr_Hud_HealthbarBack_Wing;
		break;
		
		case "jet":
		healthbarIndex = spr_Hud_Healthbar_Jet;
		healthbarBackIndex = spr_Hud_HealthbarBack_Jet;
		break;
		
		case "sword":
		healthbarIndex = spr_Hud_Healthbar_Sword;
		healthbarBackIndex = spr_Hud_HealthbarBack_Sword;
		break;
		
		case "parasol":
		healthbarIndex = spr_Hud_Healthbar_Parasol;
		healthbarBackIndex = spr_Hud_HealthbarBack_Parasol;
		break;
		
		case "hammer":
		healthbarIndex = spr_Hud_Healthbar_Hammer;
		healthbarBackIndex = spr_Hud_HealthbarBack_Hammer;
		break;
		
		case "bell":
		healthbarIndex = spr_Hud_Healthbar_Bell;
		healthbarBackIndex = spr_Hud_HealthbarBack_Bell;
		break;
		
		case "water":
		healthbarIndex = spr_Hud_Healthbar_Water;
		healthbarBackIndex = spr_Hud_HealthbarBack_Water;
		break;
		
		case "ultraSword":
		healthbarIndex = spr_Hud_Healthbar_UltraSword;
		healthbarBackIndex = spr_Hud_HealthbarBack_UltraSword;
		break;
		
		default:
		healthbarIndex = spr_Hud_Healthbar_Kirby;
		healthbarBackIndex = spr_Hud_HealthbarBack_Kirby;
		break;
	}
	if (spriteToReturn == "normal")
	{
		return healthbarIndex;
	}
	else if (spriteToReturn == "back")
	{
		return healthbarBackIndex;
	}
}