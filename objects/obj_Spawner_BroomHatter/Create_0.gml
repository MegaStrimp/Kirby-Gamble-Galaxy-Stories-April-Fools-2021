///@description Initialize Variables

//Physics

accel = .015;
decel = .05;
movespeed = 1.5;
jumpspeed = 4;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 48;
character = 0;
paletteIndex = spr_BroomHatter_Normal_Palette_YellowBroom;
state = 0;
hp = 16;
dmg = 1;
ability = "none";
points = 200;
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
attackTimerMax = 45;
attackTimer = attackTimerMax;