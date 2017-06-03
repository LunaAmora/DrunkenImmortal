//Perseguir jogador

image_angle = radtodeg(arctan2(x-player.x, y-player.y));
dirMod = 1;

if (point_distance(x, y, player.x, player.y) > distanceTreshold1){
	if (speed > 6) speed--;
}
else if (point_distance(x, y, player.x, player.y) < distanceTreshold2){
	dirMod = -1
	if (speed > 5) speed--;
}
else{
	dirMod = spinDir;
	if (speed > 4) speed--;
}

if (point_distance(x, y, player.x, player.y) < distanceTreshold3)
{
	nbutton_scr(1);
}

gravity_direction = image_angle + 90*dirMod;