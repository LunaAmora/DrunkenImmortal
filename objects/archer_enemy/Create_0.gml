image_speed = 0;

usingWeapon = 0;
swording = 0;

newAngle = 0;
angleChanged = 0;

dirMod = 0;
spinDir = choose(2, 0);
distanceTreshold1 = 300;			//orbit
distanceTreshold2 = 250;			//retreat
distanceTreshold3 = 450;			//shoot
canShoot = false;

aimingTime = 15;
arrowCooldown = irandom_range(0,10);
shootVelo = 12;

colour = c_orange;

alarm[2] = irandom_range(90, 240);