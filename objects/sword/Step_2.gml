/// @description
event_inherited()

if instance_exists(owner){
	x = owner.x;
	y = owner.y + 10;
}
else{
	instance_destroy();
}

depth = -y + 50;