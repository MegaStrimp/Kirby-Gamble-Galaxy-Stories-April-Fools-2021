///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
grav = .2;
gravLimit = 5;

//Other Variables

shake = 0;
points = 0;
pointStarPoints = 1;
sfx = snd_PointStar_Low;
character = 0;
hasGravity = false;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_Wall;
collisionY = obj_Wall;

//Timers

setupTimer = 0;