///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//States
	
	switch (state)
	{
		//Horizontal Straight Movement
		
		case 0:
		hsp = 0;
		
		image_speed = 1;
		sprite_index = sprIdle;
		break;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}