///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
grav = .2;
gravLimit = 5;
accel = .2;
spd = 0;
spdMax = 2;

//Sprites

mask_index = spr_16Square_Mask;

sprChestClosed = spr_ItemChest_Normal_Closed;
sprChestOpen = spr_ItemChest_Normal_Open;

//Other Variables

hasGravity = true;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
character = 0;
open = false;
itemIndex = obj_Food;

//Timers

setupTimer = 0;
blinkTimer = -1;
blinkTimerMax = 2;
destroyTimer = -1;
destroyTimerMax = 30;