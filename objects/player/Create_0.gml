/// @description Player
image_speed = 0;

// Var Declaring
usingWeapon = 0;		
shooting = 0;
swording = 0;

// Speed
maxSpeed = 8;
ingSpeed = 5;

// Dash
dash = 0;
dash_timer = 5;
dashCounter = 4;
dashRegen = 60;

// HP Variables
maxHp = 100;
hp = maxHp;
cheating = false;

// Soberty Variables
maxSobriety = 100;
sobriety = maxSobriety;
metabolism = 0.1;

// Shoot Variables

maxError = 25;
arrowCooldown = 5;
aimingTime = 10;
shootVelo = 30;

// Others
dizziness = 1;
dizzinessDuration = 5;
swordAngle = 140;
swordCooldown = 0;
swordSpeed = 20;
colisionDist = 25;

defQuanti = 3;
distanceDef = 50;
arrowDashTurnTime = 20;
dashShootVeloMin = 15;
dashShootVeloMax = 45;
potionDash = 0;
damageFeedback = 1;
damaged = false;

// Beverages Cooldown
canArrowDash = false;
canPotionDash = false;

// Beverages Variables
arrowDashTimer = 4 * room_speed;
potionDashTimer = 6 * room_speed;

//instructions
ini_open("data.ini")
step = ini_read_real("tutorial", "step", 0);
ini_close();