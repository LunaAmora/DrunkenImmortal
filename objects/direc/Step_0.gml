/// @description Movement Direction

dirX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
dirY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

for (a = 0; a <= 100; a++){
	if place_meeting(player.x + a * dirX, player.y + a * dirY, blockParent){
		x = player.x + (a - player.colisionDist)*dirX;
		y = player.y + (a - player.colisionDist)*dirY
		a = 101;
	}
	if (a = 100){
		x = player.x + a*dirX ;
		y = player.y + a*dirY ;
	}
}