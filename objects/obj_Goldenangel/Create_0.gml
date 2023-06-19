///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_Goldenangel;

sprIdle = spr_Goldenangel;
sprWalk = spr_WaddleDee_Normal_Walk;
sprDuck = spr_WaddleDee_Normal_Duck;
sprJump = spr_WaddleDee_Normal_Jump;
sprFall = spr_WaddleDee_Normal_Fall;
sprSwing = spr_WaddleDee_Normal_Swing;
sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
sprHurt = spr_Goldenangel;

//Other Variables

paletteIndex = spr_WaddleDee_Gold_Palette_HiddenTreasure;
hp = 200;
dmg = 1;
points = 500;
parasolX = 2;
parasolY = 3;
duck = false;
jump = false;
jumpState = 0;
walkDuck = false;
climbDir = -1;
hasXKnockback = false;
hasYKnockback = false;
bulletOffset = 0;
hasGravity = false;

//Timers

attackTimerMax = 5;
attackTimer = attackTimerMax;