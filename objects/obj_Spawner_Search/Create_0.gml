///@description Initialize Variables

//Physics

accel = 0;
decel = .05;
movespeed = 0;
jumpspeed = 0;
grav = 0;
gravNormal = .15;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 0;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 48;
character = 0;
paletteIndex = spr_Search_Normal_Palette_BombshellGray;
state = 0;
hp = 1;
dmg = 1;
ability = "none";
points = 500;
hurtable = true;
hasGravity = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 2;
parasolY = 3;
scale = 1;
dirX = 1;
dirY = 1;
walkDirX = 1;
walkDirY = 1;
hasXCollision = true;
hasYCollision = true;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;

//Timers

spawnTimer = 0;
explodeTimer = -1;
explodeTimerMax = 90;