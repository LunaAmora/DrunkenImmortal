/// @description
if whoShoot = "player"{
	image_angle = (darctan2(x - mouse_x, y - mouse_y));
}
if whoShoot = "turret1"{
	image_angle = (darctan2(x - player.x, y - player.y));
}
velo = dashVelo;