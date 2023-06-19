///@description Player - Ability Hat Palette
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatPalette(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatPaletteIndex;
	
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteCutterKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteCutterKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_SlicingGold;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Palette_BloodBlade;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_FluxNostalgia;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteStoneKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteStoneKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_KSSU_Palette_RockyRoad;
					break;
				}
				break;
				
				case "modern":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteStoneModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteStoneModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_RockyRoad;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Stone_Modern_Palette_MoltenRock;
					break;
				}
				break;
			}
			break;
			
			/*case "ufo":
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBeamKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Beam_KSSU_Palette_SparklingBeam;
					break;
				}
				break;
			}
			break;*/
			
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteMirrorKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteMirrorKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_JesterReflection;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Palette_BetaBlock;
					break;
				}
				break;
				
				case "modern":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteMirrorModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteMirrorModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_JesterReflection;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Mirror_Modern_Palette_BetaBlock;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteNinjaKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteNinjaKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_StealthyMaroon;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Palette_SilverLinedWarrior;
					break;
				}
				break;
				
				case "modern":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteNinjaModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteNinjaModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ninja_Modern_Palette_StealthyMaroon;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBombKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBombKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Palette_ExplosiveB;
					break;
				}
				break;
				
				case "modern":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteBombModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteBombModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Bomb_Modern_Palette_ExplosiveB;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFireKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFireKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_ScorchingScarlet;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fire_KSSU_Palette_BlazingBlue;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteIceKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteIceKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Ice_KSSU_Palette_FrostedShard;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPalettePlasmaKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPalettePlasmaKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Plasma_KSSU_Palette_ElectroMarine;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteYoyoKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteYoyoKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Palette_SpinningViolet;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteWheelKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteWheelKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Palette_RushingRed;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteArtistKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteArtistKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
					break;
				}
				break;
				
				case "modern":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteArtistModernP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteArtistModernP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Artist_KSSU_Palette_DapperPainter;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteFighterKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteFighterKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Palette_CrimsonChampion;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSuplexKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSuplexKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Palette_BlueBanner;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteWingKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteWingKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Wing_KSSU_Palette_RainbowFlight;
					break;
				}
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
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteJetKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteJetKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedMachine;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Jet_KSSU_Palette_SpeedyScarlet;
					break;
				}
				break;
			}
			break;
			
			case "sword":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSwordP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSwordP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteSwordKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteSwordKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_SlicingGreen;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Sword_KSSU_Palette_ThunderingCloud;
					break;
				}
				break;
			}
			break;
			
			case "parasol":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeParasolP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeParasolP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteParasolKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteParasolKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Parasol_KSSU_Palette_LazyRed;
					break;
				}
				break;
			}
			break;
			
			case "hammer":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeHammerP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeHammerP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				if (player == 0)
				{
					var paletteIndexToCheck = global.hatPaletteHammerKssuP1;
				}
				else
				{
					var paletteIndexToCheck = global.hatPaletteHammerKssuP2;
				}
				
				switch (paletteIndexToCheck)
				{
					case 0:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_CrushingBrown;
					break;
					
					case 1:
					hatPaletteIndex = spr_Kirby_AbilityHat_Hammer_KSSU_Palette_ConstructionWork;
					break;
				}
				break;
			}
			break;
			
			default:
			hatPaletteIndex = -1;
			break;
		}
		break;
		
		default:
		hatPaletteIndex = -1;
		break;
	}
	return hatPaletteIndex;
}