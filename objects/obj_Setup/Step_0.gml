///@description Main

//Debug Mode

if (global.debug)
{
	if (!instance_exists(obj_DebugMode)) instance_create_depth(x,y,-999,obj_DebugMode);
	if (!instance_exists(obj_DebugConsole)) instance_create_depth(x,y,-999,obj_DebugConsole);
}
else
{
	if (instance_exists(obj_DebugMode)) instance_destroy(obj_DebugMode);
	if (instance_exists(obj_DebugConsole)) instance_destroy(obj_DebugConsole);
}

//Audio Volume

for (var i = 0;audio_exists(i);i++)
{
	var soundString = string_copy(audio_get_name(i),0,3);
    if (soundString == "mus")
	{
        audio_sound_gain(i,global.musicVolume,0);
	}
    else if (soundString == "snd")
	{
        audio_sound_gain(i,global.soundVolume,0);
	}
}

//Render Timer

if (renderable)
{
	if (renderTimer > 0)
	{
		renderTimer -= 1;
	}
	else if (renderTimer == 0)
	{
		scr_Render();
		renderTimer = renderTimerMax;
	}
}