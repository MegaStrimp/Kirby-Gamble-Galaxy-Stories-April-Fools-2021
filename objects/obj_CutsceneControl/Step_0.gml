///@description Main

if (!global.pause)
{
	//States
	
	if (active)
	{
		switch (state)
		{
			case 0:
			active = false;
			
			switch (stateEx)
			{
				case 0:
				if (stateExTimer == -1) stateExTimer = 15;
				break;
				
				case 1:
				if (stateExTimer == -1) stateExTimer = 45;
				if ((instance_exists(obj_Camera)) and (instance_exists(obj_Spawner_MysticDoo)))
				{
					obj_Camera.cutsceneSpd = .05;
					obj_Camera.objectFollowing = obj_Spawner_MysticDoo;
				}
				else
				{
					destroy = true;
				}
				break;
				
				case 2:
				if (!instance_exists(obj_Dialogue))
				{
					var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
					dialogue.sprTextbox = spr_Hud_Dialogue_Textbox_Normal;
					dialogue.sprBackground = spr_Hud_Dialogue_Background_YellowCard;
					dialogue.sprPortrait = spr_Hud_Dialogue_Portrait_Gamble_Normal;
					dialogue.text = "See that purple enemy over there? Try using your\nINHALE power on it.";
					dialogue.owner = id;
					dialogue.textSound = snd_TextGamble;
					if (dialogue.destroyTimer == -1) dialogue.destroyTimer = 300;
				}
				break;
				
				case 3:
				if (!instance_exists(obj_Dialogue))
				{
					var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
					dialogue.sprTextbox = spr_Hud_Dialogue_Textbox_Normal;
					dialogue.sprBackground = spr_Hud_Dialogue_Background_YellowCard;
					dialogue.sprPortrait = spr_Hud_Dialogue_Portrait_Gamble_Normal;
					dialogue.text = "It could have a flux-enhanced ability that you may\nfind useful.";
					dialogue.owner = id;
					dialogue.textSound = snd_TextGamble;
					if (dialogue.destroyTimer == -1) dialogue.destroyTimer = 300;
				}
				break;
				
				case 4:
				if (!instance_exists(obj_Dialogue))
				{
					var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
					dialogue.sprTextbox = spr_Hud_Dialogue_Textbox_Normal;
					dialogue.sprBackground = spr_Hud_Dialogue_Background_YellowCard;
					dialogue.sprPortrait = spr_Hud_Dialogue_Portrait_Gamble_Normal;
					dialogue.text = "Don't be scared, it will not have a bad effect\non you!";
					dialogue.owner = id;
					dialogue.textSound = snd_TextGamble;
					if (dialogue.destroyTimer == -1) dialogue.destroyTimer = 300;
				}
				break;
				
				case 5:
				if (!instance_exists(obj_Dialogue))
				{
					var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
					dialogue.sprTextbox = spr_Hud_Dialogue_Textbox_Normal;
					dialogue.sprBackground = spr_Hud_Dialogue_Background_StarryChild;
					dialogue.sprPortrait = spr_Hud_Dialogue_Portrait_Kirby_Jolly;
					dialogue.text = "...";
					dialogue.owner = id;
					dialogue.textSound = -1;
					if (dialogue.destroyTimer == -1) dialogue.destroyTimer = 60;
				}
				break;
				
				case 6:
				if (stateExTimer == -1) stateExTimer = 60;
				if ((instance_exists(obj_Camera)) and (instance_exists(obj_Player)))
				{
					obj_Camera.cutsceneSpd = .05;
					obj_Camera.objectFollowing = obj_Player;
				}
				else
				{
					destroy = true;
				}
				break;
				
				case 7:
				destroy = true;
				break;
			}
			break;
			
			case "aprilFoolsHouse":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 90;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "You";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_ShadowGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "How dare you come back after all those\nyears...";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_ShadowGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "As if nothing happened...";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_ShadowGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "POYO";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[3] = snd_Jump;
				dialogue.text[4] = "This is all your fault!";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_ShadowGamble_Normal;
				dialogue.textSound[4] = snd_TextGamble;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "aprilFoolsHouseEnd":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 150;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "So you really do not remember, huh?";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "It was a thousand years ago";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "You left me in Green Greens";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "Cosmic Fluxbender defeated us and\nconquered the galaxy!";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.text[4] = "PYOP";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[4] = snd_Jump;
				dialogue.text[5] = "You are from the past??";
				dialogue.sprTextbox[5] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[5] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[5] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[5] = snd_TextGamble;
				dialogue.text[6] = "It's not possible!";
				dialogue.sprTextbox[6] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[6] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[6] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[6] = snd_TextGamble;
				dialogue.text[7] = "PPOP";
				dialogue.sprTextbox[7] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[7] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[7] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[7] = snd_Jump;
				dialogue.text[8] = "You got teleported here by\nTime Shenanigans?";
				dialogue.sprTextbox[8] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[8] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[8] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[8] = snd_TextGamble;
				dialogue.text[9] = "Then we must go find Fluxbender!";
				dialogue.sprTextbox[9] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[9] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[9] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[9] = snd_TextGamble;
				dialogue.text[10] = "Because that's what the plot says!";
				dialogue.sprTextbox[10] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[10] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[10] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[10] = snd_TextGamble;
				dialogue.text[11] = "POPO";
				dialogue.sprTextbox[11] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[11] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[11] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[11] = snd_Jump;
				dialogue.text[12] = "What do you mean we haven't\nmet before?";
				dialogue.sprTextbox[12] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[12] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[12] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[12] = snd_TextGamble;
				dialogue.text[13] = "Stop causing plotholes";
				dialogue.sprTextbox[13] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[13] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[13] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[13] = snd_TextGamble;
				dialogue.text[14] = "POYOP";
				dialogue.sprTextbox[14] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[14] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[14] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[14] = snd_Jump;
				dialogue.text[15] = "Anyway, I can show you where the\nFluxbender is";
				dialogue.sprTextbox[15] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[15] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[15] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[15] = snd_TextGamble;
				dialogue.text[16] = "Or as he is called;";
				dialogue.sprTextbox[16] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[16] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[16] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[16] = snd_TextGamble;
				dialogue.text[17] = "GOLDENANGEL";
				dialogue.sprTextbox[17] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[17] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[17] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[17] = snd_TextGamble;
				dialogue.text[18] = "Let's go to Goldenangel Castle!";
				dialogue.sprTextbox[18] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[18] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[18] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[18] = snd_TextGamble;
				dialogue.targetRoom = rm_AprilFools_Select;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "cityIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "This is what the future looks\nlike...";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Murder, malice and art thievery\nall over the place";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "Trust me. Everything will go better\nwhen the Fluxbender is defeated";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "Our Fluxbender candidate here is;\nKaabi Dollars";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "kaabiIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "It's you";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_AnteMatter;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_Kaabi_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Kirby";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_AnteMatter;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_Kaabi_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "P";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[2] = snd_NinjaKnife;
				dialogue.text[3] = "You finally reached the truth.\nI am the Cosmic Fluxbender";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_AnteMatter;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_Kaabi_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.text[4] = "You will have to beat me in a\nrap battle!";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_AnteMatter;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_Kaabi_Normal;
				dialogue.textSound[4] = snd_TextGamble;
				dialogue.targetRoom = rm_AprilFools_CityBoss;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "kaabiEnd":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "What";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Let's just";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "Get out of here";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "POYO";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[3] = snd_Jump;
				dialogue.text[4] = "Kirby no that's not the\nFluxbender";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[4] = snd_TextGamble;
				dialogue.text[5] = "PWEOWR";
				dialogue.sprTextbox[5] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[5] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[5] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[5] = snd_Jump;
				dialogue.text[6] = "No";
				dialogue.sprTextbox[6] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[6] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[6] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[6] = snd_TextGamble;
				dialogue.text[7] = "POYO";
				dialogue.sprTextbox[7] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[7] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[7] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[7] = snd_Jump;
				dialogue.text[8] = "No";
				dialogue.sprTextbox[8] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[8] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[8] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[8] = snd_TextGamble;
				dialogue.text[9] = "POYO";
				dialogue.sprTextbox[9] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[9] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[9] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[9] = snd_Jump;
				dialogue.text[10] = "No";
				dialogue.sprTextbox[10] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[10] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[10] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[10] = snd_TextGamble;
				dialogue.text[11] = "POYO";
				dialogue.sprTextbox[11] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[11] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[11] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[11] = snd_Jump;
				dialogue.text[12] = "No";
				dialogue.sprTextbox[12] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[12] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[12] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[12] = snd_TextGamble;
				dialogue.text[13] = "POYO";
				dialogue.sprTextbox[13] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[13] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[13] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[13] = snd_Jump;
				dialogue.text[14] = "No";
				dialogue.sprTextbox[14] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[14] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[14] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[14] = snd_TextGamble;
				dialogue.text[15] = "POYOP";
				dialogue.sprTextbox[15] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[15] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[15] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[15] = snd_Jump;
				dialogue.text[16] = "No";
				dialogue.sprTextbox[16] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[16] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[16] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[16] = snd_TextGamble;
				dialogue.text[17] = "Fine Jesus #@&%ing Christ\nI'm sick of this #&%$ already";
				dialogue.sprTextbox[17] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[17] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[17] = spr_Hud_Dialogue_Portrait_Kirby_Normal;
				dialogue.textSound[17] = snd_Jump;
				dialogue.text[18] = "ğ";
				dialogue.sprTextbox[18] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[18] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[18] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[18] = snd_TextGamble;
				dialogue.targetRoom = rm_AprilFools_Select;
				dialogue.stopsCutscene = true;
				global.beatKaabi = true;
				destroy = true;
				break;
			}
			break;
			
			case "snowIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "What does this have to do with\nKirby?";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Whoever designed this stage should burn\nin hellfire";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "Anyway";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "Our Fluxbender candidate here is;\nFrosty The Snowgentleman";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "frostyIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "I AM FROSTY THE SNOWGENTLEMAN";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_Frosty_Normal;
				dialogue.textSound[0] = snd_AirPuff;
				dialogue.text[1] = "DEFEAT ME IF YOU CAN HAHA";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_StarryChild;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_Frosty_Normal;
				dialogue.textSound[1] = snd_AirPuff;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "frostyEnd":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 210;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "That definitely isn't the Fluxbender";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Like";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "I couldn't be more sure";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.targetRoom = rm_AprilFools_Select;
				dialogue.stopsCutscene = true;
				global.beatFrosty = true;
				destroy = true;
				break;
			}
			break;
			
			case "candyIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "I'm hungry";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "I really am";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "Once we finish this for good,\nlet's go get a pizza";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "Our Fluxbender candidate here is;\nJelly Marx";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "jellyMarxIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "Well this level was short";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Here is Jelly Ma-";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "Oh that's big";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "HAHAHAHAH COME AND CATCH ME";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_BlueCheckerboard;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_JellyMarx_Normal;
				dialogue.textSound[3] = snd_Beam;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "jellyMarxEnd":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 210;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "This isn't it either";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "Where is this damn Fluxbender???";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "I've ruined my life,";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.text[3] = "my wife,";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.text[4] = "ki- let's just get the heck out of here";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[4] = snd_TextGamble;
				dialogue.targetRoom = rm_AprilFools_Select;
				dialogue.stopsCutscene = true;
				global.beatMarx = true;
				destroy = true;
				break;
			}
			break;
			
			case "discordIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "This is the end";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "We must get to the top of Discourse Tower-";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "-and find Goldenangel!";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_TextGamble;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "goldenangelIntro":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "THAT'S HIM";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[0] = snd_TextGamble;
				dialogue.text[1] = "GOLDENANGEL";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[1] = snd_TextGamble;
				dialogue.text[2] = "Kirby, I gave you an HP\nbuff";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[2] = snd_NinjaKnife;
				dialogue.text[3] = "You'll need it";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_NinjaKnife;
				dialogue.text[4] = "Look what we have here";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_Goldenangel_Normal;
				dialogue.textSound[4] = snd_Fire;
				dialogue.text[5] = "Gamble...";
				dialogue.sprTextbox[5] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[5] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[5] = spr_Hud_Dialogue_Portrait_Goldenangel_Normal;
				dialogue.textSound[5] = snd_Fire;
				dialogue.text[6] = "My old friend...";
				dialogue.sprTextbox[6] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[6] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[6] = spr_Hud_Dialogue_Portrait_Goldenangel_Normal;
				dialogue.textSound[6] = snd_Fire;
				dialogue.text[7] = "DIEEEEEEEEEEEEEEEEEEEEEEEE";
				dialogue.sprTextbox[7] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[7] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[7] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[7] = snd_NinjaKnife;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
			
			case "goldenangelEnd":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 210;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "Oh nooo";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_Goldenangel_Normal;
				dialogue.textSound[0] = snd_Fire;
				dialogue.text[1] = "I'm defeated";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_Goldenangel_Normal;
				dialogue.textSound[1] = snd_Fire;
				dialogue.text[2] = "I HATE YOU GAMBLE!";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_YellowCard;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_Goldenangel_Normal;
				dialogue.textSound[2] = snd_Fire;
				dialogue.text[3] = "We did it Kirby";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[3] = snd_TextGamble;
				dialogue.text[4] = "We saved the unive-";
				dialogue.sprTextbox[4] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[4] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[4] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[4] = snd_TextGamble;
				dialogue.text[5] = "Wait";
				dialogue.sprTextbox[5] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[5] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[5] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[5] = snd_TextGamble;
				dialogue.text[6] = "Nothing...";
				dialogue.sprTextbox[6] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[6] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[6] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[6] = snd_TextGamble;
				dialogue.text[7] = "Nothing has changed";
				dialogue.sprTextbox[7] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[7] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[7] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[7] = snd_TextGamble;
				dialogue.text[8] = "What's happening?";
				dialogue.sprTextbox[8] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[8] = spr_Hud_Dialogue_Background_TealDiamond;
				dialogue.sprPortrait[8] = spr_Hud_Dialogue_Portrait_OldGamble_Normal;
				dialogue.textSound[8] = snd_TextGamble;
				dialogue.targetRoom = rm_AprilFools_Credits;
				dialogue.stopsCutscene = true;
				global.beatMarx = true;
				destroy = true;
				break;
			}
			break;
			
			case "credits":
			switch (stateEx)
			{
				case 0:
				global.cutscene = true;
				if (stateExTimer == -1) stateExTimer = 60;
				break;
				
				case 1:
				var dialogue = instance_create_depth(0,0,-999,obj_Dialogue);
				dialogue.owner = id;
				dialogue.text[0] = "YOU FOOLS";
				dialogue.sprTextbox[0] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[0] = spr_Hud_Dialogue_Background_BlueCheckerboard;
				dialogue.sprPortrait[0] = spr_Hud_Dialogue_Portrait_JellyMarx_Normal;
				dialogue.textSound[0] = snd_Beam;
				dialogue.text[1] = "While you and your card buddy are\nstuck here forever,";
				dialogue.sprTextbox[1] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[1] = spr_Hud_Dialogue_Background_BlueCheckerboard;
				dialogue.sprPortrait[1] = spr_Hud_Dialogue_Portrait_JellyMarx_Normal;
				dialogue.textSound[1] = snd_Beam;
				dialogue.text[2] = "I'm gonna conquer every universe\nand timeline there is!";
				dialogue.sprTextbox[2] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[2] = spr_Hud_Dialogue_Background_BlueCheckerboard;
				dialogue.sprPortrait[2] = spr_Hud_Dialogue_Portrait_JellyMarx_Normal;
				dialogue.textSound[2] = snd_Beam;
				dialogue.text[3] = "HEHAHOHAHE";
				dialogue.sprTextbox[3] = spr_Hud_Dialogue_Textbox_Normal;
				dialogue.sprBackground[3] = spr_Hud_Dialogue_Background_BlueCheckerboard;
				dialogue.sprPortrait[3] = spr_Hud_Dialogue_Portrait_JellyMarx_Normal;
				dialogue.textSound[3] = snd_Beam;
				dialogue.stopsCutscene = true;
				destroy = true;
				break;
			}
			break;
		}
	}
	
	//State Ex Timer
	
	if (stateExTimer > 0)
	{
		stateExTimer -= 1;
	}
	else if (stateExTimer == 0)
	{
		stateEx++;
		active = true;
	    stateExTimer = -1;
	}
	
	//Destroy
	
	if (destroy)
	{
		if (stopsCutscene) global.cutscene = false;
		instance_destroy();
	}
}