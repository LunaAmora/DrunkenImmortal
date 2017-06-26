/// @description Variables

arraySize = 10;
for (a = 0; a <= arraySize; a++){
	defCircle[a] = 0;
}

time = 0;
score = 0;

scoreGoal = 1000;

ini_open("data.ini");
maxScore = ini_read_real( "save", "score", 0);
ini_close();