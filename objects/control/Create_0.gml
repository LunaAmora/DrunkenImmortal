/// @description Variables
spawnCount = 0;
arraySize = 9;
for (a = 0; a <= arraySize; a++){
	defCircle[a] = 0;
}

time = 0;
score = 0;

scoreGoal = 100;

ini_open("data.ini");
maxScore = ini_read_real( "save", "score", 0);
ini_close();