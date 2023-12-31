///@description Initialize Variables

//Physics

accel = .05;
decel = .05;
movespeed = .4;
jumpspeed = 1;
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
paletteIndex = spr_Twizzy_Normal_Palette_FlyingYolk;
state = 0;
hp = 6;
dmg = 1;
ability = "none";
points = 180;
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
jumpTimer = 0;
jumpTimerMax = 60;