///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .02;
movespeed = 6;
jumpspeed = 10;
gravNormal = .25;
gravLimitNormal = 3.5;

//Sprites

mask_index = spr_WhispyWoods_Normal_Mask;

switch (character)
{
	//Normal
	
	case 0:
	sprIdle = spr_WhispyWoods_Normal_Idle;
	sprBlink = spr_WhispyWoods_Normal_Blink;
	sprSpit = spr_WhispyWoods_Normal_Spit;
	sprHurt = spr_WhispyWoods_Normal_Hurt;
	sprDeath = spr_WhispyWoods_Normal_Death;
	mask_index = spr_WhispyWoods_Normal_Mask;
	break;
}

//Other Variables

hp = 100;
dmg = 1;
points = 10000;
isBoss = true;
hasGravity = false;
clampPositionX = true;
offScreenTurning = false;
hasXKnockback = false;
hasYKnockback = false;
bossOffsetX = "none";
bossOffsetY = "none";
blink = false;
spits = false;
attack = 0;
//droppedItemObject = obj_Apple;
//droppedItemSprite = spr_Apple_Normal_Idle;
dropCount = 0;
dropCountMax = 3;
spitCount = 0;
spitCountMax = 3;
blinkCount = 0;
blinkCountMax = 1;
activated = false;

//Timer

blinkTimerMax = 90;
blinkTimer = blinkTimerMax;
attackTimerMax = 270;
attackTimer = attackTimerMax;
dropTimer = -1;
dropTimerMax = 60;
spitTimer = -1;
spitTimerMax = 20;