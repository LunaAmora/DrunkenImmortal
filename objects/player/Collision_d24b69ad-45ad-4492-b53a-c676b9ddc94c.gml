if (!other.wasPlayer)
{
	with(other)
	{
		instance_destroy();
	}
	hp -= 5;
}