///@description Room Creation Code

//Variables

global.discordDetailText = "City of the Future";
global.discordLargeImage = "icon";

//Stage Number

global.stageNumber = 3;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_VParallax1"),1.25);
layer_background_yscale(layer_background_get_id("Background_VParallax1"),1.25);

//Music

if (!audio_is_playing(mus_AF_Tension))
{
	audio_stop_all();
	audio_play_sound(mus_AF_Tension,0,true);
}