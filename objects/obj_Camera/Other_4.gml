///@description Room Start

//Enable View

view_enabled = true;
view_visible[0] = true;

//Move To Owner

if (instance_exists(obj_Player))
{
	cameraX = obj_Player.x - ((viewWidth / zoom) / 2);
	cameraY = obj_Player.y - ((viewHeight / zoom) / 2);
}
else if ((objectFollowing != -1) and (instance_exists(objectFollowing)))
{
	cameraX = objectFollowing.x - ((viewWidth / zoom) / 2);
	cameraY = objectFollowing.y - ((viewHeight / zoom) / 2);
}
else
{
	cameraX = room_width / 2;
	cameraY = room_height / 2;
}

if (room == rm_StageSelect)
{
	cameraX = (obj_StageSelect.x - ((viewWidth / zoom) / 2) + ((offsetX + cinematicXOffset) / zoom));
	cameraY = (obj_StageSelect.y - ((viewHeight / zoom) / 2) + ((offsetY + cinematicYOffset) / zoom));
}