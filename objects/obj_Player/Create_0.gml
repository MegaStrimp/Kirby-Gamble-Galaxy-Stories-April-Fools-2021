///@description Initialize Variables

//Randomize

randomize();

if ((global.aprilFools) and (room == rm_GreenGreens1)) alarm[0] = 150;
/*
for (var i = 0; i < 100; i++)
{
	var par = instance_create_depth(x + (i * 24),-24,depth + 1,obj_Particle);
	par.sprite_index = spr_FallingLeaf_Normal_Idle;
	par.direction = irandom_range(250,290);
	par.image_blend = choose(c_green,c_yellow,c_lime);
	par.image_speed = random_range(.75,1.25);
	par.spdBuiltIn = random_range(1,3);
	par.destroyAfterAnimation = false;
}
instance_create_depth(x,y,-9999,obj_Dialogue);
*/

//Physics

gravNormal = .23;
gravStone = .7;
grav = gravNormal;
gravFloat = .075;
gravLimitNormal = 5;
gravLimitFloat = 2.3;
gravLimitStone = 7;
gravLimit = gravLimitNormal;
hsp = 0;
fireDashHsp = 0;
hspFinal = 0;
vsp = 0;
vspFinal = 0;
jumpspeedNormal = 6;
jumpspeedFloat = 1.8;
jumpspeed = jumpspeedNormal;
movespeedNormal = 1.7;
movespeedRun = 2.6;
movespeedSlide = 5;
movespeedFloat = 1.9;
movespeedCarry = 2;
movespeedBurst = 6;
movespeed = movespeedNormal;
ufoFloatSpd = 2;
accel = .2;
accelFloat = .1;
decel = .075;
decelSlide = .125;
decelFloat = .025;
climbSpeed = 2.5;

//Sprites

maskIndex = spr_18Square_Mask;
paletteIndex = spr_Kirby_Normal_Palette_FriendlyPink;
sprIdle = spr_Kirby_Normal_Idle;
sprIdleBlink = spr_Kirby_Normal_IdleBlink;
sprIdleNormalSlopeL = spr_Kirby_Normal_Idle_NormalSlopeL;
sprIdleNormalSlopeLBlink = spr_Kirby_Normal_Idle_NormalSlopeLBlink;
sprIdleNormalSlopeR = spr_Kirby_Normal_Idle_NormalSlopeR;
sprIdleNormalSlopeRBlink = spr_Kirby_Normal_Idle_NormalSlopeRBlink;
sprIdleSteepSlopeL = spr_Kirby_Normal_Idle_SteepSlopeL;
sprIdleSteepSlopeLBlink = spr_Kirby_Normal_Idle_SteepSlopeLBlink;
sprIdleSteepSlopeR = spr_Kirby_Normal_Idle_SteepSlopeR;
sprIdleSteepSlopeRBlink = spr_Kirby_Normal_Idle_SteepSlopeRBlink;
sprWalk = spr_Kirby_Normal_Walk;
sprRun = spr_Kirby_Normal_Run;
sprRunTurn = spr_Kirby_Normal_RunTurn;
sprJump = spr_Kirby_Normal_Jump;
sprRoll = spr_Kirby_Normal_Roll;
sprRollDuck = spr_Kirby_Normal_RollDuck;
sprBackflip = spr_Kirby_Normal_Backflip;
sprFall = spr_Kirby_Normal_Fall;
sprSquish = spr_Kirby_Normal_Squish;
sprDuck = spr_Kirby_Normal_Duck;
sprDuckBlink = spr_Kirby_Normal_DuckBlink;
sprDuckNormalSlopeL = spr_Kirby_Normal_Duck_NormalSlopeL;
sprDuckNormalSlopeLBlink = spr_Kirby_Normal_Duck_NormalSlopeLBlink;
sprDuckNormalSlopeR = spr_Kirby_Normal_Duck_NormalSlopeR;
sprDuckNormalSlopeRBlink = spr_Kirby_Normal_Duck_NormalSlopeRBlink;
sprDuckSteepSlopeL = spr_Kirby_Normal_Duck_SteepSlopeL;
sprDuckSteepSlopeLBlink = spr_Kirby_Normal_Duck_SteepSlopeLBlink;
sprDuckSteepSlopeR = spr_Kirby_Normal_Duck_SteepSlopeR;
sprDuckSteepSlopeRBlink = spr_Kirby_Normal_Duck_SteepSlopeRBlink;
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
sprCarryIdleBlink = spr_Kirby_Normal_CarryIdleBlink;
sprCarryIdleNormalSlopeL = spr_Kirby_Normal_CarryIdle_NormalSlopeL;
sprCarryIdleNormalSlopeLBlink = spr_Kirby_Normal_CarryIdle_NormalSlopeLBlink;
sprCarryIdleNormalSlopeR = spr_Kirby_Normal_CarryIdle_NormalSlopeR;
sprCarryIdleNormalSlopeRBlink = spr_Kirby_Normal_CarryIdle_NormalSlopeRBlink;
sprCarryIdleSteepSlopeL = spr_Kirby_Normal_CarryIdle_SteepSlopeL;
sprCarryIdleSteepSlopeLBlink = spr_Kirby_Normal_CarryIdle_SteepSlopeLBlink;
sprCarryIdleSteepSlopeR = spr_Kirby_Normal_CarryIdle_SteepSlopeR;
sprCarryIdleSteepSlopeRBlink = spr_Kirby_Normal_CarryIdle_SteepSlopeRBlink;
sprCarryWalk = spr_Kirby_Normal_CarryWalk;
sprCarryJump = spr_Kirby_Normal_CarryJump;
sprCarryFall = spr_Kirby_Normal_CarryFall;
sprCarryDuck = spr_Kirby_Normal_CarryDuck;
sprSpit = spr_Kirby_Normal_Spit;
sprSwallow = spr_Kirby_Normal_Swallow;
sprHardSwallow = spr_Kirby_Normal_HardSwallow;
sprAbilityChange = spr_Kirby_Normal_AbilityChange;
sprWarpStar1 = spr_Kirby_Normal_WarpStar1;
sprWarpStar2 = spr_Kirby_Normal_WarpStar2;
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
sprIceAttack1Ready = spr_Kirby_Normal_Ice_Attack1Ready;
sprIceAttack1 = spr_Kirby_Normal_Ice_Attack1;
sprIceAttack1Release = spr_Kirby_Normal_Ice_Attack1Release;
sprWingAttack1 = spr_Kirby_Normal_Wing_Attack1;
sprWingAttack2Ready = spr_Kirby_Normal_Wing_Attack2Ready;
sprWingAttack2 = spr_Kirby_Normal_Wing_Attack2;
sprSleep = spr_Kirby_Normal_Sleep;
sprFreezeAttack1Ready = spr_Kirby_Normal_Freeze_Attack1Ready;
sprFreezeAttack1 = spr_Kirby_Normal_Freeze_Attack1;
sprHurt = spr_Kirby_Normal_Hurt;
sprDeath = spr_Kirby_Normal_Death;

//Other Variables

if ((global.hpP1 == 0) or (global.hpP2 == 0))
{
	if (global.pause) global.pause = false;
	global.hpP1 = global.hpMax;
	global.hpP2 = global.hpMax;
}
player = 0;
sprayPaint = 0;
paletteFlash = 1;
hatBackgroundImageIndex = 0;
hatBackgroundImageIndexSpd = .25;
state = playerStates.normal;
hasGravity = true;
hasJumpLimit = true;
canWalk = true;
canRun = true;
canRunTurn = true;
canJump = true;
canMultiJump = false;
multiJumpCounter = 0;
multiJumpLimit = -1;
canAutoJump = false;
canAttack = true;
canDuck = true;
canDuckHighJump = false;
canSlide = true;
canClimb = true;
canFloat = true;
canEnter = true;
canUfoFloat = false;
canGetHurt = true;
run = false;
runDoubleTap = 20;
runParticleNum = 0;
runCancelTimer = -1;
runImageSpeedIncrease = 0;
runTurn = false;
walkDuck = false;
walkSquish = false;
fallRoll = false;
fallHop = false;
duck = false;
duckJumpCharge = 0;
duckJumpChargeMax = 45;
duckSlide = false;
scale = 1;
scaleExX = 0;
scaleExY = 0;
scaleExSpd = .1;
dir = 1;
shakeX = 0;
shakeY = 0;
floatSfx = -1;
floating = false;
floatingTimer = -1;
float = false;
floatSpit = false;
airPuffSpd = 7;
attack = false;
attackable = true;
attackNumber = "none";
cutterCharge = 0;
cutterChargeMax = 45;
cutterCatch = false;
beamCharge = 0;
beamChargeMax = 45;
parBeamCycle1 = -1;
waddleDooEyeFlash = false;
stoneParticleCount = 0;
stoneReleaseParticleCount = 0;
stoneReady = true;
stoneFallen = false;
stoneFistReady = true;
ufoCharge = 0;
ufoChargeMax = 45;
mirrorDashSfx = -1;
mirrorHold = false;
mirrorFirstAttack = true;
mirrorAttackDir = 1;
mirrorShieldHpMax = 3;
mirrorShieldHp = mirrorShieldHpMax;
ninjaCharge = 0;
ninjaChargeMax = 8;
iceReady = true;
iceRelease = false;
icePosition = 0;
wingFeatherPos = 0;
freezeReady = true;
inhaling = false;
invincible = false;
invincibleFlash = false;
inhaleSoundCont = false;
ateHeavy = false;
ateCappyShroom = false;
cAbility = "none";
sucked = 0;
inhaleEnd = false;
spit = false;
swallowAction = 0;
damageType = "none";
dmg = 15;
hurt = false;
death = false;
jumpLimit = true;
hspLimit = true;
bubblePos = 0;
blackAlphaBox = false;
chargeSfx = -1;
chargeSfxState = "intro";
imageAngle = 0;
idleAnimation = false;
idleAnimationTimer = 0;
idleAnimationTimerMax = 30;
fallHopCounter = 0;
fallHopCounterMax = 10;

//Timers

setupTimer = 0;
characterSetupTimer = 0;
walkSquishTimer = -1;
walkSquishTimerMax = 7;
walkDuckTimer = -1;
walkDuckTimerMax = 7;
hurtTimer = -1;
hurtTimerMax = 15;
invincibleTimer = -1;
invincibleTimerMax = 75;
invincibleFlashTimer = -1;
invincibleFlashTimerMax = 2;
jumpLimitTimer = -1;
jumpLimitTimerMax = 15;
hspLimitTimer = -1;
hspLimitTimerMax = 15;
runParticleTimer = -1;
runParticleTimerMin = 5;
runParticleTimerMax = 55;
mirrorDashParticleTimer = -1;
mirrorDashParticleTimerMax = 8;
runCancelTimer = -1;
runCancelTimerMax = 30;
swallowTimer = -1;
swallowActionTimer = -1;
attackTimer = -1;
cutterCatchTimer = -1;
cutterCatchTimerMax = 10;
beamAttack2Timer = -1;
beamAttack2TimerMax = 6;
waddleDooEyeFlashTimer = -1;
waddleDooEyeFlashTimerMax = 2;
stoneReadyTimer = -1;
stoneReadyTimerMax = 2;
stoneParticleTimer = -1;
stoneParticleTimerMax = 4;
stoneReleaseParticleTimer = -1;
stoneReleaseParticleTimerMax = 4;
stoneFistReadyTimer = -1;
stoneFistReadyTimerMax = 30;
stoneFistReleaseTimer = -1;
stoneFistReleaseTimerMax = 15;
mirrorNormalAttackTimer = -1;
mirrorNormalAttackTimerMax = 5;
mirrorShieldTimer = 0;
mirrorShieldTimerMax = 450;
fireParticleTimer = -1;
fireParticleTimerMax = 10;
fireNormalAttackTimer = -1;
fireNormalAttackTimerMax = 5;
iceNormalAttackTimer = -1;
iceNormalAttackTimerMax = 5;
wingDashParticleTimer = -1;
wingDashParticleTimerMax = 2;
deathTimer = -1;
deathTimerMax = 60;
deathRestartTimer = -1;
deathRestartTimerMax = 210;
bubblePosTimerMax = 20;
bubblePosTimer = bubblePosTimerMax;

//Create Objects

if (!instance_exists(obj_Pause_Control)) instance_create_depth(x,y,-1000,obj_Pause_Control);
if (!instance_exists(obj_Hud)) instance_create_depth(x,y,-998,obj_Hud);