///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 0;
jumpspeed = 0;
grav = .15;
gravLimit = 2.5;

//Sprites

sprIdle = spr_Projectile_Bomb_Normal;

//Other Variables

character = 0;
hurtsEnemy = false;
objectOnHit = true;
objectOnHitObj = obj_Projectile_ExplosionMask;
hasGravity = true;
enemy = false;
explosionIndex = 0;