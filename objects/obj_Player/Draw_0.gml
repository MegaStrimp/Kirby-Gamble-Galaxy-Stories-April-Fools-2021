///@description Draw

//Variables

var playerAbility = global.abilityP1;
if (player == 1) playerAbility = global.abilityP2;

var playerCharacter = global.characterP1;
if (player == 1) playerCharacter = global.characterP2;

//Shake

if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

var drawShakeX = irandom_range(-shakeX,shakeX);

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}

var drawShakeY = irandom_range(-shakeY,shakeY);

//Black Alpha Box

if (blackAlphaBox)
{
	draw_set_alpha(.25);
	draw_set_color(c_black);
	draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
	draw_set_alpha(1);
}

//Draw Self

var paletteFlash = 1;
if ((!death) and (invincibleFlash))
{
	if (hurt)
	{
		paletteFlash = 3;
	}
	else
	{
		paletteFlash = 2;
	}
}

var hatAnim = image_index;
if ((playerAbility == "fire") or (playerAbility == "plasma")) hatAnim = hatBackgroundImageIndex;

var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
var abilityHatPalette = scr_Player_HatPalette(playerAbility,playerCharacter);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

var hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_set(paletteIndex,paletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (waddleDooEyeFlash) draw_sprite_ext(sprWaddleDooFlashingEye,0,x - (1 * dir),y - 11,image_xscale,image_yscale,imageAngle,image_blend,image_alpha);
if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (((sprite_index != sprStoneAttack1Common) and (sprite_index != sprStoneAttack1Uncommon) and (sprite_index != sprStoneAttack1Rare)) or (sprite_index = (sprStoneAttack1Common) and (image_index = 0)))) pal_swap_reset();

var abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,paletteFlash,false);
if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,hatAnim,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();

var equipmentIndex = scr_Player_Equipment(playerAbility,playerCharacter);
var equipmentDir = image_xscale;
if (playerAbility == "ufo") equipmentDir = abs(image_xscale);
if (equipmentIndex != -1) draw_sprite_ext(equipmentIndex,image_index,x + drawShakeX,y + drawShakeY,equipmentDir * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);

//Mirror Charge Bar

if ((playerAbility == "mirror") and (mirrorShieldHp <= 0))
{
	draw_set_color(c_black);
	draw_rectangle(x - 12,y - 28,x + 13,y - 24,false);
	draw_set_color(c_dkgray);
	draw_rectangle(x - 11,y - 27,x + 12,y - 25,false);
	draw_set_color(c_aqua);
	draw_rectangle(x - 11,y - 27,x - 11 + (23 * (1 - (mirrorShieldTimer / mirrorShieldTimerMax))),y - 25,false);
}

//Debug Text
/*
draw_set_font(fnt_DebugConsole);
draw_set_color(c_black);

draw_text(x,y - 12,string(ateCappyShroom));