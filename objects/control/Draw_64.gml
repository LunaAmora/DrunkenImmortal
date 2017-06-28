/// @description
draw_set_halign(fa_left);
draw_text(16, 64, "Highscore: " + string(maxScore));
draw_text(16, 80, "Score: " + string(score));

draw_healthbar(0, 16, 200, 21, score, c_black, c_dkgray, c_white, 0, true, true);