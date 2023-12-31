///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;

//Sprites

mask_index = spr_16Square_Mask;
sprForm1 = spr_Projectile_BeamCharge_Normal_Form1;
sprForm2 = spr_Projectile_BeamCharge_Normal_Form2;
sprForm3 = spr_Projectile_BeamCharge_Normal_Form3;
sprForm4 = spr_Projectile_BeamCharge_Normal_Form4;
sprIdle = sprForm1;

//Other Variables

destroyableByEnemy = false;
destroyableByObject = false;
damageType = "beam";
enemy = false;
character = 0;
deathParticlesOnHit = true;
deathParticlesOnHitNumber = "beamCharge";
formIndex = 0;
scaleEx = 1;

//Timers

particleTimerMax = 12;
particleTimer = particleTimerMax + irandom_range(-8,-4);
flareTimerMax = 4;
flareTimer = flareTimerMax + irandom_range(-2,1);
formChangeTimerMax = 4;
formChangeTimer = formChangeTimerMax;