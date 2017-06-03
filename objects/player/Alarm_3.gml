/// @description Aiming & Shooting

alarm[4] = arrowCooldown;
with (instance_create_layer(x, y + 10, "GameLayer", arrow)){
	image_angle = radtodeg(arctan2(other.x - aim.x, other.y - aim.y));
	velo = other.shootVelo;
	whoShoot = "player"
}