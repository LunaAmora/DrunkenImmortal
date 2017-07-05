if velo = dashVelo {
	sm = instance_create_layer(x,y,"Gamelayer", smokePuff);
	sm.image_xscale = 0.15;
	sm.image_yscale = 0.15;
	if whoShoot == "player"{
		sm.owner = "";
		sm.colour = c_yellow;
	}
	else{
		sm.owner = whoShoot;
		sm.colour = c_white;
	}
	
}
event_inherited();