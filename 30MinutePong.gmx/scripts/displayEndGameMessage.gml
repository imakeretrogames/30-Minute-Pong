//Set the font, center the text, draw the message.

draw_set_font(scoreFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width / 2, (room_height / 2)*.6, global.endGameMessage);
draw_text(room_width / 2, (room_height / 2)*.8, "Press any key to play again.");
