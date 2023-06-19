///@description Main

//Event Inherited

event_inherited();

//Variables

if (state == "smallStar")
{
	destroyableByEnemy = true;
	destroyableByObject = true;
	sprite_index = spr_SpitStar_Small;
	mask_index = spr_18Square_Mask;
}
if (state == "bigStar")
{
	destroyableByEnemy = false;
	destroyableByObject = false;
	sprite_index = spr_SpitStar_Big;
	mask_index = spr_18Square_Mask;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	image_speed = 1;
	
	//Movement
	
	hsp = dirX * spd;
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth(x,y,depth + 1,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.hsp = (1 * dirX);
		particle.destroyAfterAnimation = true;
		particleTimer = particleTimerMax;
	}
	
	//Position
	
	x += hsp;
}
else
{
	image_speed = 0;
}