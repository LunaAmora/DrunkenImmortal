bowImage = 0;

if alarm[1] > 0{
	bowImage = 0;
}
else{
	if alarm[0] >= 2*aimingTime/3{
		bowImage = 1;
	}
	else{
		if alarm[0] >= aimingTime/3{
			bowImage = 2;
		}
		else{
			if alarm[0] >= 1{
				bowImage = 3;
			}
			else{
				if alarm[0] < 1{
				bowImage = 4;
				}
			}
		}
	}
}

draw_sprite_ext(bow_spr, bowImage, x, y + 10, 1, 1, image_angle, c_white, image_alpha);

for (var i = 0; i < image_number; i++)
{
	draw_sprite_ext(sprite_index, i, x, y - i * image_xscale * 1, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}