if instance_exists(owner){
	image_angle += owner.swordSpeed;
	if image_angle >= angleMax{
		owner.swording = 0;
		instance_destroy();
	}
}
else{
	instance_destroy();
}