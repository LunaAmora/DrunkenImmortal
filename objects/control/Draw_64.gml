/// @description

draw_text(16, 64, "Time: " + string(time div 30));
draw_text(16, 80, "Highscore: " + string(maxScore));
draw_text(16, 96, "Score: " + string(score));

draw_healthbar(0, 16, 200, 21, score, c_black, c_dkgray, c_white, 0, true, true);