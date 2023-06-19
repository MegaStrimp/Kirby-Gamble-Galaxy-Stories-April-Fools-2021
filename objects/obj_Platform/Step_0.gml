///@description Main

//Event Inherited

event_inherited();

//Inputs

scr_Player_Inputs();

if (!global.pause)
{
	//Platform

	if (instance_exists(obj_Player))
	{
		var nearestPlayer = instance_nearest(x + (sprite_get_width(spr_Platform) / 2),y + 20 + (sprite_get_width(spr_Platform) / 2),obj_Player);
	    if (((nearestPlayer.attackNumber != "stoneNormal") and (nearestPlayer.x > x - 24 + (sprite_get_width(spr_Platform) / 2)) and (nearestPlayer.x < x + 24 + (sprite_get_width(spr_Platform) / 2))) and ((round(obj_Player.bbox_bottom) > y + 20 + obj_Player.vsp) or ((!global.cutscene) and ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd))))))
	    {
			sprite_index = -1;
			mask_index = -1;
	    }
	    else
	    {
			sprite_index = spr_Platform;
	        mask_index = sprite_index;
	    }
	}
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}