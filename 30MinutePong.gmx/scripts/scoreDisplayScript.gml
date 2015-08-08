//Set the font, draw the scores.

draw_set_font(scoreFont);
draw_set_color(c_white);
draw_text(room_width * .25, room_height * .15, global.playerScore);
draw_text(room_width * .75, room_height * .15, global.enemyScore);
