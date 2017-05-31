if global.shooting = 0{
	bowImage = 0;
}
else{
	if control.alarm[0] > 0{
		bowImage = 0;
	}
	else{
		if control.alarm[1] >= 2*player.aimingTime/3{
			bowImage = 1;
		}
		else{
			if control.alarm[1] >= player.aimingTime/3{
				bowImage = 2;
			}
			else{
				if control.alarm[1] >= 1{
					bowImage = 3;
				}
				else{
					if control.alarm[1] < 1{
					bowImage = 4;
					}
				}
			}
		}
	}
}