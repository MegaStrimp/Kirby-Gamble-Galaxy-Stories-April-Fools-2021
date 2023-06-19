///@description Main

//Destroy Timer

if (destroyTimer > 0)
{
	destroyTimer -= 1;
	if ((textIndex == 0) and (destroyTimer <= (destroyTimerMax / 2))) textIndex = 1;
}
else if (destroyTimer == 0)
{
	if (audio_is_playing(snd_Hideo)) audio_stop_sound(snd_Hideo);
	audio_resume_all();
	global.pause = false;
	room_goto(rm_AprilFools_Ruins);
	instance_destroy();
	destroyTimer = -1;
}