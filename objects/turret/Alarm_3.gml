/// @description
for (a = 0; a <=4; a++){
	with(instance_create_layer(x, y , "GameLayer", arrow)){
		image_angle = other.image_angle + other.a*90;
		velo = other.shootVelo;
		whoShoot = "turret";
		owner = other.id;
	}
}
alarm[4] = arrowCooldown;