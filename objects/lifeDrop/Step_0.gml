direction = point_direction(x, y, player.x, player.y)
speed += 0.3;

if place_meeting(x+hspeed, y, blockParent){
	hspeed = 0;
}
if place_meeting(x, y+vspeed, blockParent){
	vspeed = 0;
}
