///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	//Roundabout
	
	if (state == 0)
	{
		destroyTimer = 30;
	}
	
	//Double Cross
	
	if (state == 1)
	{
		parLoopMax = 4;
	}
	particleTimer = 0;
	setupTimer = -1;
}

if (!global.pause)
{
	//Release Particles
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		//Roundabout
		
		if (state == 0)
		{
			parDirection = 45 * parNumber;
			
			if ((!indexHasChanged) and (parIndex == 0))
			{
				parIndex = 1;
				indexHasChanged = true;
			}
			if ((!indexHasChanged) and (parIndex == 1))
			{
				parIndex = 0;
				indexHasChanged = true;
			}
			
			var par = instance_create_depth(x,y,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_SmallStar;
			par.image_index = parIndex;
			par.imageSpeed = 0;
			par.spdBuiltIn = 4 + (parNumber/4);
			par.fricSpd = .6;
			par.direction = parDirection * dir;
			par.destroyTimer = 10;
			parScaleDir = 1;
			if ((par.direction > 90) and (par.direction <= 270))
			{
				parScaleDir = -1;
			}
			par.dir = parScaleDir;
			
			parNumber += 1;
			particleTimer = 2;
			indexHasChanged = false;
		}
		
		//Double Cross
		
		if (state == 1)
		{
			parIndex = 0;
			if (parNumber = 1) parIndex = 1;
			
			for (var i = 0; i < parLoopMax; i++)
			{
				parDirection = (45 + (90 * i) + (parNumber * 45)) * dir;
				
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_SmallStar;
				par.image_index = parIndex;
				par.imageSpeed = 0;
				par.spdBuiltIn = 6;
				par.fricSpd = .6;
				par.direction = parDirection;
				if (parNumber = 0) par.destroyTimer = 15;
				if (parNumber = 1) par.destroyTimer = 20;
				parScaleDir = 1;
				if ((par.direction > 90) and (par.direction <= 270))
				{
					parScaleDir = -1;
				}
				par.dir = parScaleDir;
			}
			
			if (parNumber == 1) instance_destroy();
			
			parNumber += 1;
			particleTimer = 15;
		}
		
		//Cross
		
		if (state == 2)
		{
			for (var i = 0; i < 4; i++)
			{
				var parDirection = (45 + (90 * i)) * dir;
				
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					var parScaleDir = -1;
				}
				
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_SmallStar;
				par.image_index = 0;
				par.imageSpeed = 0;
				par.spdBuiltIn = 6;
				par.fricSpd = .6;
				par.direction = parDirection;
				par.destroyTimer = 20;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					var parScaleDir = -1;
				}
				par.dir = parScaleDir;
				if (i == 3) instance_destroy();
			}
		}
		
		//Beam Alt
		
		if (state == "beamAlt")
		{
			for (var i = 0; i < 2; i++)
			{
				var par = instance_create_depth(x,y,depth - 1,obj_Particle);
				if (i == 0)
				{
					par.sprite_index = spr_Particle_Explosion2;
					par.image_index = 0;
					par.imageSpeed = 0;
					par.destroyTimer = 2;
				}
				else
				{
					par.sprite_index = spr_Particle_Cloud1;
					par.direction = 90;
					par.imageSpeed = 1;
					par.spdBuiltIn = 4;
					par.fricSpd = .4;
					par.destroyAfterAnimation = true;
					instance_destroy();
				}
			}
		}
		
		//Spit Star
		
		if (state == "spitStar")
		{
			if (parNumber == 0)
			{
				for (var i = 0; i < 4; i++)
				{
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Sparkle3;
					par.destroyAfterAnimation = true;
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_ShrinkingStar3;
					par.destroyAfterAnimation = true;
					par.spdBuiltIn = 8;
					par.fricSpd = .6;
					var parDirection = 0;
					if (dir == -1) parDirection = -1;
					par.direction = (120 + (i * 40)) + (parDirection * 180);
				}
				instance_destroy();
			}
		}
		
		//Beam Charge
		
		if (state == "beamCharge")
		{
			if (parNumber == 0)
			{
				for (var i = 0; i < 7; i++)
				{
					var par = instance_create_depth(x,y,depth,obj_Particle);
					par.sprite_index = spr_Particle_BeamCharge;
					par.destroyTimer = 4;
					var par = instance_create_depth(x + (irandom_range(8,-8)),y + (irandom_range(8,-8)),depth - 1,obj_Particle);
					par.sprite_index = choose(spr_Particle_BeamFlareWhite,spr_Particle_BeamFlarePink,spr_Particle_BeamFlareYellow);
					par.image_index = choose(1,2);
			        par.direction = irandom_range(1,360);
			        par.spdBuiltIn = irandom_range(2,3);
					par.dir = choose(-1,1);
					par.imageSpeed = 0;
					par.destroyTimer = irandom_range(5,15);
				}
				instance_destroy();
			}
		}
	}
	
	//Destroy
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
}