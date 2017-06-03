image_speed = 0;
gravity = 0.5;

spinDir = choose(2, 0);
distanceTreshold1 = 300;			//orbit
distanceTreshold2 = 250;			//retreat
distanceTreshold3 = 400;			//shoot
canShoot = false;

aimingTime = 30;
arrowCooldown = 30;
alarm[0] = aimingTime;
alarm[2] = irandom_range(90, 240);