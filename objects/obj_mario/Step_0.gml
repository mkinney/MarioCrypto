var my_speed = default_speed;

// virtual keys
var virt_left = 0;
var virt_right = 0;
if (mouse_check_button(mb_left)) {
	// check for virtual arrow
	var va = instance_position(mouse_x, mouse_y, obj_virtual_arrow);
	if (va != noone) {
		switch (va.dir) {
			case "left":
				virt_left = 1;
				break;
			case "right":
				virt_right = 1;
				break;
		}
	}
}

// virtual button
var virt_button = 0;
if (device_mouse_check_button_pressed(0, mb_left)) {
	// check for virtual button
	var vb = instance_position(mouse_x, mouse_y, obj_virtual_button);
	if (vb != noone) and (obj_virtual_arrows.show) {
		virt_button = 1;
	}
}

var left = keyboard_check(vk_left) or virt_left;
var right = keyboard_check(vk_right) or virt_right;

var jump = keyboard_check_pressed(vk_space) or virt_button;
			
var restart = keyboard_check(ord("R"));
var pause = keyboard_check_pressed(ord("P"));

if (pause) {
	if (! paused) {
		paused = true;
		instance_deactivate_all(true);
	} else {
		paused = false;
		instance_activate_all();
	}
}

if (paused) {
	exit;
}

if (global.bitcoin + global.litecoin) == 0 { // mario
	level = 0;
	global.level = 1;
}
if (global.bitcoin + global.litecoin) > 6 { // cs
	level = 2;
	global.level = 2;
}
if (global.bitcoin + global.litecoin) > 12 { // cz
	level = 4;
	global.level = 3;
}
if (global.bitcoin + global.litecoin) > 18 { // pm
	level = 6;
	global.level = 4;
}
if (global.bitcoin + global.litecoin) > 24 { // mk
	level = 8;
	global.level = 5;
}
if (global.bitcoin + global.litecoin) > 30 { // sh
	level = 10;
	global.level = 6;
}

if (last_global_level != global.level) {
	// leveled up
	if (global.level > 1) {
		audio_play_sound(snd_leveled_up, 20, 0);
	}
	last_global_level = global.level;
}

// only allow 2 directions - left/right
if (left) {
	// stay inside room but don't go thru walls
	if ((x - my_speed - (sprite_height / 2)) > 0) and (instance_place(x - my_speed, y, obj_wall) == noone) {
		x = x - my_speed;
		image_index = 1 + level;
	}
} else if (right) {
	// stay inside room
	if ((x + my_speed + (sprite_height / 2)) < room_width) and (instance_place(x + my_speed, y, obj_wall) == noone) {
		x = x + my_speed;
		image_index = 0 + level;
	}
}

// if they pressed the jump button
if jump {
	audio_play_sound(snd_jump, 10, 0);
	// if not already jumping
	if not jumping and jump_index == 0 {
		jumping = true;
		jump_index = 1;
	}
}

// if jumping up
if jump_index > 0 {
	if jumping {
		if (jump_index < jump_height) {
			y -= jump_speed;
			jump_index += 1;
		} else {
			jumping = false;
		}
	} else { // falling
		if (jump_index > 1) {
			y += jump_speed;
			jump_index -= 1;
		}
		else {
			jump_index = 0;
		}
	}
}

if (restart) {
	game_restart();
}