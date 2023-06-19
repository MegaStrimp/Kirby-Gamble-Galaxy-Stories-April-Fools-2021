///@description Destroy Objects Outside The View

function scr_DestroyOutsideView()
{
	//Variables
	
	var x1 = camera_get_view_x(gameView) - 64;
	var y1 = camera_get_view_y(gameView) - 64;
	var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + 64;
	var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + 64;
	
	//Destroy
	
	if (!point_in_rectangle(x,y,x1,y1,x2,y2))
	{
	    instance_destroy();
	}
}