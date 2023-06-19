///@description Initialize Variables

//Other Variables

textIndex = 0;
global.pause = true;

//Timers

destroyTimerMax = 240;
destroyTimer = destroyTimerMax;

//Audio

audio_pause_all();
audio_play_sound(snd_Hideo,0,true);