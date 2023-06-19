///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if (owner.hurt)
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Stop Damaging
	
	if ((!enemy) and ((owner.hsp != 0) or (owner.vsp != 0)))
	{
		hurtsObject = true;
		hurtsEnemy = true;
	}
	else
	{
		hurtsObject = false;
		hurtsEnemy = false;
	}
}