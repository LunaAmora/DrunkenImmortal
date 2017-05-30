//Perseguir jogador
image_angle = radtodeg(arctan2(x-player.x, y-player.y));
if (point_distance(x, y, player.x, player.y) > 64) motion_set (image_angle + 90, 7);
else motion_set (image_angle + 90, 0);

