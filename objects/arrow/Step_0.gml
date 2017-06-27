/// @description Destroying

if whoShoot == "mage"{
	gravity = 1;
	gravity_direction = (darctan2(x - player.x, y - player.y))+ 90;
	image_angle = gravity_direction - 90;
	if speed > velo friction = gravity*speed*factor/(velo*100);
	else friction = 0;
	sm = instance_create_layer(x,y,"Gamelayer", smokePuff);
	sm.image_xscale = 0.1;
	sm.image_yscale = 0.1;
	sm.owner = whoShoot;
}
else{
	motion_set(image_angle+90, velo);
}

if x < 0 || x > room_width || y < 0 || y > room_height{
    instance_destroy(); 
}