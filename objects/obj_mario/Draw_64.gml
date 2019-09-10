// Displays pause screen
var c = c_white;
if (paused) {
	draw_text_color(room_width / 2, room_height / 2, "Paused", c, c, c, c, 1);
	exit;
} else {
	draw_self();
	
	var name = "";
	var a = 0.35;
	switch (global.level) {
		case 1: // none
			name = "Mario";
			break;
		case 2: // yt
			name = "Crypto Savvy";
			draw_sprite_ext(spr_yt, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 3: // yt
			name = "Crypto Zombie";
			draw_sprite_ext(spr_yt, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 4: // wbd
			name = "Peter McCormack";
			draw_sprite_ext(spr_wbd, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 5: // kr
			name = "Max Keiser";
			draw_sprite_ext(spr_kr, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
		case 6:
			name = "Stacie Herbert";
			draw_sprite_ext(spr_kr, 0, room_width / 2, room_height / 2, 1, 1, 0, c_white, a);
			break;
	}
	draw_text_color(10, room_height - 35, name, c, c, c, c, 1);
}