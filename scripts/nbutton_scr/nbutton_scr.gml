/// @description nbutton_scr(argument0, argument1);
a = argument0;
b = argument1;

if b != 0{
	if b <= sobriety{
		sobriety -= b;
	}
	else return 0;
}
switch (a){
	case "dash":		// DASH --------------------------------------------------------
		if speed != 0 && dash = 0 && dashCounter > 0{
			alarm[4] = arrowCooldown;									//reset arrow cooldown
		    alarm[3] = -1;												//reset aiming timer
			dash = 1;													//stop movements
			alarm[0] = dash_timer;										//dash timer
			motion_set((darctan2(x-direc.x,y-direc.y))+90,25)	//dash speed
			if potionDash = 1{
				dashCounter = 4;
			}
			else{
				dashCounter--;
		    }
		}
	break;
		
	case "arrow":		// ARROW -------------------------------------------------------
	
		if alarm[4] <= 0 && usingWeapon = 0 && swording = 0{			//cooldown check
	        shooting = 1;												//speed reducer
	        if alarm[3] <= 0{											//aim check
	            alarm[3] = aimingTime;									//aiming timer
	        }
	    }
	break;
		
	case "sword":		// SWORD -------------------------------------------------------
	
		if  swording = 0{
			usingWeapon = 1;
			swording = 1;
			alarm[4] = arrowCooldown;									//reset arrow cooldown
	        alarm[3] = -1;												//reset aiming timer													//Shooting check
			with (instance_create_layer(x, y, "GameLayer", sword)){
				owner = other.id
				image_angle = owner.image_angle - owner.swordAngle/2;
				angleMax = owner.image_angle + owner.swordAngle/2;
				colisorId = string(object_get_name(owner.object_index));
			}	
		}
	break;
	
	case 1:		        // Def Arrows --------------------------------------------------
		if canDef = 1{
			for (var i = defQuanti; i != 0; i--){
				if instance_number(arrowDef)+1 <= control.arraySize{
					with(instance_create_layer(x, y, "GameLayer", arrowDef)){
						owner = other.id;
						for (a = 0; a <= control.arraySize; a++){
							if control.defCircle[a] == 0{
								control.defCircle[a] = id;
								a = control.arraySize+1;
							}
						}
					}
					defReset_scr();
				}
			}
			//canDef = 0;
		}
	break;
	
	case 2:		        // Dash Arrows ------------------------------------------------
		if canArrowDash = 1{
			ad = instance_create_layer(x, y, "GameLayer", arrowDash);
			if string(object_get_name(object_index)) = "player"{
				ad.image_angle = (darctan2(x - aim.x, y - aim.y));
			}
			else {
				ad.image_angle = image_angle - 90;
			}
			ad.velo = dashShootVeloMin;
			ad.dashVelo = dashShootVeloMax;
			ad.alarm[1] = arrowDashTurnTime;
			ad.whoShoot = string(object_get_name(object_index));
			ad.owner = id;
			//canArrowDash = 0;
		}
	break;
	case 3:		        // Dash Pontion------------------------------------------------
		if canPotionDash = 1{
			potionDash = 1;
			//canPotionDash = 0;
		}
	break;
	
	case 4:		        // Explosion --------------------------------------------------
		if canExplosion = 1{
			instance_create_layer(player.x, player.y, "GameLayer", explosion);
			//canExplosion = 0;
		}
		break;
}