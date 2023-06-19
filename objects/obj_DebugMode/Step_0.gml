///@description Main

//Move Snap

if (!keyboard_check(vk_shift)) move_snap(6,6);

//Visible

if (mouse_check_button_pressed(mb_middle))
{
	if (visible)
	{
		visible = false;
	}
	else
	{
		visible = true;
	}
}

//Change Room

if (keyboard_check_pressed(vk_multiply)) room_restart();
if ((room != room_last) and (keyboard_check_pressed(vk_subtract))) room_goto_next();
if ((room != room_first) and (keyboard_check_pressed(vk_divide))) room_goto_previous();
if (keyboard_check_pressed(vk_add)) game_restart();

//Change Ability

if (instance_exists(obj_Player))
{
	if (obj_Player.state != playerStates.swallow)
	{
		if (keyboard_check(vk_alt))
		{
			if (keyboard_check_pressed(ord("1")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "hammer";
			}
			if (keyboard_check_pressed(ord("2")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "bell";
			}
			if (keyboard_check_pressed(ord("3")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "water";
			}
			if (keyboard_check_pressed(ord("4")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "ultraSword";
			}
		}
		else if (keyboard_check(vk_shift))
		{
			if (keyboard_check_pressed(ord("1")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "plasma";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "gamble";
					global.abilityP1 = "none";
					global.isHelperP1 = false;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("2")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "yoyo";
			}
			if (keyboard_check_pressed(ord("3")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "wheel";
			}
			if (keyboard_check_pressed(ord("4")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "artist";
			}
			if (keyboard_check_pressed(ord("5")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "fighter";
			}
			if (keyboard_check_pressed(ord("6")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "suplex";
			}
			if (keyboard_check_pressed(ord("7")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "wing";
			}
			if (keyboard_check_pressed(ord("8")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "jet";
			}
			if (keyboard_check_pressed(ord("9")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "sword";
			}
			if (keyboard_check_pressed(ord("0")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "parasol";
			}
		}
		else
		{
			if (keyboard_check_pressed(ord("0")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "none";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "kirby";
					global.abilityP1 = "none";
					global.isHelperP1 = false;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("1")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "cutter";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "waddleDee";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("2")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "beam";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "waddleDoo";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("3")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "stone";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "brontoBurt";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("4")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "ufo";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "twizzy";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("5")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "mirror";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "tookey";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("6")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "ninja";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "sirKibble";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("7")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "bomb";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "bouncy";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("8")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "fire";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "gordo";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
			if (keyboard_check_pressed(ord("9")))
			{
				if (global.characterP1 == "kirby") global.abilityP1 = "ice";
				if (keyboard_check(vk_control))
				{
					global.characterP1 = "bloodGordo";
					global.abilityP1 = "none";
					global.isHelperP1 = true;
					obj_Player.characterSetupTimer = 0;
				}
			}
		}
	}
}

//Set Pause

if (keyboard_check_pressed(ord("H")))
{
	if (global.pause)
	{
		global.pause = false;
	}
	else
	{
		global.pause = true;
	}
}

//Change Spray Paint

var maxSprayPaint = 22;

if (keyboard_check(vk_shift))
{
	if (keyboard_check_pressed(ord("B")))
	{
		global.sprayPaintP1 += 1;
		if (instance_exists(obj_Player)) obj_Player.characterSetupTimer = 0;
	}
	if (keyboard_check_pressed(ord("N")))
	{
		global.sprayPaintP1 -= 1;
		if (instance_exists(obj_Player)) obj_Player.characterSetupTimer = 0;
	}
	
	if (global.sprayPaintP1 < 0) global.sprayPaintP1 += maxSprayPaint + 1;
	if (global.sprayPaintP1 > maxSprayPaint) global.sprayPaintP1 -= maxSprayPaint + 1;
}

//Set Cutscene

if (keyboard_check_pressed(ord("J")))
{
	if (global.cutscene)
	{
		global.cutscene = false;
	}
	else
	{
		global.cutscene = true;
	}
}

//Zoom

if (instance_exists(obj_Camera))
{
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("P")))) obj_Camera.zoom += .02;
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("L")))) obj_Camera.zoom -= .02;
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("O")))) obj_Camera.zoom = 1;
	if ((keyboard_check(vk_shift)) and (keyboard_check(ord("K")))) obj_Camera.zoom = 2;
}

//Room Speed

if ((room_speed > 10) and (keyboard_check_pressed(ord("T")))) room_speed -= 10;
if (keyboard_check_pressed(ord("Y"))) room_speed = 60;
if (keyboard_check_pressed(ord("U"))) room_speed += 10;

//Selected

if (keyboard_check_pressed(vk_numpad8))
{
	debugSelected += 1;
	debugStateSelected = 0;
	debugSpriteSelected = 0;
}
if (keyboard_check_pressed(vk_numpad2))
{
	debugSelected -= 1;
	debugStateSelected = 0;
	debugSpriteSelected = 0;
}

if (debugSelected < 0) debugSelected += (debugSelectedMax + 1);
if (debugSelected > debugSelectedMax) debugSelected -= (debugSelectedMax + 1);

switch (debugSelected)
{
	//Wall
	
	case 0:
	debugIndex = debugSpriteSelected;
	debugStateSelectedMax = 1;
	
	//Normal
	
	if (debugStateSelected == 0)
	{
		debugSprite = spr_DebugWall;
		debugSpriteSelectedMax = 17;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Collision",obj_Wall);
			debugObj.visible = true;
			debugObj.sprite_index = spr_DebugWall;
			debugObj.image_index = debugSpriteSelected;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
	}
	
	if (debugStateSelected == 1)
	{
		debugSprite = spr_DebugSlope;
		debugSpriteSelectedMax = 17;
		if (mouse_check_button_pressed(mb_left))
		{
			var debugObj = instance_create_layer(x,y,"Collision",obj_Wall);
			debugObj.visible = true;
			debugObj.slope = true;
			debugObj.hasTop = false;
			debugObj.sprite_index = spr_DebugSlope;
			debugObj.image_index = debugSpriteSelected;
			debugObj.image_xscale = debugXScale;
			debugObj.image_yscale = debugYScale;
		}
	}
	break;
	
	//Platform
	
	case 1:
	debugSprite = spr_Platform;
	debugSpriteSelectedMax = 17;
	debugIndex = debugSpriteSelected;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Collision",obj_Platform);
		debugObj.visible = true;
		debugObj.sprite_index = spr_Platform;
		debugObj.index = debugSpriteSelected;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Ladder
	
	case 2:
	debugSprite = spr_Ladder;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Collision",obj_Ladder);
		debugObj.visible = true;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Star Block
	
	case 3:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_StarBlock_Normal_Idle;
		var topWallSprite = spr_StarBlock_Normal_Top;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_StarBlock);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.topWallSprite = topWallSprite;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Breaking Wall
	
	case 4:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_BreakingWall_Normal_Idle;
		var topWallSprite = spr_BreakingWall_Normal_Top;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_BreakingWall);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.topWallSprite = topWallSprite;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Waddle Block
	
	case 5:
	debugSpriteSelectedMax = 1;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_WaddleBlock_Normal_Idle;
		var topWallSprite = spr_WaddleBlock_Normal_Top;
		break;
		
		//Fire
		
		case 1:
		var sprIdle = spr_WaddleBlock_Fire_Idle;
		var topWallSprite = spr_WaddleBlock_Fire_Top;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_WaddleBlock);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.topWallSprite = topWallSprite;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Bumper
	
	case 6:
	debugSpriteSelectedMax = 2;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Bumper_Normal;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_Bumper);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Spring
	
	case 7:
	debugSpriteSelectedMax = 1;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Spring_Normal;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_Spring);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Trampoline
	
	case 8:
	debugSpriteSelectedMax = 1;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Trampoline_Normal;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_Trampoline);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Spike
	
	case 9:
	debugSprite = spr_Spike;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_Spike);
		debugObj.visible = true;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Point Star
	
	case 10:
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 3;
	switch (debugStateSelected)
	{
		//Yellow
		
		case 0:
		debugSprite = spr_PointStar_Yellow_Idle;
		var pointStarPoints = 1;
		break;
		
		//Green
		
		case 1:
		debugSprite = spr_PointStar_Green_Idle;
		var pointStarPoints = 5;
		break;
		
		//Red
		
		case 2:
		debugSprite = spr_PointStar_Red_Idle;
		var pointStarPoints = 10;
		break;
		
		//Blue
		
		case 3:
		debugSprite = spr_PointStar_Blue_Idle;
		var pointStarPoints = 25;
		break;
	}
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_PointStar);
		debugObj.sprite_index = debugSprite;
		debugObj.pointStarPoints = pointStarPoints;
		debugObj.character = debugStateSelected;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Ability Trophy
	
	case 11:
	debugStateSelectedMax = 13;
	switch (debugStateSelected)
	{
		//Cutter
		
		case 1:
		debugSprite = spr_AbilityStar_Cutter;
		var ability = "cutter";
		break;
		
		//Beam
		
		case 2:
		debugSprite = spr_AbilityStar_Beam;
		var ability = "beam";
		break;
		
		//Stone
		
		case 3:
		debugSprite = spr_AbilityStar_Stone;
		var ability = "stone";
		break;
		
		//Ufo
		
		case 4:
		debugSprite = spr_AbilityStar_Ufo;
		var ability = "ufo";
		break;
		
		//Mirror
		
		case 5:
		debugSprite = spr_AbilityStar_Mirror;
		var ability = "mirror";
		break;
		
		//Ninja
		
		case 6:
		debugSprite = spr_AbilityStar_Ninja;
		var ability = "ninja";
		break;
		
		//Bomb
		
		case 7:
		debugSprite = spr_AbilityStar_Bomb;
		var ability = "bomb";
		break;
		
		//Fire
		
		case 8:
		debugSprite = spr_AbilityStar_Fire;
		var ability = "fire";
		break;
		
		//Ice
		
		case 9:
		debugSprite = spr_AbilityStar_Ice;
		var ability = "ice";
		break;
		
		//Plasma
		
		case 10:
		debugSprite = spr_AbilityStar_Plasma;
		var ability = "plasma";
		break;
		
		//Yoyo
		
		case 11:
		debugSprite = spr_AbilityStar_Yoyo;
		var ability = "yoyo";
		break;
		
		//Wheel
		
		case 12:
		debugSprite = spr_AbilityStar_Wheel;
		var ability = "wheel";
		break;
		
		//Artist
		
		case 13:
		debugSprite = spr_AbilityStar_Artist;
		var ability = "artist";
		break;
		
		//Fighter
		
		case 14:
		debugSprite = spr_AbilityStar_Fighter;
		var ability = "fighter";
		break;
		
		//Suplex
		
		case 15:
		debugSprite = spr_AbilityStar_Suplex;
		var ability = "suplex";
		break;
		
		//Wing
		
		case 16:
		debugSprite = spr_AbilityStar_Wing;
		var ability = "wing";
		break;
		
		//Jet
		
		case 17:
		debugSprite = spr_AbilityStar_Jet;
		var ability = "jet";
		break;
		
		//Sword
		
		case 18:
		debugSprite = spr_AbilityStar_Sword;
		var ability = "sword";
		break;
		
		//Parasol
		
		case 19:
		debugSprite = spr_AbilityStar_Parasol;
		var ability = "parasol";
		break;
		
		//Hammer
		
		case 20:
		debugSprite = spr_AbilityStar_Hammer;
		var ability = "hammer";
		break;
		
		//Bell
		
		case 21:
		debugSprite = spr_AbilityStar_Bell;
		var ability = "bell";
		break;
		
		//Water
		
		case 22:
		debugSprite = spr_AbilityStar_Water;
		var ability = "water";
		break;
		
		//Normal
		
		default:
		debugSprite = spr_AbilityStar_Normal;
		var ability = "none";
		break;
	}
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_AbilityTrophy);
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.sprItem = debugSprite;
		debugObj.ability = ability;
	}
	break;
	
	//Food
	
	case 12:
	debugSprite = spr_Food;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_Food);
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Pep Brew
	
	case 13:
	debugSprite = spr_PepBrew;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_PepBrew);
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Maxim Tomato
	
	case 14:
	debugSprite = spr_MaximTomato;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_MaximTomato);
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//1-Up
	
	case 15:
	debugSprite = spr_1Up;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_1Up);
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Background Environment
	
	case 16:
	debugSpriteSelectedMax = 9;
	switch (debugSpriteSelected)
	{
		//Normal
			
		case 0:
		debugSprite = spr_Background_ColdOdysseyPlanets;
		break;
	}
	debugIndex = debugSpriteSelected;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Collision",obj_BackgroundEnvironment);
		debugObj.sprite_index = debugSprite;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Anti-Float Area
	
	case 17:
	debugSprite = spr_24Square_Mask;
	debugSpriteSelectedMax = 0;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_AntiFloat);
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Ability Block
	
	case 18:
	debugSpriteSelectedMax = 22;
	switch (debugSpriteSelected)
	{
		case 0:
		var ability = "none";
		sprIdle = spr_AbilityBlock_Normal_Idle;
		topWallSprite = spr_AbilityBlock_Normal_Top;
		break;
		
		//Cutter
		
		case 1:
		var ability = "cutter";
		sprIdle = spr_AbilityBlock_Cutter_Idle;
		topWallSprite = spr_AbilityBlock_Cutter_Top;
		break;
		
		//Beam
		
		case 2:
		var ability = "beam";
		sprIdle = spr_AbilityBlock_Beam_Idle;
		topWallSprite = spr_AbilityBlock_Beam_Top;
		break;
		
		//Stone
		
		case 3:
		var ability = "stone";
		sprIdle = spr_AbilityBlock_Stone_Idle;
		topWallSprite = spr_AbilityBlock_Stone_Top;
		break;
		
		//Ufo
		
		case 4:
		var ability = "ufo";
		sprIdle = spr_AbilityBlock_Ufo_Idle;
		topWallSprite = spr_AbilityBlock_Ufo_Top;
		break;
		
		//Mirror
		
		case 5:
		var ability = "mirror";
		sprIdle = spr_AbilityBlock_Mirror_Idle;
		topWallSprite = spr_AbilityBlock_Mirror_Top;
		break;
		
		//Ninja
		
		case 6:
		var ability = "ninja";
		sprIdle = spr_AbilityBlock_Ninja_Idle;
		topWallSprite = spr_AbilityBlock_Ninja_Top;
		break;
		
		//Bomb
		
		case 7:
		var ability = "bomb";
		sprIdle = spr_AbilityBlock_Bomb_Idle;
		topWallSprite = spr_AbilityBlock_Bomb_Top;
		break;
		
		//Fire
		
		case 8:
		var ability = "fire";
		sprIdle = spr_AbilityBlock_Fire_Idle;
		topWallSprite = spr_AbilityBlock_Fire_Top;
		break;
		
		//Ice
		
		case 9:
		var ability = "ice";
		sprIdle = spr_AbilityBlock_Ice_Idle;
		topWallSprite = spr_AbilityBlock_Ice_Top;
		break;
		
		//Plasma
		
		case 10:
		var ability = "plasma";
		sprIdle = spr_AbilityBlock_Plasma_Idle;
		topWallSprite = spr_AbilityBlock_Plasma_Top;
		break;
		
		//Yoyo
		
		case 11:
		var ability = "yoyo";
		sprIdle = spr_AbilityBlock_Yoyo_Idle;
		topWallSprite = spr_AbilityBlock_Yoyo_Top;
		break;
		
		//Wheel
		
		case 12:
		var ability = "wheel";
		sprIdle = spr_AbilityBlock_Wheel_Idle;
		topWallSprite = spr_AbilityBlock_Wheel_Top;
		break;
		
		//Artist
		
		case 13:
		var ability = "artist";
		sprIdle = spr_AbilityBlock_Artist_Idle;
		topWallSprite = spr_AbilityBlock_Artist_Top;
		break;
		
		//Fighter
		
		case 14:
		var ability = "fighter";
		sprIdle = spr_AbilityBlock_Fighter_Idle;
		topWallSprite = spr_AbilityBlock_Fighter_Top;
		break;
		
		//Suplex
		
		case 15:
		var ability = "suplex";
		sprIdle = spr_AbilityBlock_Suplex_Idle;
		topWallSprite = spr_AbilityBlock_Suplex_Top;
		break;
		
		//Wing
		
		case 16:
		var ability = "wing";
		sprIdle = spr_AbilityBlock_Wing_Idle;
		topWallSprite = spr_AbilityBlock_Wing_Top;
		break;
		
		//Jet
		
		case 17:
		var ability = "jet";
		sprIdle = spr_AbilityBlock_Jet_Idle;
		topWallSprite = spr_AbilityBlock_Jet_Top;
		break;
		
		//Sword
		
		case 18:
		var ability = "sword";
		sprIdle = spr_AbilityBlock_Sword_Idle;
		topWallSprite = spr_AbilityBlock_Sword_Top;
		break;
		
		//Parasol
		
		case 19:
		var ability = "parasol";
		sprIdle = spr_AbilityBlock_Parasol_Idle;
		topWallSprite = spr_AbilityBlock_Parasol_Top;
		break;
		
		//Hammer
		
		case 20:
		var ability = "hammer";
		sprIdle = spr_AbilityBlock_Hammer_Idle;
		topWallSprite = spr_AbilityBlock_Hammer_Top;
		break;
		
		//Bell
		
		case 21:
		var ability = "bell";
		sprIdle = spr_AbilityBlock_Bell_Idle;
		topWallSprite = spr_AbilityBlock_Bell_Top;
		break;
		
		//Water
		
		case 22:
		var ability = "water";
		sprIdle = spr_AbilityBlock_Water_Idle;
		topWallSprite = spr_AbilityBlock_Water_Top;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Environment",obj_AbilityBlock);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.topWallSprite = topWallSprite;
		debugObj.damageType = ability;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.image_yscale = debugYScale;
	}
	break;
	
	//Waddle Dee
	
	case 19:
	debugSpriteSelectedMax = 2;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_WaddleDee_Normal_Idle;
		var sprWalk = spr_WaddleDee_Normal_Walk;
		var sprDuck = spr_WaddleDee_Normal_Duck;
		var sprJump = spr_WaddleDee_Normal_Jump;
		var sprFall = spr_WaddleDee_Normal_Fall;
		var sprSwing = spr_WaddleDee_Normal_Swing;
		var sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
		var sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
		var sprHurt = spr_WaddleDee_Normal_Hurt;
		var paletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
		break;
		
		//Egg
		
		case 1:
		var sprIdle = spr_WaddleDee_Egg_Idle;
		var sprWalk = spr_WaddleDee_Egg_Walk;
		var sprDuck = spr_WaddleDee_Egg_Duck;
		var sprJump = spr_WaddleDee_Egg_Jump;
		var sprFall = spr_WaddleDee_Egg_Fall;
		var sprSwing = spr_WaddleDee_Egg_Swing;
		var sprClimbUp = spr_WaddleDee_Egg_ClimbUp;
		var sprClimbDown = spr_WaddleDee_Egg_ClimbDown;
		var sprHurt = spr_WaddleDee_Egg_Hurt;
		var paletteIndex = spr_WaddleDee_Egg_Palette_EggedOn;
		break;
		
		//Gold
		
		case 2:
		var sprIdle = spr_WaddleDee_Gold_Idle;
		var sprWalk = spr_WaddleDee_Gold_Walk;
		var sprDuck = spr_WaddleDee_Gold_Duck;
		var sprJump = spr_WaddleDee_Gold_Jump;
		var sprFall = spr_WaddleDee_Gold_Fall;
		var sprSwing = spr_WaddleDee_Gold_Swing;
		var sprClimbUp = spr_WaddleDee_Gold_ClimbUp;
		var sprClimbDown = spr_WaddleDee_Gold_ClimbDown;
		var sprHurt = spr_WaddleDee_Gold_Hurt;
		var paletteIndex = spr_WaddleDee_Gold_Palette_HiddenTreasure;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 2;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_WaddleDee);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprDuck = sprDuck;
		debugObj.sprJump = sprJump;
		debugObj.sprFall = sprFall;
		debugObj.sprSwing = sprSwing;
		debugObj.sprClimbUp = sprClimbUp;
		debugObj.sprClimbDown = sprClimbDown;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.paletteIndex = paletteIndex;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Waddle Doo
	
	case 20:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_WaddleDoo_Normal_Idle;
		var sprWalk = spr_WaddleDoo_Normal_Walk;
		var sprDuck = spr_WaddleDoo_Normal_Duck;
		var sprJump = spr_WaddleDoo_Normal_Jump;
		var sprFall = spr_WaddleDoo_Normal_Fall;
		var sprSwing = spr_WaddleDoo_Normal_Swing;
		var sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
		var sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
		var sprCharge = spr_WaddleDoo_Normal_Charge;
		var sprAttack = spr_WaddleDoo_Normal_Attack;
		var sprFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
		var sprHurt = spr_WaddleDoo_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 2;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_WaddleDoo);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprDuck = sprDuck;
		debugObj.sprJump = sprJump;
		debugObj.sprFall = sprFall;
		debugObj.sprSwing = sprSwing;
		debugObj.sprClimbUp = sprClimbUp;
		debugObj.sprClimbDown = sprClimbDown;
		debugObj.sprCharge = sprCharge;
		debugObj.sprAttack = sprAttack;
		debugObj.sprFlashingEye = sprFlashingEye;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Bronto Burt
	
	case 21:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_BrontoBurt_Normal_Idle;
		var sprReady = spr_BrontoBurt_Normal_Ready;
		var sprWalk = spr_BrontoBurt_Normal_Walk;
		var sprFly = spr_BrontoBurt_Normal_Fly;
		var sprHurtGround = spr_BrontoBurt_Normal_HurtGround;
		var sprHurtFly = spr_BrontoBurt_Normal_HurtFly;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 2;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_BrontoBurt);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprReady = sprReady;
		debugObj.sprWalk = sprWalk;
		debugObj.sprFly = sprFly;
		debugObj.sprHurtGround = sprHurtGround;
		debugObj.sprHurtFly = sprHurtFly;
		debugObj.sprHurt = sprHurtGround;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Twizzy
	
	case 22:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Twizzy_Normal_Idle;
		var sprFly = spr_Twizzy_Normal_Fly;
		var sprHurt = spr_Twizzy_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 2;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Twizzy);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprFly = sprFly;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Tookey
	
	case 23:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Tookey_Normal_Idle;
		var sprFly = spr_Tookey_Normal_Fly;
		var sprHurt = spr_Tookey_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 2;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Tookey);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprFly = sprFly;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Sir Kibble
	
	case 24:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_SirKibble_Normal_Idle;
		var sprWalk = spr_SirKibble_Normal_Walk;
		var sprReady = spr_SirKibble_Normal_Ready;
		var sprAttack = spr_SirKibble_Normal_Attack;
		var sprCatch = spr_SirKibble_Normal_Catch;
		var sprHurt = spr_SirKibble_Normal_Hurt;
		var sprHurtAir = spr_SirKibble_Normal_HurtAir;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_SirKibble);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprReady = sprReady;
		debugObj.sprAttack = sprAttack;
		debugObj.sprCatch = sprCatch;
		debugObj.sprHurt = sprHurt;
		debugObj.sprHurtAir = sprHurtAir;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Gordo
	
	case 25:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Gordo_Normal_Idle;
		var sprHurt = "self";
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 3;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Gordo);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Blood Gordo
	
	case 26:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_BloodGordo_Normal_Idle;
		var sprHurt = "self";
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 3;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_BloodGordo);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Shotzo
	
	case 27:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Shotzo_Normal_Idle;
		var sprHurt = "self";
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Shotzo);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Mystic Doo
	
	case 28:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_MysticDoo_Normal_Idle;
		var sprAttack = spr_MysticDoo_Normal_Attack;
		var sprHurt = spr_MysticDoo_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_MysticDoo);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprAttack = sprAttack;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Bouncy
	
	case 29:
	debugSpriteSelectedMax = 1;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Bouncy_Normal_Idle;
		var sprJump = spr_Bouncy_Normal_Jump;
		var sprDuck = spr_Bouncy_Normal_Duck;
		var sprHurt = spr_Bouncy_Normal_Hurt;
		break;
		
		//Robo
		
		case 1:
		var sprIdle = spr_Bouncy_Robo_Idle;
		var sprJump = spr_Bouncy_Robo_Jump;
		var sprDuck = spr_Bouncy_Robo_Duck;
		var sprHurt = spr_Bouncy_Robo_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Bouncy);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprJump = sprJump;
		debugObj.sprDuck = sprDuck;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Mr Boogie
	
	case 30:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_MrBoogie_Normal_Idle;
		var sprWalk = spr_MrBoogie_Normal_Walk;
		var sprDuck = spr_WaddleDee_Normal_Duck;
		var sprJump = spr_WaddleDee_Normal_Jump;
		var sprFall = spr_WaddleDee_Normal_Fall;
		var sprSwing = spr_WaddleDee_Normal_Swing;
		var sprHurt = spr_MrBoogie_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_MrBoogie);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprDuck = sprDuck;
		debugObj.sprJump = sprJump;
		debugObj.sprFall = sprFall;
		debugObj.sprSwing = sprSwing;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Search
	
	case 31:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Search_Normal_Idle;
		var sprCharge = spr_Search_Normal_Charge;
		var sprHurt = spr_Search_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Search);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprCharge = sprCharge;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Hive Drone
	
	case 32:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_HiveDrone_Normal_Idle;
		var sprAttack = spr_HiveDrone_Normal_Attack;
		var sprDrop = spr_HiveDrone_Normal_Drop;
		var sprHurt = spr_HiveDrone_Normal_Hurt;
		var sprWings = spr_HiveDrone_Normal_Wings;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_HiveDrone);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprAttack = sprAttack;
		debugObj.sprDrop = sprDrop;
		debugObj.sprHurt = sprHurt;
		debugObj.sprWings = sprWings;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Wapod
	
	case 33:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprPot = spr_Wapod_Normal_Pot;
		var sprHurt = "self";
		var sprGhostSpawn = spr_Wapod_Normal_Spawn;
		var sprGhostIdle = spr_Wapod_Normal_Idle;
		var sprGhostHurt = spr_Wapod_Normal_Hurt;
		break;
	}
	debugSprite = sprPot;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Wapod);
		debugObj.character = debugSpriteSelected;
		debugObj.sprPot = sprPot;
		debugObj.sprHurt = sprHurt;
		debugObj.sprGhostSpawn = sprGhostSpawn;
		debugObj.sprGhostIdle = sprGhostIdle;
		debugObj.sprGhostHurt = sprGhostHurt;
		debugObj.sprite_index = sprPot;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Flamebelch
	
	case 34:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Flamebelch_Normal_Idle;
		var sprWalk = spr_Flamebelch_Normal_Walk;
		var sprDuck = spr_WaddleDee_Normal_Duck;
		var sprJump = spr_WaddleDee_Normal_Jump;
		var sprFall = spr_WaddleDee_Normal_Fall;
		var sprSwing = spr_WaddleDee_Normal_Swing;
		var sprHurt = spr_Flamebelch_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Flamebelch);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprDuck = sprDuck;
		debugObj.sprJump = sprJump;
		debugObj.sprFall = sprFall;
		debugObj.sprSwing = sprSwing;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Cappy
	
	case 35:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdleL = spr_Cappy_Normal_IdleL;
		var sprIdleR = spr_Cappy_Normal_IdleR;
		var sprShroomIdle = spr_Cappy_Normal_ShroomIdle;
		var sprHurt = spr_Cappy_Normal_Hurt;
		var sprShroom = spr_Cappy_Normal_Shroom;
		break;
	}
	debugSprite = sprIdleL;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Cappy);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdleL = sprIdleL;
		debugObj.sprIdleR = sprIdleR;
		debugObj.sprShroomIdle = sprShroomIdle;
		debugObj.sprHurt = sprHurt;
		debugObj.sprShroom = sprShroom;
		debugObj.sprite_index = sprIdleL;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Broom Hatter
	
	case 36:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_BroomHatter_Normal_Idle;
		var sprWalk = spr_BroomHatter_Normal_Walk;
		var sprHurt = spr_BroomHatter_Normal_Inhale;
		var sprHurtNormal = spr_BroomHatter_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_BroomHatter);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprHurt = sprHurt;
		debugObj.sprHurtNormal = sprHurtNormal;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Coconut
	
	case 37:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Coconut_Normal_Idle;
		var sprHurt = "self";
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 0;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Coconut);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Noddy
	
	case 38:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Noddy_Normal_Idle;
		var sprWalk = spr_Noddy_Normal_Walk;
		var sprSleep = spr_Noddy_Normal_Sleep;
		var sprHurt = spr_Noddy_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Noddy);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprSleep = sprSleep;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Blado
	
	case 39:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_Blado_Normal_Idle;
		var sprHurt = "self";
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 2;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_Blado);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
	
	//Mr Boogie
	
	case 40:
	debugSpriteSelectedMax = 0;
	switch (debugSpriteSelected)
	{
		//Normal
		
		case 0:
		var sprIdle = spr_MrBoogie_Normal_Idle;
		var sprWalk = spr_MrBoogie_Normal_Walk;
		var sprDuck = spr_WaddleDee_Normal_Duck;
		var sprJump = spr_WaddleDee_Normal_Jump;
		var sprFall = spr_WaddleDee_Normal_Fall;
		var sprSwing = spr_WaddleDee_Normal_Swing;
		var sprHurt = spr_MrBoogie_Normal_Hurt;
		break;
	}
	debugSprite = sprIdle;
	debugIndex = 0;
	debugStateSelectedMax = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		var debugObj = instance_create_layer(x,y,"Enemies",obj_MrBoogie);
		debugObj.character = debugSpriteSelected;
		debugObj.sprIdle = sprIdle;
		debugObj.sprWalk = sprWalk;
		debugObj.sprDuck = sprDuck;
		debugObj.sprJump = sprJump;
		debugObj.sprFall = sprFall;
		debugObj.sprSwing = sprSwing;
		debugObj.sprHurt = sprHurt;
		debugObj.sprite_index = sprIdle;
		debugObj.image_xscale = debugXScale;
		debugObj.dirX = debugXScale;
		debugObj.walkDirX = debugXScale;
		debugObj.image_yscale = debugYScale;
		debugObj.dirY = debugYScale;
		debugObj.walkDirY = debugYScale;
		debugObj.state = debugStateSelected;
	}
	break;
}

if (!keyboard_check(vk_shift))
{
	//Sprites
	
	if (keyboard_check_pressed(ord("W")))
	{
		debugSpriteSelected += 1;
	}
	if (keyboard_check_pressed(ord("S")))
	{
		debugSpriteSelected -= 1;
	}
	
	if (debugSpriteSelected < 0) debugSpriteSelected += (debugSpriteSelectedMax + 1);
	if (debugSpriteSelected > debugSpriteSelectedMax) debugSpriteSelected -= (debugSpriteSelectedMax + 1);
	if (debugSpriteSelectedMax == 0) debugSpriteSelected = 0;
	
	//States
	
	if (keyboard_check_pressed(ord("A")))
	{
		debugStateSelected -= 1;
	}
	if (keyboard_check_pressed(ord("D")))
	{
		debugStateSelected += 1;
	}
	
	if (debugStateSelected < 0) debugStateSelected += (debugStateSelectedMax + 1);
	if (debugStateSelected > debugStateSelectedMax) debugStateSelected -= (debugStateSelectedMax + 1);
	if (debugStateSelectedMax == 0) debugStateSelected = 0;
}
else
{
	//Directions
	
	if ((keyboard_check_pressed(ord("A"))) or (keyboard_check_pressed(ord("D"))))
	{
		if (debugXScale == 1)
		{
			debugXScale = -1;
		}
		else
		{
			debugXScale = 1;
		}
	}
	if ((keyboard_check_pressed(ord("W"))) or (keyboard_check_pressed(ord("S"))))
	{
		if (debugYScale == 1)
		{
			debugYScale = -1;
		}
		else
		{
			debugYScale = 1;
		}
	}
}