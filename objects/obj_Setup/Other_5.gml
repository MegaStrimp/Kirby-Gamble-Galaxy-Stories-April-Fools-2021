///@description Room End

//Stop Sounds

if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
if (audio_is_playing(snd_Sleep)) audio_stop_sound(snd_Sleep);

//Stop Cutscene

if ((global.cutscene) and (!instance_exists(obj_CutsceneControl))) global.cutscene = false;