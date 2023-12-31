///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
jumpspeed = 1;
decel = .35;
decelMax = 8.5;

//Sprites

sprIdle = spr_Projectile_Cutter_Player;

//Other Variables

destroyableByProjectile = true;
damageType = "cutter";
enemy = false;
character = 0;
deathParticlesOnHit = true;
deathParticlesOnHitNumber = 2;