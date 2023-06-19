///@description Main

//Inputs

scr_Player_Inputs();

//Window Center

if (!windowCenter)
{
	window_center();
	windowCenter = true;
}

if (!global.pause)
{
	//Shake
	
	if (shakeX > 0)
	{
		shakeX -= (sign(shakeX)) / 10;
	}
	else
	{
		shakeX = 0;
	}
	
	if (shakeY > 0)
	{
		shakeY -= (sign(shakeY)) / 10;
	}
	else
	{
		shakeY = 0;
	}
	
	//Cinematic Offset
	
	cinematicXOffset = lerp(cinematicXOffset,cinematicXOffsetTarget,cinematicOffsetSpeed);
	cinematicYOffset = lerp(cinematicYOffset,cinematicYOffsetTarget,cinematicOffsetSpeed);
	
	//Cinematic Offset Timer
	
	if (cinematicOffsetTimer > 0)
	{
		cinematicOffsetTimer -= 1;
	}
	else if (cinematicOffsetTimer == 0)
	{
		cinematicXOffsetTarget = irandom_range(-cinematicOffsetRange,cinematicOffsetRange);
		cinematicYOffsetTarget = irandom_range(-cinematicOffsetRange,cinematicOffsetRange);
	    cinematicOffsetTimer = cinematicOffsetTimerMax + irandom_range(-12,12);
	}
}