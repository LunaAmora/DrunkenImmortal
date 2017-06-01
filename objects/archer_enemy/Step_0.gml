//Perseguir jogador

image_angle = radtodeg(arctan2(x-player.x, y-player.y));
dirMod = 1;

if (point_distance(x, y, player.x, player.y) > distanceTreshold1){
	if (speed > 8) speed--;
}
else if (point_distance(x, y, player.x, player.y) < distanceTreshold2){
	dirMod = -1
	if (speed > 5) speed--;
}
else{
	dirMod = spinDir;
	if (speed > 3.5) speed--;
}

if (canShoot && point_distance(x, y, player.x, player.y) < distanceTreshold3)
{
	with(instance_create(x, y + 10, arrow))
	{
		image_angle = other.image_angle;
	}
	canShoot = false;
	alarm[1] = arrowCooldown;
}

gravity_direction = image_angle + 90*dirMod;