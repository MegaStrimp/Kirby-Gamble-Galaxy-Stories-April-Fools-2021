///@description Step

//Arrow Timer

if (arrowTimer > 0)
{
	arrowTimer -= 1;
}
else if (arrowTimer == 0)
{
	var aa = irandom_range(0,7);
	var xx = 0;
	var index = 0;
	switch (aa)
	{
		case 0:
		index = 0;
		xx = 31;
		break;
		
		case 1:
		index = 1;
		xx = 67;
		break;
		
		case 2:
		index = 2;
		xx = 103;
		break;
		
		case 3:
		index = 3;
		xx = 140;
		break;
		
		case 4:
		index = 0;
		xx = 340;
		break;
		
		case 5:
		index = 1;
		xx = 377;
		break;
		
		case 6:
		index = 2;
		xx = 413;
		break;
		
		case 7:
		index = 3;
		xx = 449;
		break;
	}
	var arrow = instance_create_depth(xx,500,depth - 1,obj_FridayArrow);
	arrow.image_index = index;
	arrowTimer = arrowTimerMax;
}

//Arrow Timer

if (dialogueTimer > 0)
{
	dialogueTimer -= 1;
}
else if (dialogueTimer == 0)
{
	var cutscene = instance_create_depth(x,y,depth,obj_CutsceneControl);
	cutscene.state = "kaabiEnd";
	dialogueTimer = -1;
}