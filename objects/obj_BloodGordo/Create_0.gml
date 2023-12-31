///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .02;
movespeed = 1;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_18Square_Mask;

sprIdle = spr_BloodGordo_Normal_Idle;
sprHurt = "self";

//Other Variables

paletteIndex = spr_BloodGordo_Normal_Palette_BloodyThorns;
hp = 1;
dmg = 1;
points = 100;
hurtable = false;
hasGravity = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = true;
hasXKnockback = false;
hasYKnockback = false;
turnableX = true;
turnableY = true;

//Timers

turnableXTimer = -1;
turnableXTimerMax = 4;
turnableYTimer = -1;
turnableYTimerMax = 4;