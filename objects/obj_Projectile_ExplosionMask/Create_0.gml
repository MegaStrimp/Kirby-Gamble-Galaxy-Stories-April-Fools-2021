///@description Initialize Variables

//Event Inherited

event_inherited();

//Other Variables

destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
hurtsObject = false;
hurtsEnemy = true;
hurtsPlayer = true;
canBeReflected = false;
destroyOutsideView = false;
state = 0;
owner = id;
enemy = false;

//Timers

setupTimer = 0;
destroyTimerMax = 30;
destroyTimer = destroyTimerMax;

//Sound

audio_play_sound(snd_Explosion,0,false);