/// @description Aiming & Shooting
alarm[0] = player.arrowCooldown;
with (instance_create(player.x, player.y + 10, arrow))
{
	wasPlayer = true;
}