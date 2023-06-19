///@description Fire Dash

function scr_Player_FireDash()
{
	if (!global.pause)
	{
		//Movement
		
		hsp = fireDashHsp;
		
		if (fireDashHsp >= decelSlide) fireDashHsp -= decelSlide;
		if (fireDashHsp <= -decelSlide) fireDashHsp += decelSlide;
		if ((fireDashHsp > -decelSlide) and (fireDashHsp < decelSlide)) fireDashHsp = 0;
		
		vsp = 0;
		
		//Turn Back
		
		//Animation
		
		image_speed = 1;
		
		sprite_index = sprFireAttack2;
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
	}
}
