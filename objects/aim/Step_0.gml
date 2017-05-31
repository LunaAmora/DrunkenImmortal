/// @description Precision

error = 1 + player.maxError - (player.sobriety / player.maxSobriety * player.maxError);                                  //error factor
margin = irandom_range(-error, error);      //total margin of error (error*2 + 1)
x = player.x +(point_distance(player.x, player.y, mouse_x, mouse_y))*cos(degtorad(player.image_angle+90+margin));
y = player.y -(point_distance(player.x, player.y, mouse_x, mouse_y))*sin(degtorad(player.image_angle+90+margin));

