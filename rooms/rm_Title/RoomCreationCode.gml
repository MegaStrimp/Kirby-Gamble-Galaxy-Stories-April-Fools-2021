///@description Room Creation Code

//Variables

global.discordDetailText = "Title Screen";
global.discordLargeImage = "icon";

//Music

if (!audio_is_playing(mus_Title1))
{
	audio_stop_all();
	audio_play_sound(mus_Title1,0,false);
}