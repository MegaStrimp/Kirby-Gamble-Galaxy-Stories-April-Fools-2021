///@description Room Creation Code

//Variables

global.discordDetailText = "Candy Gilmore";
global.discordLargeImage = "icon";

//Stage Number

global.stageNumber = 3;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_AF_Candy))
{
	audio_stop_all();
	audio_play_sound(mus_AF_Candy,0,true);
}