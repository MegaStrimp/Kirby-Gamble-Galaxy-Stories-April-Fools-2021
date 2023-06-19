///@description Load Game

function scr_LoadGame()
{
	ini_open("Save.ini");
	global.pointStars = ini_read_real("collectables","pointStars",0);
	global.points = ini_read_real("collectables","points",0);
	global.playerLives = ini_read_real("collectables","lives",2);
	global.musicVolume = ini_read_real("options","musicVolume",1);
	global.soundVolume = ini_read_real("options","soundVolume",1);
	global.introPlayed = ini_read_real("misc","introPlayed",false);
	global.playedDemo = ini_read_real("misc","playedDemo",true);
	global.temeretohum = ini_read_real("misc","temeretohum",0);
	ini_close();
}