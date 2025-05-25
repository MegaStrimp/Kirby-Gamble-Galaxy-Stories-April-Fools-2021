///@description Save Game

function scr_SaveGame()
{
	var fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + "Kirby Gamble Galaxy Stories ~ The Future" + chr(92) + "Save.ini";
	
	if (file_exists(fileFinal)) file_delete(fileFinal);
	
	ini_open(fileFinal);
	
	ini_write_real("collectables","pointStars",global.pointStars);
	ini_write_real("collectables","points",global.points);
	ini_write_real("collectables","lives",global.playerLives);
	ini_write_real("options","musicVolume",global.musicVolume);
	ini_write_real("options","soundVolume",global.soundVolume);
	if (global.completed) ini_write_real("misc","completed",global.completed);
	
	ini_close();
}