///@description Initialize Variables

//Physics

accel = .05;
decel = .05;
movespeed = .75;
jumpspeed = 1.5;
grav = 0;
gravNormal = .05;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 1.25;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 48;
character = 0;
paletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
state = 0;
hp = 8;
dmg = 1;
ability = "none";
points = 300;
hurtable = true;
hasGravity = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 0;
parasolY = 0;
scale = 1;
dirX = 1;
dirY = 1;
walkDirX = 1;
walkDirY = 1;
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = false;
collisionX = obj_Wall;
collisionY = obj_Wall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;

//Timers

spawnTimer = 0;
jumpTimerMax = 60;
jumpTimer = jumpTimerMax;