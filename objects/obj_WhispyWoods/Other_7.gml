///@description Animation End

//Blink

if ((blink) and (sprite_index == sprBlink))
{
	image_index = 0;
	blinkCount += 1;
	if (blinkCount >= blinkCountMax)
	{
		blink = false;
		blinkCount = 0;
		blinkTimer = round(blinkTimerMax / (irandom_range(1,2)));
	}
	else
	{
		blinkTimer = 0;
	}
}