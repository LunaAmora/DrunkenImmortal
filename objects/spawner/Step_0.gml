a = instance_number(enemy) + instance_number(archer_enemy)+ instance_number(mage_enemy)
if (spawn == true && a <= 10 && alarm[2] <= 0){
	alarm_set(2, room_speed * random_range(0.4, 1.6));
}