///@description Room Creation Code

//Variables

global.discordDetailText = "Game Over";
global.discordLargeImage = "icon";

//Backgrounds

layer_background_xscale(layer_background_get_id("Stars"),.5);
layer_background_yscale(layer_background_get_id("Stars"),.5);
layer_background_xscale(layer_background_get_id("Light"),.5);
layer_background_yscale(layer_background_get_id("Light"),.5);
layer_background_xscale(layer_background_get_id("Floor"),.5);
layer_background_yscale(layer_background_get_id("Floor"),.5);

//Music

if (!audio_is_playing(mus_GameOver))
{
	audio_stop_all();
	audio_play_sound(mus_GameOver,0,false);
}