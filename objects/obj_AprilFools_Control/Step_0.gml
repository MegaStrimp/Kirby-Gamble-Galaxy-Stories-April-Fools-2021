/// @description Main

switch (room)
{
	case rm_AprilFools_GambleHouse:
	if (!instance_exists(obj_ShadowGamble))
	{
		if (audio_is_playing(mus_AF_Boss)) audio_stop_sound(mus_AF_Boss);
		var mus = audio_play_sound(mus_AF_Home,0,true);
		audio_sound_set_track_position(mus,60);
		var cutscene = instance_create_depth(x,y,depth,obj_CutsceneControl);
		cutscene.state = "aprilFoolsHouseEnd";
		instance_destroy();
	}
	break;
	
	case rm_AprilFools_SnowBoss:
	if (!instance_exists(obj_Frosty))
	{
		var cutscene = instance_create_depth(x,y,depth,obj_CutsceneControl);
		cutscene.state = "frostyEnd";
		instance_destroy();
	}
	break;
	
	case rm_AprilFools_CandyBoss:
	if (!instance_exists(obj_JellyMarx))
	{
		var cutscene = instance_create_depth(x,y,depth,obj_CutsceneControl);
		cutscene.state = "jellyMarxEnd";
		instance_destroy();
	}
	break;
	
	case rm_AprilFools_DiscordBoss:
	if (!instance_exists(obj_Goldenangel))
	{
		var cutscene = instance_create_depth(x,y,depth,obj_CutsceneControl);
		cutscene.state = "goldenangelEnd";
		instance_destroy();
	}
	break;
}