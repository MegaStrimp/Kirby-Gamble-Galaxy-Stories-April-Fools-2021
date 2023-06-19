///@description Main

//Event Inherited

event_inherited();

if ((!global.pause) and (!global.cutscene))
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Horizontal Straight Movement
		
		case 0:
		if ((!hurt) and (!attack) and (!duck) and (!walkDuck))
		{
			if (parasol)
			{
				scr_AI_HorizontalStraightMovement(false,true);
			}
			else
			{
				scr_AI_HorizontalStraightMovement(true,true);
			}
		}
		else
		{
			hsp = 0;
		}
		
		image_speed = 1;
		sprite_index = sprIdle;
		break;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		var ball = instance_create_depth(x,y,depth,obj_Projectile_AFEnergy);
		ball.movespeed = dirX * 4;
		ball.owner = id;
		ball.enemy = true;
		ball.destroyableByEnemy = false;
		ball.hurtsObject = false;
		ball.hurtsEnemy = false;
		ball.hurtsPlayer = true;
		attackTimer = attackTimerMax;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}