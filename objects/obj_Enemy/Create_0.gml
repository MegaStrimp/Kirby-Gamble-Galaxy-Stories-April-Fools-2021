///@description Initialize Variables

//Physics

hsp = 0;
hspDummy = 0;
hspFinal = 0;
vsp = 0;
vspDummy = 0;
vspFinal = 0;
knockbackX = 0;
knockbackY = 0;
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

destroyOutsideView = false;
hasSpawner = false;
spawner = id;
spawnerRange = 96;
shakeX = 0;
shakeY = 0;
paletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
hurt = false;
death = false;
invincible = false;
invincibleFlash = false;
attack = false;
character = 0;
state = 0;
hp = 0;
dmg = 0;
ability = "none";
points = 0;
isBoss = false;
hurtable = true;
hasGravity = true;
enemy = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolObject = id;
parasolX = 0;
parasolY = 0;
scale = 1;
scaleExX = 0;
scaleExY = 0;
scaleExSpd = .1;
dirX = -1;
dirY = 1;
walkDirX = 1;
walkDirY = 1;
imageAngle = 0;
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
takenDamageType = 0;
bossOffsetX = "none";
bossOffsetY = "none";
isMystic = false;
overlayHsp = 0;
overlayVsp = 0;
fluxOverlayAlpha = 0;

//Timers

setupTimer = 0;
hurtTimer = -1;
hurtTimerMax = 17;
hurtStopTimer = -1;
hurtStopTimerMax = 12;
invincibleTimer = -1;
invincibleTimerMax = 30;
invincibleFlashTimer = -1;
invincibleFlashTimerMax = 2;
shineEffectTimer = -1;
shineEffectTimerMax = 6;