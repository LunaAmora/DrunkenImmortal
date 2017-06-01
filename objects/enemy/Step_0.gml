//Perseguir jogador
image_angle = radtodeg(arctan2(x-player.x, y-player.y));
if (point_distance(x, y, player.x, player.y) > 48) motion_set (image_angle + 90, 7);
else
{
	if (player.dash = 0) player.hp--;
	speed = 0;
}

