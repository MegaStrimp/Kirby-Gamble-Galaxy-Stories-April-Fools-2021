///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
xx = 0;
yy = 0;

//Other Variables

player = 0;

selection = "characters";
menuSelection = "none";

sprBackground = bg_VelvetDiamond;
textAlpha = 1;
startY = room_height / 2;

charactersButtonIndex = 0;
abilitiesButtonIndex = 0;
familiarsButtonIndex = 0;
puzzlesButtonIndex = 0;
bestiaryButtonIndex = 0;

//Characters Menu

yyCharacters = 0;
charactersArray = 0;
charactersSelection = 0;

charactersText[0] = spr_Hud_AbilityText_Kirby;
charactersPortrait[0] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
charactersDescription[0] = "Hero of the stars!";

charactersText[1] = spr_Hud_AbilityText_Gamble;
charactersPortrait[1] = spr_Hud_Dialogue_Portrait_Gamble_Normal;
charactersDescription[1] = "Flux Harbinger!";

charactersText[2] = spr_Menu_Collection_Characters_Text_MetaKnight;
charactersPortrait[2] = spr_Hud_Dialogue_Portrait_Phil_Normal;
charactersDescription[2] = "Strongest in the\ngalaxy!";

charactersText[3] = spr_Menu_Collection_Characters_Text_PrinceFluff;
charactersPortrait[3] = spr_Hud_Dialogue_Portrait_ShadowMatch_Normal;
charactersDescription[3] = "Smells like socks!";

charactersText[4] = spr_Hud_AbilityText_Helper;
charactersPortrait[4] = spr_Hud_Dialogue_Portrait_Technician_Normal;
charactersDescription[4] = "Revenge of the enemy!";

charactersText[5] = spr_Hud_AbilityText_Keeby;
charactersPortrait[5] = spr_Hud_Dialogue_Portrait_Kirby_Jolly;
charactersDescription[5] = "Best golfer in\nDream Land!";

selectedYCharacters = startY - (charactersSelection * 48);

//Abilities Menu

yyAbilities = 0;
abilitiesArray = 0;
abilitiesSelection = 0;

abilitiesText[0] = spr_Hud_AbilityText_Cutter;
abilitiesIcon[0] = spr_Hud_Icon_Cutter;
abilitiesDescription[0] = "Remote Cutter\nBOOMERANG!";
abilitiesAbility[0] = "cutter";

abilitiesText[1] = spr_Hud_AbilityText_Beam;
abilitiesIcon[1] = spr_Hud_Icon_Beam;
abilitiesDescription[1] = "This Beam is like\na whip!";
abilitiesAbility[1] = "beam";

abilitiesText[2] = spr_Hud_AbilityText_MysticBeam;
abilitiesIcon[2] = spr_Hud_Icon_MysticBeam;
abilitiesDescription[2] = "Channel a sparkling\nforcefield!";
abilitiesAbility[2] = "beam";

abilitiesText[3] = spr_Hud_AbilityText_Stone;
abilitiesIcon[3] = spr_Hud_Icon_Stone;
abilitiesDescription[3] = "No one can hurt me!\nLook out below!";
abilitiesAbility[3] = "stone";

abilitiesText[4] = spr_Hud_AbilityText_Ufo;
abilitiesIcon[4] = spr_Hud_Icon_Ufo;
abilitiesDescription[4] = "Unidentified flying\nobject detected!";
abilitiesAbility[4] = "ufo";

abilitiesText[5] = spr_Hud_AbilityText_Mirror;
abilitiesIcon[5] = spr_Hud_Icon_Mirror;
abilitiesDescription[5] = "Reflect attacks back\nat your rivals!";
abilitiesAbility[5] = "mirror";

abilitiesText[6] = spr_Hud_AbilityText_Ninja;
abilitiesIcon[6] = spr_Hud_Icon_Ninja;
abilitiesDescription[6] = "You're a ninja! A\nNINJA! Cool...";
abilitiesAbility[6] = "ninja";

abilitiesText[7] = spr_Hud_AbilityText_Bomb;
abilitiesIcon[7] = spr_Hud_Icon_Bomb;
abilitiesDescription[7] = "Blast your enemies\nto bits!";
abilitiesAbility[7] = "bomb";

abilitiesText[8] = spr_Hud_AbilityText_Fire;
abilitiesIcon[8] = spr_Hud_Icon_Fire;
abilitiesDescription[8] = "Fire!! Hot! So hot!\nToo hot to touch!";
abilitiesAbility[8] = "fire";

abilitiesText[9] = spr_Hud_AbilityText_MysticFire;
abilitiesIcon[9] = spr_Hud_Icon_MysticFire;
abilitiesDescription[9] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[9] = "fire";

abilitiesText[10] = spr_Hud_AbilityText_Ice;
abilitiesIcon[10] = spr_Hud_Icon_Ice;
abilitiesDescription[10] = "Frozen foe? Give it\na kick";
abilitiesAbility[10] = "ice";

abilitiesText[11] = spr_Hud_AbilityText_Plasma;
abilitiesIcon[11] = spr_Hud_Icon_Plasma;
abilitiesDescription[11] = "Shock your enemies\nby firing sparks!";
abilitiesAbility[11] = "plasma";

abilitiesText[12] = spr_Hud_AbilityText_Yoyo;
abilitiesIcon[12] = spr_Hud_Icon_Yoyo;
abilitiesDescription[12] = "Defeat your enemies\nin style!";
abilitiesAbility[12] = "yoyo";

abilitiesText[13] = spr_Hud_AbilityText_Wheel;
abilitiesIcon[13] = spr_Hud_Icon_Wheel;
abilitiesDescription[13] = "I ride like\nthe wind!";
abilitiesAbility[13] = "wheel";

abilitiesText[14] = spr_Hud_AbilityText_Artist;
abilitiesIcon[14] = spr_Hud_Icon_Artist;
abilitiesDescription[14] = "Paint the town\nall of 7 colors!";
abilitiesAbility[14] = "artist";

abilitiesText[15] = spr_Hud_AbilityText_Fighter;
abilitiesIcon[15] = spr_Hud_Icon_Fighter;
abilitiesDescription[15] = "Assume the role\nof a mighty karate\nexpert!";
abilitiesAbility[15] = "fighter";

abilitiesText[16] = spr_Hud_AbilityText_Suplex;
abilitiesIcon[16] = spr_Hud_Icon_Suplex;
abilitiesDescription[16] = "This burns with\nfighting spirit!";
abilitiesAbility[16] = "suplex";

abilitiesText[17] = spr_Hud_AbilityText_Wing;
abilitiesIcon[17] = spr_Hud_Icon_Wing;
abilitiesDescription[17] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[17] = "wing";

abilitiesText[18] = spr_Hud_AbilityText_Jet;
abilitiesIcon[18] = spr_Hud_Icon_Jet;
abilitiesDescription[18] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[18] = "jet";

abilitiesText[19] = spr_Hud_AbilityText_Sword;
abilitiesIcon[19] = spr_Hud_Icon_Sword;
abilitiesDescription[19] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[19] = "sword";

abilitiesText[20] = spr_Hud_AbilityText_Parasol;
abilitiesIcon[20] = spr_Hud_Icon_Parasol;
abilitiesDescription[20] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[20] = "parasol";

abilitiesText[21] = spr_Hud_AbilityText_Hammer;
abilitiesIcon[21] = spr_Hud_Icon_Hammer;
abilitiesDescription[21] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[21] = "hammer";

abilitiesText[22] = spr_Hud_AbilityText_Bell;
abilitiesIcon[22] = spr_Hud_Icon_Bell;
abilitiesDescription[22] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[22] = "bell";

abilitiesText[23] = spr_Hud_AbilityText_Water;
abilitiesIcon[23] = spr_Hud_Icon_Water;
abilitiesDescription[23] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[23] = "water";

abilitiesText[24] = spr_Hud_AbilityText_UltraSword;
abilitiesIcon[24] = spr_Hud_Icon_UltraSword;
abilitiesDescription[24] = "You're a ninja! A NINJA!\nCool...";
abilitiesAbility[24] = "ultraSword";

selectedYAbilities = startY - (abilitiesSelection * 48);

//Player Sprites

sprIdle = spr_Kirby_Normal_Idle;
sprWalk = spr_Kirby_Normal_Walk;
sprRun = spr_Kirby_Normal_Run;
sprJump = spr_Kirby_Normal_Jump;
sprRoll = spr_Kirby_Normal_Roll;
sprFall = spr_Kirby_Normal_Fall;
sprSquish = spr_Kirby_Normal_Squish;
sprDuck = spr_Kirby_Normal_Duck;
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
sprCarryWalk = spr_Kirby_Normal_CarryWalk;
sprCarryJump = spr_Kirby_Normal_CarryJump;
sprCarryFall = spr_Kirby_Normal_CarryFall;
sprCarryDuck = spr_Kirby_Normal_CarryDuck;
sprSpit = spr_Kirby_Normal_Spit;
sprSwallow = spr_Kirby_Normal_Swallow;
sprHardSwallow = spr_Kirby_Normal_HardSwallow;
sprAbilityChange = spr_Kirby_Normal_AbilityChange;
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
sprWaddleDooFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
sprStoneAttack1Ready = spr_Kirby_Normal_Stone_Attack1Ready;
sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
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
sprHurt = spr_Kirby_Normal_Hurt;
sprDeath = spr_Kirby_Normal_Death;