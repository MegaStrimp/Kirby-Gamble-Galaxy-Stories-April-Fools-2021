///@description Main

if (!global.pause)
{
	//Movement

	vsp += (accel * walkDirY);
	if ((abs(vsp) >= jumpspeed)) walkDirY *= -1;
	
	//Position
		
	posX = lerp(posX,25 * -dir,.15);
		
	dir = owner.dir;
	x = lerp(x,owner.x + posX,.15);
	y = lerp(y,owner.y - 15 + vsp,.15);
	
	//Destroy
	
	if (((owner.player == 0) and (global.characterP1 == "gamble")) or ((owner.player == 1) and (global.characterP2 == "gamble"))) instance_destroy();
	
	//Shine Timer
	
	if (shineTimer > 0)
	{
		shineTimer -= 1;
	}
	else if (shineTimer == 0)
	{
		var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 4),(sprite_get_width(sprite_index) / 4)),y + irandom_range(-(sprite_get_height(sprite_index) / 4),(sprite_get_height(sprite_index) / 4)),depth,obj_Particle);
		particle.sprite_index = spr_Particle_SmallSparkle_Yellow;
		particle.vsp = .5;
		particle.destroyAfterAnimation = true;
		shineTimer = shineTimerMax;
	}
	
	//Animation
	
	image_xscale = dir * scale;
	image_yscale = scale;
	
	image_speed = 1;
	
	if (place_meeting(owner.x,owner.y + 1,obj_Wall))
	{
		if (owner.hsp != 0)
		{
			sprite_index = spr_Gamble_Normal_Side_Walk;
		}
		else
		{
			sprite_index = spr_Gamble_Normal_Side_Idle;
		}
	}
	else
	{
		if (owner.vsp > 0)
		{
			sprite_index = spr_Gamble_Normal_Side_Jump;
			image_index = image_number - 1;
		}
		else
		{
			sprite_index = spr_Gamble_Normal_Side_Jump;
			image_index = 1;
		}
	}
}
else
{
	image_speed = 0;
	hsp = 0;
	vsp = 0;
}