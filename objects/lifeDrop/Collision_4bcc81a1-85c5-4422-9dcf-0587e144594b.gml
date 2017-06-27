with (player)
{
	hp += 6;
	if (hp > maxHp) hp = maxHp;
}
instance_destroy();