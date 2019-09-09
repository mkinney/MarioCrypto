// Displays pause screen
if (paused) {
	var c = c_white;
	draw_text_color(room_width / 2, room_height / 2, "Paused", c, c, c, c, 1);
	exit;
} else {
	draw_self();
	//draw_sprite(spr_yt, 0, room_width / 2, room_height / 2);
	var a = 0.35;
	switch (global.level) {
		case 1: // none
			break;
		case 2:
		case 3: // yt
			draw_sprite_ext(spr_yt, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 4: // wbd
			draw_sprite_ext(spr_wbd, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 5: // kr
		case 6:
			draw_sprite_ext(spr_kr, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
	}
}