with(instance_create_layer(x , y + 10, "GameLayer", arrow)){
	image_angle = other.image_angle;
	velo = other.shootVelo;
	whoShoot = "archer";
}
if irandom(7) = 7{
	with(instance_create_layer(x + 50*cos(degtorad(image_angle)), y - 50*sin(degtorad(image_angle)), "GameLayer", arrow)){
		velo = other.shootVelo/2;
		image_angle = other.image_angle;
		whoShoot = "mage";
	}
	with(instance_create_layer(x + 50*cos(degtorad(image_angle+180)), y - 50*sin(degtorad(image_angle+180)), "GameLayer", arrow)){
		velo = other.shootVelo/2;
		image_angle = other.image_angle;
		whoShoot = "mage";
	}
}
else nbutton_scr(5, 0);
alarm[4] = arrowCooldown;