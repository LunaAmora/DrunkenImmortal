if (other.whoShoot == "player")
{
	with (other)
	{
		instance_destroy();
	}
	instance_destroy();
}