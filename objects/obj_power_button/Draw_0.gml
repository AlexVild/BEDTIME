if (button_pressed) {
	if (power_off) {
		sprite_index = spr_power_btn_off_pressed;
	} else {
		sprite_index = spr_power_btn_on_pressed;
	}
} else {
	if (power_off) {
		sprite_index = spr_power_btn_off;
	} else {
		sprite_index = spr_power_btn;
	}
}

draw_self();