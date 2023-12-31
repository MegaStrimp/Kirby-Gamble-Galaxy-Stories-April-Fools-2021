///@description Initialize Variables

//Other Variables

owner = id;
paletteIndex = -1;
destroyableByWall = true;
destroyableByPlayer = false;
destroyableByEnemy = true;
destroyableByObject = true;
destroyableByProjectile = false;
hurtsObject = true;
hurtsEnemy = true;
hurtsBoss = true;
hurtsPlayer = false;
hurtsProjectile = true;
canReflect = false;
canBeReflected = true;
particleOnHit = false;
particleOnHitSpr = spr_Particle_Explosion1;
deathParticlesOnHit = false;
deathParticlesOnHitNumber = 0;
objectOnHit = false;
objectOnHitObj = obj_Projectile_ExplosionMask;
destroyOutsideView = true;
setScale = true;
damageType = "none";
scale = 1;
dirX = 1;
dirY = 1;
enemy = false;
dmg = 1;
hurt = false;
invincible = false;
hurtable = false;
pausable = true;
shakeX = 0;
shakeY = 0;
hitInvincibilityMin = 10;
hitInvincibilityMax = 30;
hitInvincibility = hitInvincibilityMin;

//Timers

setupTimer = 0;