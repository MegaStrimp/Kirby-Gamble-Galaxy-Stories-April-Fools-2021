///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_MovingWall_Normal_Idle;
		break;
	}
	mask_index = sprIdle;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Movement
	
	switch (movementState)
	{
		case "halberd1":
		if ((vsp == 0) and (place_meeting(x,y - 1,obj_Player))) vsp = -3;
		if (y <= 338)
		{
			movementTimer = 0;
			y = 338;
		}
		break;
		
		case "halberd2-1":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 236)
		{
			movementTimer = 0;
			y = 236;
		}
		break;
		
		case "halberd2-2":
		if (instance_exists(obj_Player))
		{
			if (abs(x - obj_Player.x) <= 120) vsp = -6;
		}
		if (y <= 212)
		{
			movementTimer = 0;
			y = 212;
		}
		break;
		
		case "eggGardenSample2-1":
		if (y >= 1194)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 1194;
		}
		if (y <= 936)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 936;
		}
		break;
		
		case "eggGardenSample2-2":
		if (y >= 1026)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 1026;
		}
		if (y <= 744)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 744;
		}
		break;
		
		case "eggGardenSample2-3":
		if (y >= 786)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 786;
		}
		if (y <= 504)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 504;
		}
		break;
		
		case "eggGardenSample2-4":
		if (y >= 522)
		{
			movementSubState = 0;
			movementTimer = 0;
			y = 522;
		}
		if (y <= 240)
		{
			movementSubState = 1;
			movementTimer = 0;
			y = 240;
		}
		break;
		
		case "abilityChallengeBeam2-1":
		if (y <= 137)
		{
			y = 137;
			vsp = 0;
		}
		else
		{
			if ((movementTimer == -1) and (vsp == 0) and (place_meeting(x,y - 1,obj_Player))) movementTimer = 45;
		}
		break;
		
		case "abilityChallengeBeam4-1":
		if ((vsp == 0) and (place_meeting(x,y - 1,obj_Player))) vsp = -4;
		if (y <= 355)
		{
			movementTimer = 0;
			y = 355;
		}
		break;
	}
	
	//Movement Timer
	
	if (movementTimer > 0)
	{
		movementTimer -= 1;
	}
	else if (movementTimer == 0)
	{
		switch (movementState)
		{
			case "eggGardenSample2-1":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "eggGardenSample2-2":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "eggGardenSample2-3":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "eggGardenSample2-4":
			if (movementSubState == 0)
			{
				vsp = -1;
			}
			else
			{
				vsp = 1;
			}
			break;
			
			case "abilityChallengeBeam2-1":
			vsp = -2;
			movementTimer = -1;
			break;
			
			default:
			hsp = 0;
			vsp = 0;
			movementTimer = -1;
			break;
		}
	}
	
	//Animation
	
	sprite_index = sprIdle;
}