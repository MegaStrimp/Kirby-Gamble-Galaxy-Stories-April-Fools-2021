///@description Draw

//Draw Black Square

draw_set_color(c_black);
draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),(camera_get_view_x(gameView) + camera_get_view_width(gameView)),(camera_get_view_y(gameView) + camera_get_view_height(gameView)),false);

//Draw Text

draw_sprite(spr_Hud_Hideo,textIndex,(camera_get_view_x(gameView) + camera_get_view_width(gameView)) - 4,camera_get_view_y(gameView) + 4);