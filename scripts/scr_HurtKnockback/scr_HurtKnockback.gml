///@function scr_HurtKnockback(target,source)
///@description Hurt Knockback
///@param {real} target Set it to the target of knockback.

function scr_HurtKnockback(argument0, argument1)
{
	//Variables
	
	var knockbackTarget = argument0;
	var knockbackSource = argument1;
	
	//Vertical Knockback
	
	/*if (knockbackTarget.hasYKnockback)
	{
		knockbackTarget.knockbackY = -6;
		if (knockbackTarget.y > knockbackSource.y)
		{
			knockbackTarget.knockbackY = knockbackTarget.jumpspeed;
		}
		if (knockbackTarget.y < knockbackSource.y)
		{
			knockbackTarget.knockbackY = -(knockbackTarget.jumpspeed);
		}
	}*/
	
	//Horizontal Knockback
	
	if (knockbackTarget.hasXKnockback)
	{
		if (knockbackTarget.x > knockbackSource.x)
		{
			knockbackTarget.knockbackX = knockbackTarget.movespeed;
		}
		if (knockbackTarget.x < knockbackSource.x)
		{
			knockbackTarget.knockbackX = -(knockbackTarget.movespeed);
		}
	}
}