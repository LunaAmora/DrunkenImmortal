if (!directed)
{
	if (wasPlayer){
		image_angle = radtodeg(arctan2(player.x - aim.x, player.y - aim.y));
		velo = 30
	}
	motion_set(image_angle+90, velo);     //going after current aim position
	directed = true;
}