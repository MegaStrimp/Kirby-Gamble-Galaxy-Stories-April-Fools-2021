///@description Draw

//Routes

switch (movementState)
{
	case "eggGardenSample2-1":
	draw_set_color(c_black);
	draw_line(x,936,x,1194);
	break;
	
	case "eggGardenSample2-2":
	draw_set_color(c_black);
	draw_line(x,744,x,1026);
	break;
	
	case "eggGardenSample2-3":
	draw_set_color(c_black);
	draw_line(x,504,x,786);
	break;
	
	case "eggGardenSample2-4":
	draw_set_color(c_black);
	draw_line(x,240,x,522);
	break;
}

//Draw Self

draw_self();