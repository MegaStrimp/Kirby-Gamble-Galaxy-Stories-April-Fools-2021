///@description End Step

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Follow Owner
	
	if ((state == 0) and (instance_exists(owner)))
	{
		x = owner.x + (xPos * dirX);
		y = owner.y + (yPos * dirY);
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}