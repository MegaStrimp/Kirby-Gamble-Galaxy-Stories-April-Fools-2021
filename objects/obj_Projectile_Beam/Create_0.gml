///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

spd = 1;
orbitSpd = 0;
hsp = 0;
vsp = 0;

//Other Variables

canBeReflected = false;
destroyOutsideView = false;
state = 0;
damageType = "beam";
enemy = true;
deathParticlesOnHit = true;
deathParticlesOnHitNumber = "beamAlt";
centerX = 0;
centerY = 0;
angle = 50;
orbit = 20;
orbitMax = 30;
dir = 1;
imageIndex = 0;
hasLimit = true;
imageSpeed = 0;
character = 0;

//Sprites

sprIdle = spr_Projectile_Beam_Normal;

//Timers

setupTimer = 0;
invisTimerMax = 2;
invisTimer = invisTimerMax;
alphaTimer = -1;
alphaTimerMax = 2;
pulseTimer = -1;
pulseTimerMax = 1;
particleTimerMax = 12;
particleTimer = particleTimerMax + irandom_range(-8,-4);
destroyTimer = -1;