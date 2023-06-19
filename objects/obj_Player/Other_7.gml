///@description Animation End

//Variables

var playerAbility = global.abilityP1;
if (player == 1) playerAbility = global.abilityP2;

var playerCharacter = global.characterP1;
if (player == 1) playerCharacter = global.characterP2;

//Idle Animation

if (idleAnimation)
{
	idleAnimation = false;
	idleAnimationTimer = 0;
	idleAnimationTimerMax = choose(10,30,45);
}

//Fall Roll

if ((fallRoll) and (sprite_index == sprRoll)) fallRoll = false;

//Fall Hop

if ((fallHop) and (sprite_index == sprRoll)) fallHop = false;

//Float Ready

if ((!float) and (sprite_index == sprFloatReady))
{
	sprite_index = sprFloat;
	image_index = 0;
	float = true;
}

//Flap

if (sprite_index == sprFlap)
{
	sprite_index = sprFloat;
	image_index = 0;
}

//Float Spit

if ((floatSpit) and (sprite_index == sprFloatSpit))
{
	floatSpit = false;
	jumpspeed = jumpspeedNormal;
	state = playerStates.normal;
}

//Inhale Ready

if ((!inhaling) and (sprite_index == sprInhaleReady)) inhaling = true;

//Inhale End

if ((inhaleEnd) and (state == playerStates.carry)) inhaleEnd = false;

//Carry Jump

if (sprite_index == sprCarryJump) image_index = image_number - 1;

//Carry Fall

if (sprite_index == sprCarryFall) image_index = image_number - 2;

//Spit

if (sprite_index == sprSpit)
{
	spit = false;
    state = playerStates.normal;
}

//Swallow

if (((sprite_index == sprSwallow) or (sprite_index == sprHardSwallow)) and (state == playerStates.swallow))
{
	if (((player == 0) and (global.abilityP1 == "none")) or ((player == 1) and (global.abilityP2 == "none")))
	{
		global.pause = false;
		image_index = image_number - 1;
		state = playerStates.normal;
	}
	else
	{
		image_speed = 0;
	}
}

//Ability Change

if ((sprite_index == sprAbilityChange) and (state == playerStates.swallow))
{
	if (((player == 0) and (global.abilityP1 != "none")) or ((player == 1) and (global.abilityP2 != "none")))
	{
		image_index = image_number - 1;
		image_speed = 0;
	}
}

//Cutter Attack 1

if ((attackNumber == "cutterNormal") and (sprite_index == sprCutterAttack1))
{
	attack = false;
	attackable = true;
	attackNumber = "none";
}

//Cutter Attack 2

if (sprite_index == sprCutterAttack2) image_index = image_number - 1;

//Sir Kibble Cutter Attack 1

if ((attackNumber == "sirKibbleCutterNormal") and (sprite_index == sprCutterAttack1))
{
	attack = false;
	attackNumber = "none";
	attackTimer = 45;
}

//Beam Normal Attack

if ((attackNumber == "beamNormal") and (sprite_index == sprBeamAttack1)) image_index = image_number - 1;

//Beam Up Attack

if ((attackNumber == "beamUp") and (sprite_index == sprBeamAttack4))
{
	image_index = image_number - 1;
	if (attackTimer == -1) attackTimer = 0;
}

//Beam Charge Attack

if ((attackNumber == "beamChargeAttack") and (sprite_index == sprBeamAttack5)) image_index = image_number - 1;

//Stone Normal Attack Ready

if ((attackNumber == "stoneNormal") and (sprite_index == sprStoneAttack1Ready))
{
	image_index = image_number - 1;
	var par = instance_create_depth(x,y - 3,depth - 1,obj_Particle);
	par.sprite_index = spr_Particle_Aura1;
	par.destroyTimer = 2;
	if (stoneReadyTimer == -1) stoneReadyTimer = stoneReadyTimerMax;
}

//Stone Up Attack

if ((attackNumber == "stoneUp") and ((sprite_index == sprStoneAttack2) or (sprite_index == sprStoneAttack2Release))) image_index = image_number - 1;

//Mirror Slash Attack

if ((attackNumber == "mirrorSlash") and (sprite_index == sprMirrorAttack1)) image_index = image_number - 1;

//Ice Normal Attack Ready

if (sprite_index == sprIceAttack1Ready)
{
	iceReady = false;
	attackNumber = "iceNormal";
	sprite_index = sprIceAttack1;
}

//Ice Normal Attack Release

if ((attackNumber == "iceNormal") and (sprite_index == sprIceAttack1Release))
{
	iceReady = true;
	iceRelease = false;
	attackTimer = 0;
}

//Wing Dash Attack

if ((attack) and (sprite_index == sprWingAttack2Ready))
{
	sprite_index = sprWingAttack2;
	image_index = 0;
	attackNumber = "wingDash";
}

//Freeze Attack 1 Ready

if ((attackNumber == 7) and (sprite_index == sprFreezeAttack1Ready))
{
	sprite_index = sprFreezeAttack1;
	image_index = 0;
	freezeReady = false;
}

//Bouncy

if ((playerCharacter == "bouncy") and ((sprite_index == sprJump) or (sprite_index == sprDuck))) image_index = image_number - 1;