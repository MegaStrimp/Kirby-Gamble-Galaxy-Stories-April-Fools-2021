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

mask_index = spr_18Square_Mask;

sprIdle = spr_Flamebelch_Normal_Idle;
sprWalk = spr_Flamebelch_Normal_Walk;
sprDuck = spr_WaddleDee_Normal_Duck;
sprJump = spr_WaddleDee_Normal_Jump;
sprFall = spr_WaddleDee_Normal_Fall;
sprSwing = spr_WaddleDee_Normal_Swing;
sprHurt = spr_Flamebelch_Normal_Hurt;

//Other Variables

paletteIndex = spr_MrBoogie_Normal_Palette_SlimyGreen;
hp = 12;
dmg = 1;
points = 200;
parasolX = 2;
parasolY = 3;
isMystic = true;
duck = false;
jump = false;
jumpState = 0;
walkDuck = false;

//Timers

walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpTimerMax = -1;
jumpTimer = jumpTimerMax;