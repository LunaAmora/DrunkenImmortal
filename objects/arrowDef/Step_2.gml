/// @description

if mouse_check_button(mb_middle){
	goingMiddle = true;
	dirX = mouse_x;
	dirY = mouse_y;
}
else{
	goingMiddle = false;
	dirX = owner.x;
	dirY = owner.y;
}

if goingMiddle = true{
	if (fistM){
		motion_set(image_angle + 90, degtorad(veloDef)*owner.distanceDef);
		//if speed > 10 speed = 10;
		fistM = false;
	}
	gravity = 2;
	gravity_direction = radtodeg(arctan2(x - dirX, y - dirY))+ 90;
	image_angle = direction - 90;
	if speed > 10 speed --;
}
else{
	x = dirX + owner.distanceDef * cos(degtorad(anglePos));
	y = dirY - owner.distanceDef * sin(degtorad(anglePos));
	image_angle = radtodeg(arctan2(x - dirX, y - dirY))+90;
	gravity = 0;
	speed = 0;
	fistM = true;
}