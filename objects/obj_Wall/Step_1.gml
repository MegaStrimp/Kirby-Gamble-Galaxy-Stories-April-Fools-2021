/// @description Insert description here
// You can write your code in this editor


if (isTop)
{
	if (!instance_exists(topWallOwner))
	{
		instance_destroy();
	}
	else
	{
		if (hp <= 0) topWallOwner.hp = 0;
	}
}