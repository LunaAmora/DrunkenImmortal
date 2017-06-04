/// @description Destroying

if whoShoot == "mage"{
	gravity = 1;
	gravity_direction = (darctan2(x - player.x, y - player.y))+ 90;
	image_angle = gravity_direction - 90;
	if speed > velo friction = gravity*speed*factor/(velo*100);
	else friction = 0;
}
else{
	motion_set(image_angle+90, velo);
}

if x < 0 || x > room_width || y < 0 || y > room_height{
    instance_destroy(); 
}