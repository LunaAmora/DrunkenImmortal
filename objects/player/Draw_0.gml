bowImage = 0;

if usingWeapon = 0 && swording = 0{
	if alarm[4] <= 0{
		if alarm[3] >= 2*aimingTime/3{
			bowImage = 1;
		}
		else{
			if alarm[3] >= aimingTime/3{
				bowImage = 2;
			}
			else{
				if alarm[3] >= 1{
					bowImage = 3;
				}
				else{
					if alarm[3] < 1{
					bowImage = 4;
					}
				}
			}
		}
	}
	if shooting = 0{
		bowImage = 0;
	}
}
else{
	bowImage = 5;
}

draw_sprite_ext(bow_spr, bowImage, x, y + 10, 1, 1, image_angle, c_white, image_alpha);
/*
for (var i = 0; i < image_number; i++)
{
	draw_sprite_ext(sprite_index, i, x, y - i * image_xscale * 1, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}

*/
for (var i=0; i<image_number; i++) {
    draw_sprite_ext(sprite_index, i, x+lengthdir_x(i*1,(camera_get_view_angle(view_camera[0])*-1)+90), y+lengthdir_y(i*1,(camera_get_view_angle(view_camera[0])*-1)+90), image_xscale, image_yscale, image_angle, c_white, image_alpha);
}