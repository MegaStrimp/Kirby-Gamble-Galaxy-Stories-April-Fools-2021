///@description Draw

if (alpha == 1)
{
	global.roomPrevious = room;
    room_goto(targetRoom);
    fade = -1;
}

//Destroy

if ((alpha == 0) and (fade == -1))
{
    instance_destroy();
}

//Draw Rectangle

if (((pausable) and (!global.pause)) or (!pausable)) alpha = clamp(alpha + (fade * alphaSpd),0,1);

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
draw_set_alpha(1);