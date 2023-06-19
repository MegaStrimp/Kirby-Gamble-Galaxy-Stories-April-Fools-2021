///@description Collision

function scr_Player_Collision()
{
	//Variables
	
	var hspCollision = 0;
	if (place_meeting(x,y + 1,obj_Wall))
	{
		var hspCollisionTemp = instance_place(x,y + 1,obj_Wall).hsp;
		if (hspCollisionTemp != 0) hspCollision = hspCollisionTemp;
	}
	if (place_meeting(x + sign(hsp),y,obj_Wall))
	{
		var hspCollisionTemp = instance_place(x + sign(hsp),y,obj_Wall).hsp;
		if (hspCollisionTemp != 0) hspCollision = hspCollisionTemp;
	}
	
	if ((sign(hspCollision != 0)) and (sign(hsp) != sign(hspCollision))) hsp = 0;
	hspFinal = hsp + hspCollision;
	
	var vspCollision = 0;
	if (place_meeting(x,y + 1,obj_Wall))
	{
		var vspCollisionTemp = instance_place(x,y + 1,obj_Wall).vsp;
		if (vspCollisionTemp != 0) vspCollision = vspCollisionTemp;
	}
	if (place_meeting(x,y - 1,obj_Wall))
	{
		var vspCollisionTemp = instance_place(x,y - 1,obj_Wall).vsp;
		if (vspCollisionTemp != 0) vspCollision = vspCollisionTemp;
	}
	
	if ((sign(vspCollision != 0)) and (sign(vsp) != sign(vspCollision))) vsp = 0;
	vspFinal = vsp + vspCollision;
	
	//Slopes
	
	if ((!place_meeting(x + hspFinal,y,obj_Wall)) and (place_meeting(x,y + 1,obj_Wall)))
	{
		yplus = 0;
		while (!place_meeting(x + hspFinal,y + yplus,obj_Wall) && yplus <= abs(hspFinal))
		{
			yplus += 1;
		}
		y += yplus;
	}
	
	//Horizontal Collision
	
	if (place_meeting(x + hspFinal,y,obj_Wall))
	{
		yplus = 0;
		while ((place_meeting(x + hspFinal,y - yplus,obj_Wall)) and (yplus <= abs(1 * hspFinal)))
		{
			yplus += 1;
		}
		
		if place_meeting(x + hspFinal,y - yplus,obj_Wall)
		{
			var collidingWall = instance_place(x + hspFinal,y - yplus,obj_Wall);
			while (!place_meeting(x + sign(hspFinal),y,obj_Wall))
			{
				x += sign(hspFinal);
			}
			if (duckSlide)
			{
				if (collidingWall.object)
				{
					if ((collidingWall.damageType == "none") or (collidingWall.damageType = damageType))
					{
						collidingWall.hp -= dmg;
					}
				}
			}
			hsp = 0;
			hspFinal = 0;
		}
		else
		{
			y -= yplus
		}
	}
	
	x += hspFinal;
	
	//Vertical Collision
	
	if (place_meeting(x,y + vspFinal,obj_Wall))
	{
		while (!place_meeting(x,y + sign(vspFinal),obj_Wall))
		{
			y += sign(vspFinal);
		}
		if (place_meeting(x,y - 1,obj_Wall))
		{
			var collidedWall = instance_place(x,y - 1,obj_Wall);
			if (collidedWall.object)
			{
				if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_Wall)) and (collidedWall.damageType == "none") and (sign(vsp) == -1))
				{
					collidedWall.hp -= dmg;
				}
			}
		}
		vsp = 0;
		vspFinal = 0;
	}
	
	y += vspFinal;
	
	//Stuck Inside Walls
	
	if (place_meeting(x,y,obj_Gate))
	{
		if (!place_meeting(x,y + 24,obj_Wall))
		{
			y += 24;
		}
		else if (!place_meeting(x,y - 24,obj_Wall))
		{
			y -= 24;
		}
		else if (!place_meeting(x + 24,y,obj_Wall))
		{
			x += 24;
		}
		else if (!place_meeting(x - 24,y,obj_Wall))
		{
			x -= 24;
		}
	}
	else if (place_meeting(x,y,obj_Wall))
	{
		if (player == 0)
		{
			global.hpP1 = 0;
		}
		else
		{
			global.hpP2 = 0;
		}
	}
	
	//Clamp
	
	x = clamp(x,0 + (sprite_get_width(mask_index) / 2),room_width - (sprite_get_width(mask_index) / 2));
	y = clamp(y,0 + (sprite_get_height(mask_index) / 2),room_height + 32 + (sprite_get_height(mask_index) / 2));
	
	//Death On Bottom
	
	if ((global.hpP1 != 0) and (y >= room_height + 24)) global.hpP1 = 0;
}