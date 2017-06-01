//Perseguir jogador
image_angle = radtodeg(arctan2(x-player.x, y-player.y));
if (point_distance(x, y, player.x, player.y) > distanceTreshold1) motion_set (image_angle + 90, 7);
else if (point_distance(x, y, player.x, player.y) < distanceTreshold2)
{
	motion_set (image_angle + 90 + 180, 4);
}
else motion_set (image_angle + 90 + (90 * spinDir), 2.5);

if (canShoot && point_distance(x, y, player.x, player.y) < distanceTreshold3)
{
	with(instance_create(x, y + 10, arrow))
	{
		image_angle = other.image_angle;
	}
	canShoot = false;
	alarm[1] = arrowCooldown;
}