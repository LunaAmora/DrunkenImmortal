/// @description Aiming & Shooting
alarm[4] = arrowCooldown;
with (instance_create_layer(x, y + 10, "GameLayer", arrow))
{
	wasPlayer = true;
}