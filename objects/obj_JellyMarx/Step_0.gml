///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Horizontal Straight Movement
		
		case 0:
		dirX = 1;
		hsp = 0;
		
		image_speed = 1;
		sprite_index = sprIdle;
		break;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		if (!global.cutscene) attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		var ball = instance_create_depth(obj_Player.x,10,depth,obj_Projectile_AFEnergy);
		ball.jumpspeed = -3;
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