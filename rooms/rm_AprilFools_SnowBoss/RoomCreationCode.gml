///@description Room Creation Code

//Variables

global.discordDetailText = "VS. Frosty the Snowgentleman";
global.discordLargeImage = "icon";

//Stage Number

global.stageNumber = 3;
global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_AF_Boss))
{
	audio_stop_all();
	audio_play_sound(mus_AF_Boss,0,true);
}