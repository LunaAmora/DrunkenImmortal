image_speed = 0;
bhp = 100;

canArrowDash = false;
dashShootVeloMin = 10;
dashShootVeloMax = 20;
arrowDashTurnTime = 15;

usingWeapon = 0;
swording = 0;

newAngle = 0;
angleChanged = 0;

dirMod = 0;
spinDir = choose(2, 0);
distanceTreshold1 = 400;			//orbit
distanceTreshold2 = 200;			//retreat
distanceTreshold3 = 700;			//shoot
canShoot = false;

aimingTime = 5;
arrowCooldown = irandom_range(5,10);
shootVelo = 18;

colour = c_fuchsia;

alarm[2] = irandom_range(90, 240);