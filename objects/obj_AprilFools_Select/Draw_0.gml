///@description Draw

//Draw Buttons

var xx = 0;
var yy = 0;

switch (selection)
{
	case "kaabi":
	xx = 154;
	yy = 97;
	break;
	
	case "frosty":
	xx = 218;
	yy = 161;
	break;
	
	case "marx":
	xx = 282;
	yy = 97;
	break;
	
	case "goldenangel":
	xx = 218;
	yy = 33;
	break;
	
	default:
	xx = 218;
	yy = 97;
	break;
}

draw_sprite(spr_AprilFools_MenuBorder,0,xx,yy);

draw_set_color(c_black);

if (global.beatKaabi) draw_rectangle(160,103,191,134,false);
if (global.beatFrosty) draw_rectangle(224,167,255,198,false);
if (global.beatMarx) draw_rectangle(288,103,319,134,false);
if !((global.beatKaabi) and (global.beatFrosty) and (global.beatMarx))
{
	draw_set_color(make_color_rgb(0,112,236));
	draw_rectangle(218,78,262,96,false);
	draw_rectangle(224,39,255,70,false);
}