///@description End Step

//Camera View Size

camera_set_view_size(gameView,viewWidth / zoom,viewHeight / zoom);

//Debug Camera

if (global.debug)
{
	debugCamera = global.pause;
}

//Camera Position

if (!debugCamera)
{
	if (!global.cutscene)
	{
		switch (state)
		{
			case "followingKirby":
			if (instance_exists(obj_Player))
			{
				if (global.hpP1 != 0)
				{
					cameraX = lerp(cameraX,obj_Player.x - ((viewWidth / zoom) / 2),spd) + ((offsetX + bossOffsetX + cinematicXOffset) / zoom);
					cameraY = lerp(cameraY,obj_Player.y - ((viewHeight / zoom) / 2),spd) + ((offsetY + bossOffsetY + cinematicYOffset) / zoom);
				}
			}
			else
			{
				cameraX = room_width / 2;
				cameraY = room_height / 2;
			}
			with (obj_Enemy)
			{
			    if (isBoss)
				{
					if (bossOffsetX != "none") other.cameraX = bossOffsetX;
					if (bossOffsetY != "none") other.cameraY = bossOffsetY;
				}
			}
			break;
			
			case "worldMap":
			if (instance_exists(obj_StageSelect))
			{
				cameraX = lerp(cameraX,obj_StageSelect.x - ((viewWidth / zoom) / 2),spd) + ((offsetX + cinematicXOffset) / zoom);
				cameraY = lerp(cameraY,obj_StageSelect.y - ((viewHeight / zoom) / 2),spd) + ((offsetY + cinematicYOffset) / zoom);
			}
			else
			{
				state = "followingKirby";
			}
			break;
		}
	}
	else
	{
		if ((objectFollowing != -1) and (instance_exists(objectFollowing)))
		{
			cameraX = lerp(cameraX,objectFollowing.x - ((viewWidth / zoom) / 2),cutsceneSpd);
			cameraY = lerp(cameraY,objectFollowing.y - ((viewHeight / zoom) / 2),cutsceneSpd);
		}
	}
}
else if (keyboard_check(vk_control))
{
	if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
	{
		cameraX += 2;
	}
	if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
	{
		cameraX -= 2;
	}
	if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
	{
		cameraY -= 2;
	}
	if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
	{
		cameraY += 2;
	}
}

//Clamp

cameraX = clamp(cameraX,0,room_width - (viewWidth / zoom));
cameraY = clamp(cameraY,0,room_height - (viewHeight / zoom));

camera_set_view_pos(gameView,cameraX + (irandom_range(-shakeX,shakeX)),cameraY + (irandom_range(-shakeY,shakeY)));

//Background Control

var _xpos = camera_get_view_x(gameView) / (room_width - camera_get_view_width(gameView));
var _ypos = camera_get_view_y(gameView) / (room_height - camera_get_view_height(gameView));
_xpos = clamp(_xpos,0,room_width)

if (layer_exists("Background_Parallax1"))
{
	var backgroundSprite = layer_background_get_sprite(layer_background_get_id("Background_Parallax1"));
	var backgroundXScale = layer_background_get_xscale(layer_background_get_id("Background_Parallax1"));
	var backgroundYScale = layer_background_get_yscale(layer_background_get_id("Background_Parallax1"));
	
	if ((sprite_get_width(backgroundSprite) * backgroundXScale) <= room_width) layer_x("Background_Parallax1",lerp(0,room_width - (sprite_get_width(backgroundSprite) * backgroundXScale),_xpos));
	if ((sprite_get_height(backgroundSprite) * backgroundYScale) <= room_height) layer_y("Background_Parallax1",lerp(0,room_height - (sprite_get_height(backgroundSprite) * backgroundYScale),_ypos));
}

if (layer_exists("Background_Parallax2"))
{
	var backgroundSprite = layer_background_get_sprite(layer_background_get_id("Background_Parallax2"));
	var backgroundXScale = layer_background_get_xscale(layer_background_get_id("Background_Parallax2"));
	var backgroundYScale = layer_background_get_yscale(layer_background_get_id("Background_Parallax2"));
	
	if ((sprite_get_width(backgroundSprite) * backgroundXScale) <= room_width) layer_x("Background_Parallax2",lerp(0,room_width - (sprite_get_width(backgroundSprite) * backgroundXScale),_xpos));
	if ((sprite_get_height(backgroundSprite) * backgroundYScale) <= room_height) layer_y("Background_Parallax2",lerp(0,room_height - (sprite_get_height(backgroundSprite) * backgroundYScale),_ypos));
}

if (layer_exists("Background_VParallax1"))
{
	var backgroundSprite = layer_background_get_sprite(layer_background_get_id("Background_VParallax1"));
	var backgroundYScale = layer_background_get_yscale(layer_background_get_id("Background_VParallax1"));
	
	if (sprite_get_height(backgroundSprite) <= room_height) layer_y("Background_VParallax1",lerp(0,room_height - sprite_get_height(backgroundSprite),_ypos));
}

if (layer_exists("MainMenuDiamond"))
{
	if (!global.pause)
	{
		layer_hspeed("MainMenuDiamond",.4);
		layer_vspeed("MainMenuDiamond",.2);
	}
	else
	{
		layer_hspeed("MainMenuDiamond",0);
		layer_vspeed("MainMenuDiamond",0);
	}
}

if (layer_exists("OptionsBackground"))
{
	if (!global.pause)
	{
		layer_hspeed("OptionsBackground",.4);
		layer_vspeed("OptionsBackground",.2);
	}
	else
	{
		layer_hspeed("OptionsBackground",0);
		layer_vspeed("OptionsBackground",0);
	}
}

if (layer_exists("BattleshipHalberd_Clouds_Front"))
{
	if (!global.pause)
	{
		layer_hspeed("BattleshipHalberd_Clouds_Front",-0.6);
	}
	else
	{
		layer_hspeed("BattleshipHalberd_Clouds_Front",0);
	}
}

if (layer_exists("BattleshipHalberd_Clouds_Mid"))
{
	if (!global.pause)
	{
		layer_hspeed("BattleshipHalberd_Clouds_Mid",-0.45);
	}
	else
	{
		layer_hspeed("BattleshipHalberd_Clouds_Mid",0);
	}
}

if (layer_exists("BattleshipHalberd_Clouds_Back"))
{
	if (!global.pause)
	{
		layer_hspeed("BattleshipHalberd_Clouds_Back",-0.3);
	}
	else
	{
		layer_hspeed("BattleshipHalberd_Clouds_Back",0);
	}
}

if (layer_exists("AsteroidFields_Cube_Front"))
{
	if (!global.pause)
	{
		layer_hspeed("AsteroidFields_Cube_Front",.3);
	}
	else
	{
		layer_hspeed("AsteroidFields_Cube_Front",0);
	}
}

if (layer_exists("AsteroidFields_Cube_Mid"))
{
	if (!global.pause)
	{
		layer_hspeed("AsteroidFields_Cube_Mid",-.2);
	}
	else
	{
		layer_hspeed("AsteroidFields_Cube_Mid",0);
	}
}

if (layer_exists("AsteroidFields_Cube_Back"))
{
	if (!global.pause)
	{
		layer_hspeed("AsteroidFields_Cube_Back",.1);
	}
	else
	{
		layer_hspeed("AsteroidFields_Cube_Back",0);
	}
}

if (layer_exists("Skylands_Sky_Clouds"))
{
	if (!global.pause)
	{
		layer_vspeed("Skylands_Sky_Clouds",.5);
	}
	else
	{
		layer_vspeed("Skylands_Sky_Clouds",0);
	}
}

if (layer_exists("Skylands_Sky_Islands"))
{
	if (!global.pause)
	{
		layer_vspeed("Skylands_Sky_Islands",.25);
	}
	else
	{
		layer_vspeed("Skylands_Sky_Islands",0);
	}
}

if (layer_exists("AbilityChallenge_Background"))
{
	if (!global.pause)
	{
		layer_hspeed("AbilityChallenge_Background",.25);
		layer_vspeed("AbilityChallenge_Background",.25);
	}
	else
	{
		layer_hspeed("AbilityChallenge_Background",0);
		layer_vspeed("AbilityChallenge_Background",0);
	}
}