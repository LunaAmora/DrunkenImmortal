a = instance_number(enemy) + instance_number(archer_enemy)+ instance_number(mage_enemy)
if spawn = true && a < 50{
	spawn_scr(choose(noone, noone, noone, noone, enemy, enemy, enemy, archer_enemy, archer_enemy, mage_enemy));
}