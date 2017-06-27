/// @description
if velo = dashVelo {
	sm = instance_create_layer(x,y,"Gamelayer", smokePuff);
	sm.image_xscale = 0.15;
	sm.image_yscale = 0.15;
	sm.owner = whoShoot;
	sm.colour = c_white;
}
event_inherited();