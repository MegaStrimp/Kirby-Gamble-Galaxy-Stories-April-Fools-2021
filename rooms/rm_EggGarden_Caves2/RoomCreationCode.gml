///@description Room Creation Code

//Variables

global.discordDetailText = "Working On A Beta";
global.discordLargeImage = "icon";

//Stage Number

global.stageNumber = 4;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_EggGarden_Caves))
{
	audio_stop_all();
	audio_play_sound(mus_EggGarden_Caves,0,true);
}