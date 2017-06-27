if other.whoShoot != "player" && dash = 0{
	with(other)
	{
		instance_destroy();
	}
	switch (other.whoShoot){
		case "archer": hp -= 2;break;
		case "turret": hp -= 3;break;
		case "turret1": hp -= 4;break;
		case "mage": hp -= 3;break;
		
	}
}