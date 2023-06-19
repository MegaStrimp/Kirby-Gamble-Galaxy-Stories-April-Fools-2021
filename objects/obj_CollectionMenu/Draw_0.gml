///@description Draw

//Variables

var xSpace = sprite_get_width(sprBackground);
var ySpace = sprite_get_height(sprBackground);

//Draw Backgrounds

if (menuSelection != "none")
{
	vsp += .15;
	if (vsp >= ySpace) vsp -= ySpace;
	hsp += .15;
	if (hsp >= xSpace) hsp -= xSpace;
	
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_rectangle(124,30,480,270,0);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	for (var i = 0; i < 5; i++)
	{
		for (var h = 0; h < 5; h++)
		{
			draw_sprite(sprBackground,0,hsp + (xSpace * (i - 1)),vsp + (ySpace * (h - 1)));
		}
	}
	
	gpu_set_alphatestenable(false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}

//Menus

switch (menuSelection)
{
	case "characters":
	selectedYCharacters = startY - (charactersSelection * 48)
	
	var charactersArrayEnd = array_length_1d(charactersText);
	
	for (charactersArray = 0; charactersArray < charactersArrayEnd; charactersArray += 1)
	{
	    if (charactersArray == charactersSelection) textAlpha = 1;
	    if ((charactersArray == charactersSelection - 1) or (charactersArray == charactersSelection + 1)) textAlpha = .60;
	    if ((charactersArray == charactersSelection - 2) or (charactersArray == charactersSelection + 2)) textAlpha = .40;
	    if ((charactersArray == charactersSelection - 3) or (charactersArray == charactersSelection + 3)) textAlpha = .20;
	    if ((charactersArray < charactersSelection - 3) or (charactersArray > charactersSelection + 3)) textAlpha = 0;
	    draw_sprite_ext(charactersText[charactersArray],0,10,yyCharacters + (charactersArray * 48),1.5,1.5,image_angle,image_blend,textAlpha);
	}
	draw_sprite(spr_Hud_Dialogue_Background_BlueCheckerboard,0,360,150)
	draw_sprite_ext(charactersPortrait[charactersSelection],0,360,150,2,2,image_angle,image_blend,image_alpha);
	draw_sprite_ext(charactersText[charactersSelection],0,145,50,2,2,image_angle,image_blend,image_alpha);
	draw_set_color(c_white);
	draw_set_font(global.bitmapKssu);
	draw_text(145,100,charactersDescription[charactersSelection]);
	
	draw_set_color(c_black);
	draw_rectangle(145,158,460,158,0);
	draw_sprite(spr_Menu_Collection_Text_Skins,0,144,161);
	break;
	
	case "abilities":
	selectedYAbilities = startY - (abilitiesSelection * 48)
	
	var abilitiesArrayEnd = array_length_1d(abilitiesText);
	
	for (abilitiesArray = 0; abilitiesArray < abilitiesArrayEnd; abilitiesArray += 1)
	{
	    if (abilitiesArray == abilitiesSelection) textAlpha = 1;
	    if ((abilitiesArray == abilitiesSelection - 1) or (abilitiesArray == abilitiesSelection + 1)) textAlpha = .60;
	    if ((abilitiesArray == abilitiesSelection - 2) or (abilitiesArray == abilitiesSelection + 2)) textAlpha = .40;
	    if ((abilitiesArray == abilitiesSelection - 3) or (abilitiesArray == abilitiesSelection + 3)) textAlpha = .20;
	    if ((abilitiesArray < abilitiesSelection - 3) or (abilitiesArray > abilitiesSelection + 3)) textAlpha = 0;
	    draw_sprite_ext(abilitiesText[abilitiesArray],0,10,yyAbilities + (abilitiesArray * 48),1.5,1.5,image_angle,image_blend,textAlpha);
	}
	draw_sprite(spr_Hud_Dialogue_Background_BlueCheckerboard,0,360,150)
	draw_sprite_ext(abilitiesIcon[abilitiesSelection],0,155,60,1,1,image_angle,image_blend,image_alpha);
	
	var playerAbility = abilitiesAbility[abilitiesSelection];
	var playerCharacter = "kirby";
	
	sprite_index = sprIdle;
	if (playerAbility == "ufo") sprite_index = sprUfoIdle;
	
	var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
	var abilityHatPalette = scr_Player_HatPalette(playerAbility,playerCharacter);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,1,false);
	if (hatBackgroundIndex != -1) draw_sprite_ext(hatBackgroundIndex,0,410,120,2,2,image_angle,image_blend,image_alpha);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
	var hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
	//if (global.shaders) pal_swap_set(paletteIndex,1,false);
	draw_sprite_ext(sprite_index,0,410,120,2,2,image_angle,image_blend,image_alpha);
	if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,image_index,410,120,2,2,image_angle,image_blend,image_alpha);
	//if (global.shaders) pal_swap_reset();
	
	var abilityHatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
	var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_set(abilityHatPalette,1,false);
	if (abilityHatIndex != -1) draw_sprite_ext(abilityHatIndex,image_index,410,120,2,2,image_angle,image_blend,image_alpha);
	if (hatFrontIndex != -1) draw_sprite_ext(hatFrontIndex,0,410,120,2,2,image_angle,image_blend,image_alpha);
	if ((global.shaders) and (abilityHatPalette != -1)) pal_swap_reset();
	
	var equipmentIndex = scr_Player_Equipment(playerAbility,playerCharacter);
	if (equipmentIndex != -1) draw_sprite_ext(equipmentIndex,image_index,410,120,2,2,image_angle,image_blend,image_alpha);
	
	draw_sprite_ext(abilitiesText[abilitiesSelection],0,190,50,2,2,image_angle,image_blend,image_alpha);
	draw_set_color(c_white);
	draw_set_font(global.bitmapKssu);
	draw_text(145,100,abilitiesDescription[abilitiesSelection]);
	
	draw_set_color(c_black);
	draw_rectangle(145,158,460,158,0);
	draw_sprite(spr_Menu_Collection_Text_Skins,0,144,161);
	break;
}

//Draw Buttons

draw_sprite(spr_Menu_Collection_Button_Characters,charactersButtonIndex,17,1);
draw_sprite(spr_Menu_Collection_Button_Abilities,abilitiesButtonIndex,108,1);
draw_sprite(spr_Menu_Collection_Button_Familiars,familiarsButtonIndex,199,1);
draw_sprite(spr_Menu_Collection_Button_Puzzles,puzzlesButtonIndex,290,1);
draw_sprite(spr_Menu_Collection_Button_Bestiary,bestiaryButtonIndex,381,1);
draw_sprite(spr_Menu_StageSelect_Hud_Back,0,480,270);