image_speed = 0;

canArrowDash = false;
dashShootVeloMin = 5;
dashShootVeloMax = 15;
arrowDashTurnTime = 30;

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

aimingTime = 5;
arrowCooldown = irandom_range(0,5);
shootVelo = 12;

colour = c_fuchsia;

alarm[2] = irandom_range(90, 240);