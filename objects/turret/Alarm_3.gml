/// @description
for (a = 0; a <=4; a++){
	dirX = x +(sprite_width/2)*cos(degtorad(image_angle+90+90*a));
	dirY = y -(sprite_height/2)*sin(degtorad(image_angle+90+90*a));
	with(instance_create_layer(dirX, dirY, "GameLayer", arrow)){
		image_angle = other.image_angle + other.a*90;
		velo = other.shootVelo;
		whoShoot = "turret";
		owner = other.id;
	}
}
alarm[4] = arrowCooldown;
