///@description Room Creation Code

//Variables

global.discordDetailText = "Main Menu";
global.discordLargeImage = "icon";

//Music

if (!audio_is_playing(mus_Menu1))
{
	audio_stop_all();
	audio_play_sound(mus_Menu1,0,true);
}