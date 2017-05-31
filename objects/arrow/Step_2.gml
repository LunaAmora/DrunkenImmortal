if (!directed)
{
	if (wasPlayer) image_angle = radtodeg(arctan2(player.x - aim.x, player.y - aim.y));
	motion_set(image_angle+90, 30);     //going after current aim position
	directed = true;
}