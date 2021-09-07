if (gameWon) {
	draw_set_color(c_purple)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(room_width / 2, room_height / 2, "CONGRATS!", 2, 2, image_angle);
}