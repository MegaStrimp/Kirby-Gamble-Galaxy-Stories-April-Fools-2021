///@description Main

if (!global.cutscene)
{
	//Movement
	
	if (alphaSwitch)
	{
		alpha += .002;
	}
	else
	{
		yy -= .4;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		audio_stop_all();
		audio_play_sound(mus_AF_Fredbear,0,false);
		audio_play_sound(mus_AF_FredbearNostalgia,0,false);
		var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
		dialogue.owner = id;
		dialogue.text[0] = "And that's how I met your mother";
		dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Fredbear;
		dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
		dialogue.sprPortrait[0] = spr_Fredbear;
		dialogue.textSound[0] = -1;
		dialogue.textFont = fnt_AlienSolid;
		dialogue.textSpeed = 35;
		alphaSwitch = true;
		destroyTimer = -1;
	}
}