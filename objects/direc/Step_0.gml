/// @description Movement Direction
col = 0;
colX = 0;
colY = 0;

dirX = 0;
dirY = 0;
if keyboard_check(ord("W")) dirY-=1;
if keyboard_check(ord("S")) dirY+=1;
if keyboard_check(ord("D")) dirX+=1;
if keyboard_check(ord("A")) dirX-=1;

for (a = 0; a <= 100; a+= 1){
	if place_meeting(player.x, player.y, blockParent) && a = 0{
		player.isStuck = 5;
		for(b = 0; b <= 128; b+= 1){
			switch(b mod 4){
				case 0: c = 1; d = 0;break;
				case 1: c = -1; d = 0;break;
				case 2: c = 0; d = 1;break;
				case 3: c = 0; d = -1;break;
			}
			if !(place_meeting(player.x+(c*b),player.y+(d), blockParent)) && colX = 0{
				x = player.x+(c*(b));
				colX = 1;
			}
			if !(place_meeting(player.x+(c),player.y+(d*b), blockParent)) && colY = 0{
				y = player.y+(d*(b));
				colY = 1;
			}
			if colX = 1 && colY = 1{
				b = 129;
				a = 101;
			}
		}
	}
	else{
		if player.isStuck ==5{
			player.isStuck = 0;
			player.gravity = 0;
			player.speed = 0
		}
		if (place_meeting(player.x+(dirX*a),player.y+(dirY), blockParent)) && colX = 0{
			x = player.x+(dirX*(a-player.colisionDist));
			colX = 1;
		}
		if (place_meeting(player.x+(dirX),player.y+(dirY*a), blockParent)) && colY = 0{
			y = player.y+(dirY*(a-player.colisionDist));
			colY = 1;
		}
		if colX = 1 && colY = 1{
			col = 1
			a = 101;
		}
		if a = 100{
			if colX = 0 x = player.x+(dirX*a);
			if colY = 0 y = player.y+(dirY*a);
		}
	}
	
}