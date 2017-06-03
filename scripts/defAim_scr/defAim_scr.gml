/// @description defAim_scr(argument0, argument1);

a = argument0;
b = argument1;

if point_distance(x, y, a, b) < 40{
	if !(fixed){
	gravity = 0;
	speed = 0;
	fistM = true;
	goingMiddle = false;
	fixed = true;
	}
}
else{
goingMiddle = true;
fixed = false;
}

if (goingMiddle){
	if (fistM){
		motion_set(image_angle + 90, degtorad(veloDef)*owner.distanceDef);
		fistM = false;
	}
	gravity = 3;
	gravity_direction = radtodeg(arctan2(x - a, y - b))+ 90;
	image_angle = direction - 90;
	if speed > 12 speed -= 2;
}

if (fixed){
	x = dirX + owner.distanceDef * cos(degtorad(anglePos));
	y = dirY - owner.distanceDef * sin(degtorad(anglePos));
	image_angle = radtodeg(arctan2(x - dirX, y - dirY))+90;
}