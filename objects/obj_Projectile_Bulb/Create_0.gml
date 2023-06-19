///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
movespeed = 2;

//Other Variables

enemy = false;
character = 0;
particleOnHit = true;
particleOnHitSpr = spr_Particle_Explosion4;
deathParticlesOnHit = true;
deathParticlesOnHitNumber = 2;
state = 0;
owner = id;
xPos = 1;
yPos = 0;
xPosMax = 8;
yPosMax = -4;
sparkSfx = audio_play_sound(snd_Spark,0,false);

//Sprites

switch (character)
{
	//Normal
	
	case 0:
	sprReady = spr_Projectile_Bulb_Normal_Ready;
	sprIdle = spr_Projectile_Bulb_Normal_Idle;
	particleOnHitSpr = spr_Particle_Explosion4;
	break;
	
	//Shadow
	
	case 1:
	sprReady = spr_Projectile_Bulb_Shadow_Ready;
	sprIdle = spr_Projectile_Bulb_Shadow_Idle;
	particleOnHitSpr = spr_Particle_Explosion1;
	break;
}

//Timers

particleTimer = 0;
particleTimerMax = 10;