///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	if (!instance_exists(owner))
	{
		instance_destroy();
	}
	else if (owner.state != playerStates.slide)
	{
		instance_destroy();
	}
	
	//Event Inherited
	
	event_inherited();
}