with (player)
{
	hp += 10;
	if (hp > maxHp) hp = maxHp;
}
instance_destroy();