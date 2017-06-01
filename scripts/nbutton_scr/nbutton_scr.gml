/// @description nbutton_scr(argument0);
a = argument0;


switch (a)
{
	case 0:		// DASH--------------------------------------------------------
	
		if speed != 0 && dash = 0 && dashCounter > 0{                   //timer & cooldown check
	        alarm[4] = arrowCooldown;									//reset arrow cooldown
	        alarm[3] = -1;												//reset aiming timer
			dashCounter--;
			motion_set(radtodeg(arctan2(x-direc.x,y-direc.y))+90,25*dirMod)//dash speed
			dash = 1;													//stop movements
			alarm[0] = dash_timer;										//dash timer
	    }
	break;
		
	case 1:		// ARROW-------------------------------------------------------
	
		if alarm[4] <= 0 && usingWeapon = 0 && swording = 0{			//cooldown check
	        shooting = 1;												//speed reducer
	        if alarm[3] <= 0{											//aim check
	            alarm[3] = aimingTime;									//aiming timer
	        }
	    }
	break;
		
	case 2:		// SWORD-------------------------------------------------------
	
		if  swording = 0{
			usingWeapon = 1;
			swording = 1;
			alarm[4] = arrowCooldown;									//reset arrow cooldown
	        alarm[3] = -1;												//reset aiming timer													//Shooting check
			instance_create(x, y, sword);	
		}
	break;
	
	case 3:		// Drink--------------------------------------------------------
		
		sobriety -= 10;
		if (sobriety <= 0)
		{	
			alarm[2] = dizzinessDuration * room_speed;
			sobriety = 0.1;
			dizziness = true;
		}
	break;
}