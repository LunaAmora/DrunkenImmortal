/// @description Global Keys
if keyboard_check(vk_escape){   //end game
    game_end();
}
if keyboard_check(vk_enter){    //restart game
	if score > global.maxScore global.maxScore = score;
    room_restart();
}

a =instance_number(enemy) + instance_number(archer_enemy)+ instance_number(mage_enemy)
if spawn = true && a < 10{
	spawn_scr(choose(noone, noone, noone, noone, enemy, enemy, enemy, archer_enemy, archer_enemy, mage_enemy));
}

time ++;

for(a = 0; a <= control.arraySize; a++){
	if control.defCircle[a] != 0{
		number++
	}
}
defNumber = number;
number = 0;