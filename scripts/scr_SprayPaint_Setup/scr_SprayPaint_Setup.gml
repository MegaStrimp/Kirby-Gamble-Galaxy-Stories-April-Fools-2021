///@description Spray Paint Setup
///@param {real} sprayPaintSetupSprayPaint Which value to check.
///@param {real} sprayPaintSetupCharacter Which character to check.

function scr_SprayPaint_Setup(argument0,argument1)
{
	var sprayPaintSetupSprayPaint = argument0;
	var sprayPaintSetupCharacter = argument1;
	var sprayPaintSetupPaletteIndex;
	
	switch (sprayPaintSetupCharacter)
	{
		case "kirby":
		switch (sprayPaintSetupSprayPaint)
		{
			//Friendly Pink
			
			case 0:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_FriendlyPink;
			break;
			
			//Yellow
			
			case 1:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Yellow;
			break;
			
			//Red
			
			case 2:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Red;
			break;
			
			//Green
			
			case 3:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Green;
			break;
			
			//Waddle Waddle
			
			case 4:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_WaddleWaddle;
			break;
			
			//Beam
			
			case 5:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Beam;
			break;
			
			//Stone
			
			case 6:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Stone;
			break;
			
			//Mirror
			
			case 7:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Mirror;
			break;
			
			//Ice
			
			case 8:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Ice;
			break;
			
			//Plasma
			
			case 9:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Plasma;
			break;
			
			//Fire
			
			case 10:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Fire;
			break;
			
			//Suplex
			
			case 11:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Suplex;
			break;
			
			//Ninja
			
			case 12:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Ninja;
			break;
			
			//Green Jolt
			
			case 13:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_GreenJolt;
			break;
			
			//Building Stone
			
			case 14:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_BuildingStone;
			break;
			
			//Delirious
			
			case 15:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Delirious;
			break;
			
			//Edd
			
			case 16:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_Edd;
			break;
			
			//Ghastly Blue
			
			case 17:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_GhastlyBlue;
			break;
			
			//Grand Gray
			
			case 18:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_GrandGray;
			break;
			
			//Nebula Tangerine
			
			case 19:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_NebulaTangerine;
			break;
			
			//Orange You Glad
			
			case 20:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_OrangeYouGlad;
			break;
			
			//Shadow Of The Mirror
			
			case 21:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
			break;
			
			//Butter Knife
			
			case 22:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_ButterKnife;
			break;
			
			//Default
			
			default:
			sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_FriendlyPink;
			break;
		}
		break;
		
		case "waddleDee":
		sprayPaintSetupPaletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
		break;
		
		case "waddleDoo":
		sprayPaintSetupPaletteIndex = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
		break;
		
		case "brontoBurt":
		sprayPaintSetupPaletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
		break;
		
		case "twizzy":
		sprayPaintSetupPaletteIndex = spr_Twizzy_Normal_Palette_FlyingYolk;
		break;
		
		case "tookey":
		sprayPaintSetupPaletteIndex = spr_Tookey_Normal_Palette_FlyingWhite;
		break;
		
		default:
		sprayPaintSetupPaletteIndex = spr_Kirby_Normal_Palette_FriendlyPink;
		break;
	}
	
	return sprayPaintSetupPaletteIndex;
}