///@description Room Creation Code

//Variables

global.discordDetailText = "VS. Goldenangel";
global.discordLargeImage = "icon";

//Stage Number

global.stageNumber = 3;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_VParallax1"),1.25);
layer_background_yscale(layer_background_get_id("Background_VParallax1"),1.25);

//Music

if (!audio_is_playing(mus_AF_Goldenangel))
{
	audio_stop_all();
	audio_play_sound(mus_AF_Goldenangel,0,true);
}

global.hpMax = 50;
global.hpP1 = global.hpMax;