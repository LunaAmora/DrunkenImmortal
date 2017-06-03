/// @description
if instance_exists(owner){
	x = owner.x;
	y = owner.y + 10;
}
else{
	instance_destroy();
}