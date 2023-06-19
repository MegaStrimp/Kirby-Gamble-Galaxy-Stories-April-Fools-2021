///@description Draw

//Variables

var hudX = camera_get_view_x(gameView) + 24;
var hudY = (camera_get_view_y(gameView) + camera_get_view_height(gameView)) - 24;
var paletteP1 = scr_SprayPaint_Setup(global.sprayPaintP1,global.characterP1);
var paletteP2 = scr_SprayPaint_Setup(global.sprayPaintP2,global.characterP2);

if (global.isHelperP1) paletteP1 = spr_Hud_Palette_Helper;
if (global.isHelperP2) paletteP2 = spr_Hud_Palette_Helper;

var hbackground = spr_Hud_Healthbar_Background_Velvet1;
if (global.hpMax == 6) hbackground = spr_Hud_Healthbar_Background_Velvet2;
if (global.hpMax == 7) hbackground = spr_Hud_Healthbar_Background_Velvet3;
if (global.hpMax == 8) hbackground = spr_Hud_Healthbar_Background_Velvet4;
if (global.hpMax == 9) hbackground = spr_Hud_Healthbar_Background_Velvet5;
if (global.hpMax > 9) hbackground = spr_Hud_Healthbar_Background_Velvet6;

//P1 Health Background

draw_sprite(hbackground,0,hudX + 12,hudY - 15);

//P1 Ability

var textIndex = scr_Hud_AbilityText(global.abilityP1,global.characterP1);
if ((global.shaders) and (global.abilityP1 == "none")) pal_swap_set(paletteP1,1 + (flashP1 * 2),false);
draw_sprite(textIndex,0,hudX + 24,hudY - 21);
if ((global.shaders) and (global.abilityP1 == "none")) pal_swap_reset();

var iconIndex = scr_Hud_AbilityIcon(global.abilityP1,global.characterP1);
if ((global.shaders) and (global.abilityP1 == "none")) pal_swap_set(paletteP1,1 + (flashP1 * 2),false);
draw_sprite(iconIndex,0,hudX,hudY);
if ((global.shaders) and (global.abilityP1 == "none")) pal_swap_reset();

draw_sprite(spr_Hud_IconGlow,0,hudX,hudY);
draw_sprite(spr_Hud_IconBorder,0,hudX,hudY);

if (instance_number(obj_Player) > 1)
{
	//P2 Health Background
	
	draw_sprite_ext(hbackground,0,hudX + camera_get_view_width(gameView) - 60,hudY - 15,-1,1,image_angle,image_blend,image_alpha);
	
	//P2 Ability
	
	var textIndex = scr_Hud_AbilityText(global.abilityP2,global.characterP2);
	if ((global.shaders) and (global.abilityP2 == "none")) pal_swap_set(paletteP2,1 + (flashP2 * 2),false);
	draw_sprite(textIndex,0,hudX + camera_get_view_width(gameView) - sprite_get_width(textIndex) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 52,hudY - 21);
	if ((global.shaders) and (global.abilityP2 == "none")) pal_swap_reset();
	
	var iconIndex = scr_Hud_AbilityIcon(global.abilityP2,global.characterP2);
	if ((global.shaders) and (global.abilityP2 == "none")) pal_swap_set(paletteP2,1 + (flashP2 * 2),false);
	draw_sprite(iconIndex,0,hudX + camera_get_view_width(gameView) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 28,hudY);
	if ((global.shaders) and (global.abilityP2 == "none")) pal_swap_reset();
	
	draw_sprite(spr_Hud_IconGlow,0,hudX + camera_get_view_width(gameView) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 28,hudY);
	draw_sprite(spr_Hud_IconBorder,0,hudX + camera_get_view_width(gameView) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - 28,hudY);
}

//P1 Health

if (!global.pause)
{
	if (hudHpP1 < global.hpP1)
	{
		if (hudHpP1Timer == -1) hudHpP1Timer = hudHpTimerMax;
	}
	else if (hudHpP1 > global.hpP1)
	{
		hudHpP1 = global.hpP1;
	}
	
	if (hudHpP1Timer > 0)
	{
		hudHpP1Timer -= 1;
	}
	else if (hudHpP1Timer == 0)
	{
		audio_play_sound(snd_Select,0,false);
		hudHpP1 += 1;
		hudHpP1Timer = -1;
	}
	
	if (flashP1Timer > 0)
	{
		flashP1Timer -= 1;
	}
	else if (flashP1Timer == 0)
	{
		if (flashP1 == false)
		{
			flashP1 = true;
		}
		else
		{
			flashP1 = false;
		}
		flashP1Timer = flashTimerMax;
	}
	
	if (flashStopP1Timer > 0)
	{
		flashStopP1Timer -= 1;
	}
	else if (flashStopP1Timer == 0)
	{
		flashP1 = false;
		flashP1Timer = -1;
		flashStopP1Timer = -1;
	}
}

if (global.hpP1 <= 0) hudHpP1 = 0;

var barIndex = scr_Hud_Healthbar("back",global.abilityP1,global.characterP1);

for (var i = 0; i < global.hpMax; i++)
{
	if (global.shaders) pal_swap_set(paletteP1,1,false);
    draw_sprite(barIndex,0,hudX + 24 + (i * (sprite_get_width(spr_Hud_HealthbarBack_Kirby) + 1)),hudY - 5);
	if (global.shaders) pal_swap_reset();
}

hudHpP1 = clamp(hudHpP1,0,global.hpMax);

var barIndex = scr_Hud_Healthbar("normal",global.abilityP1,global.characterP1);

if (global.shaders) pal_swap_set(paletteP1,1 + (flashP1 * 2),false);
for (var i = 0; i < hudHpP1; i++)
{
	draw_sprite(barIndex,0,hudX + 24 + (i * (sprite_get_width(spr_Hud_Healthbar_Kirby) + 1)),hudY - 5);
}
if (global.shaders) pal_swap_reset();

if (instance_number(obj_Player) > 1)
{
	//P2 Health
	
	if (!global.pause)
	{
		if (hudHpP2 < global.hpP2)
		{
			if (hudHpP2Timer == -1) hudHpP2Timer = hudHpTimerMax;
		}
		else if (hudHpP2 > global.hpP2)
		{
			hudHpP2 = global.hpP2;
		}
		
		if (hudHpP2Timer > 0)
		{
			hudHpP2Timer -= 1;
		}
		else if (hudHpP2Timer == 0)
		{
			audio_play_sound(snd_Select,0,false);
			hudHpP2 += 1;
			hudHpP2Timer = -1;
		}
		
		if (flashP2Timer > 0)
		{
			flashP2Timer -= 1;
		}
		else if (flashP2Timer == 0)
		{
			if (flashP2 == false)
			{
				flashP2 = true;
			}
			else
			{
				flashP2 = false;
			}
			flashP2Timer = flashTimerMax;
		}
		
		if (flashStopP2Timer > 0)
		{
			flashStopP2Timer -= 1;
		}
		else if (flashStopP2Timer == 0)
		{
			flashP2 = false;
			flashP2Timer = -1;
			flashStopP2Timer = -1;
		}
	}
	
	if (global.hpP2 <= 0) hudHpP2 = 0;
	
	var barIndex = scr_Hud_Healthbar("back",global.abilityP2,global.characterP2);
	
	for (var i = 0; i < global.hpMax; i++)
	{
		if (global.shaders) pal_swap_set(paletteP2,1,false);
	    draw_sprite(barIndex,0,hudX + camera_get_view_width(gameView) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - sprite_get_width(spr_Hud_HealthbarBack_Kirby) - 52 - (i * (sprite_get_width(spr_Hud_HealthbarBack_Kirby) + 1)),hudY - 5);
		if (global.shaders) pal_swap_reset();
	}
	
	hudHpP2 = clamp(hudHpP2,0,global.hpMax);
	
	var barIndex = scr_Hud_Healthbar("normal",global.abilityP2,global.characterP2);
	
	if (global.shaders) pal_swap_set(paletteP2,1 + (flashP2 * 2),false);
	for (var i = 0; i < hudHpP2; i++)
	{
		draw_sprite(barIndex,0,hudX + camera_get_view_width(gameView) - (sprite_get_width(spr_Hud_Icon_Kirby) / 2) - sprite_get_width(spr_Hud_HealthbarBack_Kirby) - 52 - (i * (sprite_get_width(spr_Hud_Healthbar_Kirby) + 1)),hudY - 5);
	}
	if (global.shaders) pal_swap_reset();
}

//Lives

global.playerLives = clamp(global.playerLives,0,99);

var livesPosX = camera_get_view_x(gameView) + 1;
var livesPosY = camera_get_view_y(gameView) + 1;

if (global.shaders) pal_swap_set(paletteP1,1,false);
draw_sprite(spr_Hud_Lives,0,livesPosX,livesPosY);
if (global.shaders) pal_swap_reset();

draw_sprite(spr_Hud_Cross,0,livesPosX + 25,livesPosY + 15);

draw_sprite(spr_Hud_Numbers,floor(global.playerLives / 10),livesPosX + 34,livesPosY + 11);
draw_sprite(spr_Hud_Numbers,global.playerLives - (floor(global.playerLives / 10) * 10),livesPosX + 45,livesPosY + 11);

//Point Stars

global.pointStars = clamp(global.pointStars,0,999);

var starsPosX = camera_get_view_x(gameView) + 1;
var starsPosY = camera_get_view_y(gameView) + 26;

draw_sprite(spr_Hud_PointStars,0,starsPosX,starsPosY);
draw_sprite(spr_Hud_Cross,0,starsPosX + 25,starsPosY + 15);

draw_sprite(spr_Hud_Numbers,floor(global.pointStars / 100),starsPosX + 34,starsPosY + 11);
draw_sprite(spr_Hud_Numbers,(global.pointStars - ((floor(global.pointStars / 100) * 100))) / 10,starsPosX + 45,starsPosY + 11);
draw_sprite(spr_Hud_Numbers,global.pointStars - (floor(global.pointStars / 10) * 10),starsPosX + 56,starsPosY + 11);

//Points

var pointsSep = "";

if (global.points < 100000) pointsSep = "0";
if (global.points < 10000) pointsSep = "00";
if (global.points < 1000) pointsSep = "000";
if (global.points < 100) pointsSep = "0000";
if (global.points < 10) pointsSep = "00000";

global.points = clamp(global.points,0,999999);

//draw_text(hudX + 25,hudY + 10,pointsSep + string(global.points));