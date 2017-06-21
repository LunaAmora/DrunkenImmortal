/// @description Variables

arraySize = 10;
for (a = 0; a <= arraySize; a++){
	defCircle[a] = 0;
}

time = 0;
spawn = true;
score = 0;

scoreGoal = 1000;

ini_open("data.ini");
maxScore = ini_read_real( "save", "score", 0);
ini_close();

ini_open("tiledata.ini")
for (a = 0; a*64 <= room_width; a++){
	for (b = 0; b*64 <= room_height; b++){
		lId = layer_get_id("Tiles");
		tmId = layer_tilemap_get_id(lId);
		tsId = tilemap_get_tileset(tmId);
		mx = tilemap_get_cell_x_at_pixel(tmId, a*64, b*64);
		my = tilemap_get_cell_y_at_pixel(tmId, a*64, b*64);
		td = tilemap_get(tmId, mx, my);
		tx = tile_get_index(td);
		for (c = 1; c <= 4; c++){
			switch (ini_read_real(string(tx), "p" + string(c), 0)){
				case 1:
				sx = ini_read_real(string(tx), "x" + string(c), 1)
				sy = ini_read_real(string(tx), "y" + string(c), 1)
				switch (c){
					case 1:
					px = 16;
					py = 16;break;
					case 2:
					px = 48;
					py = 16;break;
					case 3:
					px = 16;
					py = 48;break;
					case 4:
					px = 48;
					py = 48;break;
				}
				sxy = instance_create_layer(a*64 + px, b*64 + py, "Wall", wall);
				sxy.image_xscale = sx;
				sxy.image_yscale = sy;
				break;
				case 2:
				switch (c){
					case 1:
					px = 16;
					py = 16;break;
					case 2:
					px = 48;
					py = 16;break;
					case 3:
					px = 16;
					py = 48;break;
					case 4:
					px = 48;
					py = 48;break;
				}
				instance_create_layer(a*64 + px, b*64 + py, "Wall", wall1);
				break;
			}
		}
	}
}
ini_close();