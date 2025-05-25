///@description Room Creation Code

//Variables

global.discordDetailText = "The Future";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_AF_Select))
{
	audio_stop_all();
	audio_play_sound(mus_AF_Select,0,true);
}