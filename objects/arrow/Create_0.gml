/// @description Angle & direction

//image_speed = 0;
image_angle = radtodeg(arctan2(player.x - aim.x, player.y - aim.y));
motion_set(image_angle+90, 30);     //going after current aim position

//image_xscale = 2;
//image_yscale = 2;