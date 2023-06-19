///@description Inputs

function scr_Player_Inputs()
{
	if (object_index == obj_Player)
	{
		switch (player)
		{
			case 0:
			keyLeft = vk_left;
			keyRight = vk_right;
			keyUp = vk_up;
			keyDown = vk_down;
			keyJump = ord("Z");
			keyAttack = ord("X");
			keyStart = vk_enter;
			keySelect = vk_backspace;
			break;
		
			case 1:
			keyLeft = ord("A");
			keyRight = ord("D");
			keyUp = ord("W");
			keyDown = ord("S");
			keyJump = ord("K");
			keyAttack = ord("L");
			keyStart = vk_enter;
			keySelect = vk_backspace;
			break;
		}
	}
	else
	{
		keyLeft = vk_left;
		keyRight = vk_right;
		keyUp = vk_up;
		keyDown = vk_down;
		keyJump = ord("Z");
		keyAttack = ord("X");
		keyStart = vk_enter;
		keySelect = vk_backspace;
	}
}