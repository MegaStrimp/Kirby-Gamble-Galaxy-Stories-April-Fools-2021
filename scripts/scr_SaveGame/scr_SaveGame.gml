///@description Save Game

function scr_SaveGame()
{
	ini_open("Save.ini");
	ini_write_real("collectables","pointStars",global.pointStars);
	ini_write_real("collectables","points",global.points);
	ini_write_real("collectables","lives",global.playerLives);
	ini_write_real("options","musicVolume",global.musicVolume);
	ini_write_real("options","soundVolume",global.soundVolume);
	ini_write_real("misc","introPlayed",global.introPlayed);
	ini_write_real("misc","playedDemo",global.playedDemo);
	ini_write_real("misc","temeretohum",global.temeretohum);
	ini_close();
}