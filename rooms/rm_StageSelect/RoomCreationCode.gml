///@description Room Creation Code

//Variables

global.discordDetailText = "Level Select";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Menu1))
{
	audio_stop_all();
	audio_play_sound(mus_Menu1,0,true);
}

//Camera

if (instance_exists(obj_Camera)) obj_Camera.state = "worldMap";