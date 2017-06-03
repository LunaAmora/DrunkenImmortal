if other.whoShoot != "player" && dash = 0{
	with(other)
	{
		instance_destroy();
	}
	switch (other.whoShoot){
		case "archer": hp -= 1;break;
		case "mage": hp -= 5;break;
	}
}