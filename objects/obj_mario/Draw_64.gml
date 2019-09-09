// Displays pause screen
if (paused) {
	var c = c_white;
	draw_text_color(room_width / 2, room_height / 2, "Paused", c, c, c, c, 1);
	exit;
} else {
	draw_self();
	//draw_sprite(spr_yt, 0, room_width / 2, room_height / 2);
	var a = 0.35;
	switch (level) {
		case 0: // none
			break;
		case 2:
		case 4: // yt
			draw_sprite_ext(spr_yt, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 6: // wbd
			draw_sprite_ext(spr_wbd, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 8: // kr
		case 10:
			draw_sprite_ext(spr_kr, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
	}
}