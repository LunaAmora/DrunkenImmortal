instance_create_layer(0, 0, "GameLayer", victory);
instance_create_layer(player.x, player.y, "GameLayer", explosion);
control.alarm[5] = room_speed* 4;