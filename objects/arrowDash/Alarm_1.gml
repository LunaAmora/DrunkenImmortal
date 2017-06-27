/// @description
if whoShoot = "player"{
	if target == noone && instance_exists(enemyParent){
		target = instance_nearest(x, y, enemyParent);
		image_angle = (darctan2(x - target.x, y - target.y));
	}
	
}
if whoShoot = "turret1"{
	image_angle = (darctan2(x - player.x, y - player.y));
}
velo = dashVelo;