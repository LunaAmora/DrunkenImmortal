/// @description Cam

x = player.x +(point_distance(player.x, player.y, mouse_x, mouse_y)/8)*cos(degtorad(player.image_angle+90));
y = player.y -(point_distance(player.x, player.y, mouse_x, mouse_y)/8)*sin(degtorad(player.image_angle+90));